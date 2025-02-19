#![no_std]
#![no_main]
#![feature(type_alias_impl_trait)]

#[symex_lib::easy(
    device = rp2040_hal::pac,
    dispatchers = [TIMER_IRQ_1, UART0_IRQ]
)]
mod app {
    use rp_pico::XOSC_CRYSTAL_FREQ;

    //use defmt::*;
    use defmt_rtt as _;

    use rp2040_hal::{
        clocks,
        fugit::Instant,
        gpio,
        gpio::{
            bank0::{Gpio11, Gpio12, Gpio13, Gpio2, Gpio22, Gpio25, Gpio3},
            FunctionSio, PullDown, SioInput, SioOutput,
        },
        pac, Sio, Watchdog, I2C,
    };
    use rp2040_monotonic::{
        fugit::Duration,
        fugit::RateExtU32, // For .kHz() conversion funcs
        Rp2040Monotonic,
    };

    use core::mem::MaybeUninit;
    use embedded_hal::digital::v2::InputPin;
    use embedded_hal::digital::v2::{OutputPin, ToggleableOutputPin};

    use panic_probe as _;

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
        led: gpio::Pin<Gpio25, FunctionSio<SioOutput>, PullDown>,
        button: gpio::Pin<Gpio22, FunctionSio<SioInput>, PullDown>,
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
        let gpioa = rp_pico::Pins::new(
            ctx.device.IO_BANK0,
            ctx.device.PADS_BANK0,
            sio.gpio_bank0,
            &mut ctx.device.RESETS,
        );
        let mut led = gpioa.led.into_push_pull_output();
        led.set_low().unwrap();

        let button = gpioa.gpio22.into_pull_down_input();
        button.set_interrupt_enabled(gpio::Interrupt::EdgeHigh, true);
        button.set_interrupt_enabled(gpio::Interrupt::EdgeLow, true);

        let mono = Rp2040Mono::new(ctx.device.TIMER);

        // Return resources and timer
        (
            Shared { debounce: false },
            Local { led, button },
            init::Monotonics(mono),
        )
    }

    #[task(binds = IO_IRQ_BANK0, priority = 2, shared = [debounce], local = [button, led])]
    fn button_handler(mut ctx: button_handler::Context) {
        if ctx.local.button.is_high().unwrap() {
            ctx.local.led.set_high();
        } else {
            ctx.local.led.set_low();
        }
    }
}
