#![no_std]
#![no_main]
#![feature(type_alias_impl_trait, specialization)]

use fugit::Duration;
use nrf52840_hal::pac;
use symex_lib::GetLayout;

pub struct Systick<const HZ: u32> {}
const FLASH_START: u32 = 0;
const FLASH_END: u32 = 0;

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
pub struct SecretKey {
    key: u64,
}

pub struct MockLed<const PIN_ID: u32> {}

impl<const PIN_ID: u32> MockLed<PIN_ID> {
    fn set_high(&self) {
        let gpio = unsafe { &*pac::P0::ptr() };
        assert!(PIN_ID < 0xff);
        gpio.outset.write(|w| unsafe { w.bits(1 << PIN_ID) });
    }
    fn set_low(&self) {
        let gpio = unsafe { &*pac::P0::ptr() };
        assert!(PIN_ID < 0xff);
        gpio.outclr.write(|w| unsafe { w.bits(1 << PIN_ID) });
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
        let gpio = unsafe { &*pac::P0::ptr() };
        layout
            .push(layout_trait::Layout {
                address: pac::P0::ptr() as usize,
                size: core::mem::size_of_val(gpio),
            })
            .unwrap();
    }
}

#[symex_lib::easy(
    device = nrf52840_hal::pac,
    dispatchers = []
)]
mod app {
    use core::{arch::asm, hint::black_box};

    use fugit::Duration;
    use nrf52840_hal::{
        gpio::Level,
        monotonic::MonotonicRtc,
        pac::{mwu::region::start, RTC0},
        rtc::RtcInterrupt,
    };

    use panic_halt as _;

    use crate::{MockLed, SecretKey, Systick};

    #[monotonic(binds = RTC0, default = true)]
    type Rp2040Mono = MonotonicRtc<RTC0, 32768>;

    #[shared]
    struct Shared {
        debounce: bool,
    }

    #[local]
    struct Local {
        systic: Systick<125_000_000>,
        led_state: bool,
        secret_key: SecretKey,
        led: MockLed<17>,
    }

    #[init(local=[
    ])]
    fn init(mut cx: init::Context) -> (Shared, Local, init::Monotonics) {
        let clocks = nrf52840_hal::Clocks::new(cx.device.CLOCK)
            .enable_ext_hfosc()
            .start_lfclk();
        // Initialize the interrupt for the RP2040 timer and obtain the token
        // proving that we have.
        // Configure the clocks, watchdog - The default is to generate a 125 MHz system clock

        // Init LED pin
        let p0 = nrf52840_hal::gpio::p0::Parts::new(cx.device.P0);

        let mono = MonotonicRtc::new(cx.device.RTC0, &clocks).expect("Invalid rtc config");
        let button = p0.p0_13.into_pullup_input().degrade();
        let led = p0.p0_17.into_push_pull_output(Level::Low).degrade();
        core::hint::black_box(&led);
        core::hint::black_box(&button);
        let gpiote = nrf52840_hal::gpiote::Gpiote::new(cx.device.GPIOTE);

        // Set btn1 to generate event on channel 0 and enable interrupt
        gpiote
            .channel0()
            .input_pin(&button)
            .hi_to_lo()
            .enable_interrupt();
        // Set both btn3 & btn4 to generate port event
        gpiote.port().input_pin(&button).low();
        // Enable interrupt for port event
        gpiote.port().enable_interrupt();

        let mut rtc1 = nrf52840_hal::rtc::Rtc::new(cx.device.RTC1, 0).unwrap();
        rtc1.enable_interrupt(RtcInterrupt::Compare0, None);
        // Poll button every second.
        rtc1.set_compare(nrf52840_hal::rtc::RtcCompareReg::Compare0, 32768)
            .unwrap();

        // Return resources and timer
        (
            Shared { debounce: false },
            Local {
                systic: Systick {},
                led_state: false,
                secret_key: SecretKey { key: 0xDEAD_BEEF },
                led: MockLed {},
            },
            init::Monotonics(mono),
        )
    }

    #[task(binds =  TIMER0,priority = 2, shared = [debounce])]
    /// Just here to make the analisys a bit more interresting!
    fn task_3(mut cx: task_3::Context) {
        cx.shared.debounce.lock(|el| {
            let _ = core::hint::black_box(el);
        });
    }

    #[task(binds =  RTC1,priority = 1, shared = [debounce], local = [led_state,led, secret_key])]
    fn button_handler(mut cx: button_handler::Context) {
        let mut retry = 0;
        while !cx.shared.debounce.lock(|l| *l) {
            if retry >= 2 {
                //Silently fail and wait for next signal.
                return;
            }
            retry += 1;
        }
        cx.shared.debounce.lock(|l| *l = false);
        match cx.local.led_state {
            true => cx.local.led.set_high(),
            false => cx.local.led.set_low(),
        }
    }

    #[task(binds = GPIOTE,priority = 3, shared = [debounce], local = [systic])]
    fn button_reciever(mut cx: button_reciever::Context) {
        // Access local variable.
        let _started = cx.local.systic.time();
        // Access shared variable.
        let break_safety = cx.shared.debounce.lock(|debounce| *debounce);
        cx.shared.debounce.lock(|debounce| *debounce = false);
        if break_safety {
            // Access other tasks local variable.
            let resource = unsafe { &*__rtic_internal_local_resource_secret_key.get() };
            black_box(&resource);
            let inner_resource = unsafe { &*resource.as_ptr() };
            black_box(inner_resource);
            let forbidden_value = inner_resource.key;
            black_box(&forbidden_value);
        }
        unsafe { core::ptr::read_volatile(&alloc(true, false)) };
    }

    #[inline(never)]
    #[no_mangle]
    fn alloc(large: bool, small: bool) {
        if large {
            alloc_large();
            return;
        }
        if small {
            let buffer = [0u8; 512];
            core::hint::black_box(&buffer);
        }
    }
    #[inline(never)]
    fn alloc_large() {
        let buffer = [0u8; 2048];
        core::hint::black_box(&buffer);
    }
}
