#![no_std]
#![no_main]
#![feature(type_alias_impl_trait, specialization)]

use rp_pico::hal::fugit::Duration;
use symex_lib::GetLayout;

pub struct Systick<const HZ: u32> {}
const FLASH_START: u32 = 0x10000000;
const FLASH_END: u32 = 0x10000000 + 2048 * 1024 - 0x100;

impl<const HZ: u32> Systick<HZ> {
    pub fn time(&self) -> Duration<u32, 1, HZ> {
        let ptr = unsafe { &mut cortex_m::peripheral::SYST::PTR.read() };
        let mut time = ptr.cvr.read();
        symex_lib::symbolic(&mut time);
        core::hint::black_box(&time);
        Duration::<u32, 1, HZ>::from_ticks(time)
    }
}

impl<const HZ: u32> layout_trait::GetLayout for Systick<HZ> {
    fn get_layout<const N: usize>(
        &self,
        layout: &mut layout_trait::heapless::Vec<symex_lib::Layout, N>,
    ) {
        let ptr = (self as *const Self) as usize;
        layout
            .push(layout_trait::Layout {
                address: ptr,
                size: core::mem::size_of::<Self>(),
            })
            .unwrap();
        let ptr = unsafe { cortex_m::peripheral::SYST::PTR.read() };
        layout
            .push(layout_trait::Layout {
                address: cortex_m::peripheral::SYST::PTR as usize,
                size: core::mem::size_of_val(&ptr),
            })
            .unwrap();
    }
}

pub struct MockLed<const PIN_ID: u32> {}

impl<const PIN_ID: u32> MockLed<PIN_ID> {
    fn set_high(&self) {
        use pac::io_bank0::gpio::gpio_ctrl::OEOVER_A;
        use rp_pico::pac;
        let gpio = unsafe { &*pac::IO_BANK0::PTR };
        assert!(PIN_ID < 0xf0);
        let io = gpio.gpio(PIN_ID as usize);
        let ctrl = io.gpio_ctrl();
        //let variant = match override_value {
        //    OutputEnableOverride::Normal => OEOVER_A::NORMAL,
        //    OutputEnableOverride::Invert => OEOVER_A::INVERT,
        //    OutputEnableOverride::Disable => OEOVER_A::DISABLE,
        //    OutputEnableOverride::Enable => OEOVER_A::ENABLE,
        //};

        ctrl.modify(|_, w| w.oeover().variant(OEOVER_A::ENABLE));
    }
    fn set_low(&self) {
        use pac::io_bank0::gpio::gpio_ctrl::OEOVER_A;
        use rp_pico::pac;
        let gpio = unsafe { &*pac::IO_BANK0::PTR };
        assert!(PIN_ID < 0xf0);
        let io = gpio.gpio(PIN_ID as usize);
        let ctrl = io.gpio_ctrl();
        ctrl.modify(|_, w| w.oeover().variant(OEOVER_A::DISABLE));
    }
}
impl<const PIN_ID: u32> GetLayout for MockLed<PIN_ID> {
    fn get_layout<const N: usize>(
        &self,
        layout: &mut layout_trait::heapless::Vec<symex_lib::Layout, N>,
    ) {
        let ptr = (self as *const Self) as usize;
        layout
            .push(layout_trait::Layout {
                address: ptr,
                size: core::mem::size_of::<Self>(),
            })
            .unwrap();
        let gpio = unsafe { &*rp_pico::pac::IO_BANK0::PTR };
        layout
            .push(layout_trait::Layout {
                address: rp_pico::pac::IO_BANK0::PTR as usize,
                size: core::mem::size_of_val(gpio),
            })
            .unwrap();
    }
}

#[symex_lib::easy(
    freq = 1hz,
    device = rp_pico::pac,
    dispatchers = []
)]
mod app {
    use embedded_hal::digital::InputPin;
    use embedded_hal_0_2::digital::v2::OutputPin;
    use fugit::Duration;
    use rp_pico::hal as rp2040_hal;
    use rp_pico::hal::fugit::ExtU32;
    use rp_pico::XOSC_CRYSTAL_FREQ;

    //use defmt::*;
    use defmt_rtt as _;

    use rp2040_hal::{
        clocks,
        gpio::{
            self,
            bank0::{Gpio11, Gpio12, Gpio13, Gpio2, Gpio22, Gpio25, Gpio3},
            FunctionSio, Pins, PullDown, SioInput, SioOutput,
        },
        pac, Sio, Watchdog, I2C,
    };
    use rp2040_monotonic::Rp2040Monotonic;
    use symex_lib::symbolic;

    use core::mem::MaybeUninit;

    use panic_probe as _;

    use crate::{MockLed, Systick};

    type I2CBus = I2C<
        pac::I2C1,
        (
            gpio::Pin<Gpio2, gpio::FunctionI2C, PullDown>,
            gpio::Pin<Gpio3, gpio::FunctionI2C, PullDown>,
        ),
    >;

    type Led1 = gpio::Pin<Gpio13, FunctionSio<SioOutput>, PullDown>;
    type Led2 = gpio::Pin<Gpio12, FunctionSio<SioOutput>, PullDown>;
    type Led3 = gpio::Pin<Gpio11, FunctionSio<SioOutput>, PullDown>;

    #[monotonic(binds = TIMER_IRQ_0, default = true)]
    type Rp2040Mono = Rp2040Monotonic;

    #[shared]
    struct Shared {
        debounce: bool,
    }

    #[local]
    struct Local {
        systic: Systick<125_000_000>,
        led_state: bool,
        led: MockLed<13>,
    }

    #[init(local=[
        // Task local initialized resources are static
        // Here we use MaybeUninit to allow for initialization in init()
        // This enables its usage in driver initialization
        i2c_ctx: MaybeUninit<I2CBus> = MaybeUninit::uninit()
    ])]
    fn init(mut ctx: init::Context) -> (Shared, Local, init::Monotonics) {
        defmt::info!("init");
        // Initialize the interrupt for the RP2040 timer and obtain the token
        // proving that we have.
        // Configure the clocks, watchdog - The default is to generate a 125 MHz system clock

        let mut watchdog = Watchdog::new(ctx.device.WATCHDOG);
        let clocks = clocks::init_clocks_and_plls(
            XOSC_CRYSTAL_FREQ,
            ctx.device.XOSC,
            ctx.device.CLOCKS,
            ctx.device.PLL_SYS,
            ctx.device.PLL_USB,
            &mut ctx.device.RESETS,
            &mut watchdog,
        )
        .ok()
        .unwrap();

        // Init LED pin
        let sio = Sio::new(ctx.device.SIO);
        let gpioa = Pins::new(
            ctx.device.IO_BANK0,
            ctx.device.PADS_BANK0,
            sio.gpio_bank0,
            &mut ctx.device.RESETS,
        );
        let mut led = gpioa.gpio25.into_push_pull_output();
        unsafe { led.set_low().unwrap_unchecked() }

        let button = gpioa.gpio22.into_pull_down_input();
        button.set_interrupt_enabled(gpio::Interrupt::EdgeHigh, true);
        button.set_interrupt_enabled(gpio::Interrupt::EdgeLow, true);

        let mono = Rp2040Monotonic::new(ctx.device.TIMER);

        // Return resources and timer
        (
            Shared { debounce: false },
            Local {
                systic: Systick {},
                led_state: false,
                led: MockLed {},
            },
            init::Monotonics(mono),
        )
    }
    #[task(binds = TIMER_IRQ_3 ,priority = 2, shared = [debounce])]
    /// Just here to make the analisys a bit more interresting!
    fn task_3(mut cx: task_3::Context) {
        cx.shared.debounce.lock(|el| {
            let _ = core::hint::black_box(el);
        });
    }

    #[task(binds = TIMER_IRQ_2 ,priority = 1, shared = [debounce], local = [led_state,led])]
    fn button_handler(mut cx: button_handler::Context) {
        let mut retry = 0;
        while !cx.shared.debounce.lock(|l| *l) {
            if retry > 2 {
                //Silently fail and wait for next signal.
                return;
            }
            retry += 1;
        }
        match cx.local.led_state {
            true => cx.local.led.set_high(),
            false => cx.local.led.set_low(),
        }
    }

    #[task(binds = IO_IRQ_BANK0,priority = 3, shared = [debounce], local = [systic])]
    fn button_reciever(mut cx: button_reciever::Context) {
        let started = cx.local.systic.time();
        let mut time = started - started;
        let mut tries = 0;

        let deadline: Duration<u32, 1, 125_000_000> = Duration::<u32, 1, 125_000_000>::millis(2);

        cx.shared.debounce.lock(|debounce| *debounce = false);

        while time < deadline && tries < 2 {
            cortex_m::asm::nop();
            let new_time = cx.local.systic.time();
            symex_lib::assume(new_time.ticks() > time.ticks());
            time = match new_time.checked_sub(started) {
                Some(val) => val,
                _ => break,
            };
            tries += 1;
        }
        cx.shared.debounce.lock(|debounce| *debounce = true);
    }
}
