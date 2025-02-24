Parsing done! #[easy(freq = 1hz, device = rp_pico::pac, dispatchers = [])]
Parsing done!
To rtic entry
Fields device = rp_pico :: pac, dispatchers = []
Parsing done!
#![feature(prelude_import)]
#![no_std]
#![no_main]
#![feature(type_alias_impl_trait, specialization)]
#[prelude_import]
use core::prelude::rust_2021::*;
#[macro_use]
extern crate core;
extern crate compiler_builtins as _;
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
        if !(PIN_ID < 0xf0) {
            ::core::panicking::panic("assertion failed: PIN_ID < 0xf0")
        }
        let io = gpio.gpio(PIN_ID as usize);
        let ctrl = io.gpio_ctrl();
        ctrl.modify(|_, w| w.oeover().variant(OEOVER_A::ENABLE));
    }
    fn set_low(&self) {
        use pac::io_bank0::gpio::gpio_ctrl::OEOVER_A;
        use rp_pico::pac;
        let gpio = unsafe { &*pac::IO_BANK0::PTR };
        if !(PIN_ID < 0xf0) {
            ::core::panicking::panic("assertion failed: PIN_ID < 0xf0")
        }
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
/// The RTIC application module
pub mod app {
    /// Always include the device crate which contains the vector table
    use rp_pico::pac as you_must_enable_the_rt_feature_for_the_pac_in_your_cargo_toml;
    pub use rtic::Monotonic as _;
    /// Holds static methods for each monotonic.
    pub mod monotonics {
        pub use Rp2040Mono::now;
        ///This module holds the static implementation for `Rp2040Mono::now()`
        #[allow(non_snake_case)]
        pub mod Rp2040Mono {
            /// Read the current time from this monotonic
            pub fn now() -> <super::super::Rp2040Mono as rtic::Monotonic>::Instant {
                rtic::export::interrupt::free(|_| {
                    use rtic::Monotonic as _;
                    if let Some(m) = unsafe {
                        &mut *super::super::__rtic_internal_MONOTONIC_STORAGE_Rp2040Mono
                            .get_mut()
                    } {
                        m.now()
                    } else {
                        <super::super::Rp2040Mono as rtic::Monotonic>::zero()
                    }
                })
            }
        }
    }
    use embedded_hal::digital::InputPin;
    use embedded_hal_0_2::digital::v2::OutputPin;
    use fugit::Duration;
    use rp_pico::hal as rp2040_hal;
    use rp_pico::hal::fugit::ExtU32;
    use rp_pico::XOSC_CRYSTAL_FREQ;
    use defmt_rtt as _;
    use rp2040_hal::{
        clocks,
        gpio::{
            self, bank0::{Gpio11, Gpio12, Gpio13, Gpio2, Gpio22, Gpio25, Gpio3},
            FunctionSio, Pins, PullDown, SioInput, SioOutput,
        },
        pac, Sio, Watchdog, I2C,
    };
    use rp2040_monotonic::Rp2040Monotonic;
    use symex_lib::symbolic;
    use core::mem::MaybeUninit;
    use panic_probe as _;
    use crate::{MockLed, Systick};
    /// User code from within the module
    #[inline(never)]
    #[no_mangle]
    #[allow(non_snake_case)]
    #[link_section = ".text.symex"]
    /// Initiates the Symex tool for auto discovery of
    unsafe extern "C" fn __symex_init_shared_resources() {
        symex_lib::set_max_priority(
            unsafe { &(*(&*__rtic_internal_shared_resource_debounce.get()).as_ptr()) },
            3usize as u32,
        );
    }
    #[inline(never)]
    #[no_mangle]
    #[allow(non_snake_case)]
    #[link_section = ".text.symex"]
    /// Initiates the Symex tool for auto discovery of
    unsafe extern "C" fn __symex_init_clock_freq() {
        unsafe {
            symex_lib::__symex_init_instruction_clock_freq(1u32);
        }
    }
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
    type Rp2040Mono = Rp2040Monotonic;
    #[inline(never)]
    #[no_mangle]
    #[allow(non_snake_case)]
    #[link_section = ".text.symex"]
    /// Initiates the Symex tool for auto discovery of
    unsafe extern "C" fn __symex_init_TIMER_IRQ_3() {
        symex_lib::grant_access(
            unsafe { core::mem::transmute(TIMER_IRQ_3 as *mut ()) },
            unsafe { &(*(&*__rtic_internal_shared_resource_debounce.get()).as_ptr()) },
        );
        symex_lib::grant_access(
            unsafe { core::mem::transmute(TIMER_IRQ_3 as *mut ()) },
            unsafe { &(*__rtic_internal_shared_resource_debounce.get()) },
        );
        symex_lib::grant_access(
            unsafe { core::mem::transmute(TIMER_IRQ_3 as *mut ()) },
            unsafe { &__rtic_internal_shared_resource_debounce },
        );
        symex_lib::__symex_allow_access(
            unsafe { core::mem::transmute(TIMER_IRQ_3 as *mut ()) },
            crate::FLASH_START,
            crate::FLASH_END,
        );
        symex_lib::__symex_set_priority(
            unsafe { core::mem::transmute(TIMER_IRQ_3 as *mut ()) },
            2usize as u32,
        );
        symex_lib::analyze(unsafe { core::mem::transmute(TIMER_IRQ_3 as *mut ()) });
        core::hint::black_box(__symex_init_TIMER_IRQ_3);
    }
    #[inline(never)]
    #[no_mangle]
    #[allow(non_snake_case)]
    #[link_section = ".text.symex"]
    /// Initiates the Symex tool for auto discovery of
    unsafe extern "C" fn __symex_init_TIMER_IRQ_2() {
        symex_lib::grant_access(
            unsafe { core::mem::transmute(TIMER_IRQ_2 as *mut ()) },
            unsafe { &(*(&*__rtic_internal_local_resource_led_state.get()).as_ptr()) },
        );
        symex_lib::grant_access(
            unsafe { core::mem::transmute(TIMER_IRQ_2 as *mut ()) },
            unsafe { &(*__rtic_internal_local_resource_led_state.get()) },
        );
        symex_lib::grant_access(
            unsafe { core::mem::transmute(TIMER_IRQ_2 as *mut ()) },
            unsafe { &__rtic_internal_local_resource_led_state },
        );
        symex_lib::__symex_allow_access(
            unsafe { core::mem::transmute(TIMER_IRQ_2 as *mut ()) },
            crate::FLASH_START,
            crate::FLASH_END,
        );
        symex_lib::grant_access(
            unsafe { core::mem::transmute(TIMER_IRQ_2 as *mut ()) },
            unsafe { &(*(&*__rtic_internal_local_resource_led.get()).as_ptr()) },
        );
        symex_lib::grant_access(
            unsafe { core::mem::transmute(TIMER_IRQ_2 as *mut ()) },
            unsafe { &(*__rtic_internal_local_resource_led.get()) },
        );
        symex_lib::grant_access(
            unsafe { core::mem::transmute(TIMER_IRQ_2 as *mut ()) },
            unsafe { &__rtic_internal_local_resource_led },
        );
        symex_lib::__symex_allow_access(
            unsafe { core::mem::transmute(TIMER_IRQ_2 as *mut ()) },
            crate::FLASH_START,
            crate::FLASH_END,
        );
        symex_lib::grant_access(
            unsafe { core::mem::transmute(TIMER_IRQ_2 as *mut ()) },
            unsafe { &(*(&*__rtic_internal_shared_resource_debounce.get()).as_ptr()) },
        );
        symex_lib::grant_access(
            unsafe { core::mem::transmute(TIMER_IRQ_2 as *mut ()) },
            unsafe { &(*__rtic_internal_shared_resource_debounce.get()) },
        );
        symex_lib::grant_access(
            unsafe { core::mem::transmute(TIMER_IRQ_2 as *mut ()) },
            unsafe { &__rtic_internal_shared_resource_debounce },
        );
        symex_lib::__symex_allow_access(
            unsafe { core::mem::transmute(TIMER_IRQ_2 as *mut ()) },
            crate::FLASH_START,
            crate::FLASH_END,
        );
        symex_lib::__symex_set_priority(
            unsafe { core::mem::transmute(TIMER_IRQ_2 as *mut ()) },
            1usize as u32,
        );
        symex_lib::analyze(unsafe { core::mem::transmute(TIMER_IRQ_2 as *mut ()) });
        core::hint::black_box(__symex_init_TIMER_IRQ_2);
    }
    #[inline(never)]
    #[no_mangle]
    #[allow(non_snake_case)]
    #[link_section = ".text.symex"]
    /// Initiates the Symex tool for auto discovery of
    unsafe extern "C" fn __symex_init_IO_IRQ_BANK0() {
        symex_lib::grant_access(
            unsafe { core::mem::transmute(IO_IRQ_BANK0 as *mut ()) },
            unsafe { &(*(&*__rtic_internal_local_resource_systic.get()).as_ptr()) },
        );
        symex_lib::grant_access(
            unsafe { core::mem::transmute(IO_IRQ_BANK0 as *mut ()) },
            unsafe { &(*__rtic_internal_local_resource_systic.get()) },
        );
        symex_lib::grant_access(
            unsafe { core::mem::transmute(IO_IRQ_BANK0 as *mut ()) },
            unsafe { &__rtic_internal_local_resource_systic },
        );
        symex_lib::__symex_allow_access(
            unsafe { core::mem::transmute(IO_IRQ_BANK0 as *mut ()) },
            crate::FLASH_START,
            crate::FLASH_END,
        );
        symex_lib::grant_access(
            unsafe { core::mem::transmute(IO_IRQ_BANK0 as *mut ()) },
            unsafe { &(*(&*__rtic_internal_shared_resource_debounce.get()).as_ptr()) },
        );
        symex_lib::grant_access(
            unsafe { core::mem::transmute(IO_IRQ_BANK0 as *mut ()) },
            unsafe { &(*__rtic_internal_shared_resource_debounce.get()) },
        );
        symex_lib::grant_access(
            unsafe { core::mem::transmute(IO_IRQ_BANK0 as *mut ()) },
            unsafe { &__rtic_internal_shared_resource_debounce },
        );
        symex_lib::__symex_allow_access(
            unsafe { core::mem::transmute(IO_IRQ_BANK0 as *mut ()) },
            crate::FLASH_START,
            crate::FLASH_END,
        );
        symex_lib::__symex_set_priority(
            unsafe { core::mem::transmute(IO_IRQ_BANK0 as *mut ()) },
            3usize as u32,
        );
        symex_lib::analyze(unsafe { core::mem::transmute(IO_IRQ_BANK0 as *mut ()) });
        core::hint::black_box(__symex_init_IO_IRQ_BANK0);
    }
    /// User code end
    /// User provided init function
    #[inline(always)]
    #[allow(non_snake_case)]
    fn init(mut ctx: init::Context) -> (Shared, Local, init::Monotonics) {
        core::hint::black_box(unsafe { __symex_init_TIMER_IRQ_3() });
        core::hint::black_box(unsafe { __symex_init_TIMER_IRQ_2() });
        core::hint::black_box(unsafe { __symex_init_IO_IRQ_BANK0() });
        core::hint::black_box(unsafe { __symex_init_shared_resources() });
        core::hint::black_box(unsafe { __symex_init_clock_freq() });
        match () {
            () => {
                if {
                    const CHECK: bool = {
                        const fn check() -> bool {
                            let module_path = "simple_rtic::app".as_bytes();
                            if if 11usize > module_path.len() {
                                false
                            } else {
                                module_path[0usize] == 115u8 && module_path[1usize] == 105u8
                                    && module_path[2usize] == 109u8
                                    && module_path[3usize] == 112u8
                                    && module_path[4usize] == 108u8
                                    && module_path[5usize] == 101u8
                                    && module_path[6usize] == 95u8
                                    && module_path[7usize] == 114u8
                                    && module_path[8usize] == 116u8
                                    && module_path[9usize] == 105u8
                                    && module_path[10usize] == 99u8
                                    && if 11usize == module_path.len() {
                                        true
                                    } else {
                                        module_path[11usize] == b':'
                                    }
                            } {
                                return true;
                            }
                            false
                        }
                        check()
                    };
                    CHECK
                } {
                    defmt::export::acquire_header_and_release(
                        &{
                            defmt::export::make_istr({
                                #[link_section = ".defmt.info.{\"package\":\"demo\",\"tag\":\"defmt_info\",\"data\":\"init\",\"disambiguator\":\"12536441723045734892\",\"crate_name\":\"simple_rtic\"}"]
                                #[export_name = "{\"package\":\"demo\",\"tag\":\"defmt_info\",\"data\":\"init\",\"disambiguator\":\"12536441723045734892\",\"crate_name\":\"simple_rtic\"}"]
                                static DEFMT_LOG_STATEMENT: u8 = 0;
                                &DEFMT_LOG_STATEMENT as *const u8 as u16
                            })
                        },
                    );
                }
            }
        };
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
    /// User HW task: task_3
    #[allow(non_snake_case)]
    fn task_3(mut cx: task_3::Context) {
        use rtic::Mutex as _;
        use rtic::mutex::prelude::*;
        cx.shared
            .debounce
            .lock(|el| {
                let _ = core::hint::black_box(el);
            });
    }
    /// User HW task: button_handler
    #[allow(non_snake_case)]
    fn button_handler(mut cx: button_handler::Context) {
        use rtic::Mutex as _;
        use rtic::mutex::prelude::*;
        let mut retry = 0;
        while !cx.shared.debounce.lock(|l| *l) {
            if retry > 2 {
                return;
            }
            retry += 1;
        }
        match cx.local.led_state {
            true => cx.local.led.set_high(),
            false => cx.local.led.set_low(),
        }
    }
    /// User HW task: button_reciever
    #[allow(non_snake_case)]
    fn button_reciever(mut cx: button_reciever::Context) {
        use rtic::Mutex as _;
        use rtic::mutex::prelude::*;
        let started = cx.local.systic.time();
        let mut time = started - started;
        let mut tries = 0;
        let deadline: Duration<u32, 1, 125_000_000> = Duration::<
            u32,
            1,
            125_000_000,
        >::millis(2);
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
    /// RTIC shared resource struct
    struct Shared {
        debounce: bool,
    }
    /// RTIC local resource struct
    struct Local {
        systic: Systick<125_000_000>,
        led_state: bool,
        led: MockLed<13>,
    }
    #[allow(non_snake_case)]
    #[allow(non_camel_case_types)]
    /// Local resources `init` has access to
    pub struct __rtic_internal_initLocalResources {
        /// Local resource `i2c_ctx`
        pub i2c_ctx: &'static mut MaybeUninit<I2CBus>,
    }
    /// Monotonics used by the system
    #[allow(non_snake_case)]
    #[allow(non_camel_case_types)]
    pub struct __rtic_internal_Monotonics(pub Rp2040Monotonic);
    /// Execution context
    #[allow(non_snake_case)]
    #[allow(non_camel_case_types)]
    pub struct __rtic_internal_init_Context<'a> {
        /// Core (Cortex-M) peripherals
        pub core: rtic::export::Peripherals,
        /// Device peripherals
        pub device: rp_pico::pac::Peripherals,
        /// Critical section token for init
        pub cs: rtic::export::CriticalSection<'a>,
        /// Local Resources this task has access to
        pub local: init::LocalResources,
    }
    impl<'a> __rtic_internal_init_Context<'a> {
        #[doc(hidden)]
        #[inline(always)]
        pub unsafe fn new(core: rtic::export::Peripherals) -> Self {
            __rtic_internal_init_Context {
                device: rp_pico::pac::Peripherals::steal(),
                cs: rtic::export::CriticalSection::new(),
                core,
                local: init::LocalResources::new(),
            }
        }
    }
    #[allow(non_snake_case)]
    /// Initialization function
    pub mod init {
        #[doc(inline)]
        pub use super::__rtic_internal_initLocalResources as LocalResources;
        #[doc(inline)]
        pub use super::__rtic_internal_Monotonics as Monotonics;
        #[doc(inline)]
        pub use super::__rtic_internal_init_Context as Context;
    }
    mod shared_resources {
        use rtic::export::Priority;
        #[doc(hidden)]
        #[allow(non_camel_case_types)]
        pub struct debounce_that_needs_to_be_locked<'a> {
            priority: &'a Priority,
        }
        impl<'a> debounce_that_needs_to_be_locked<'a> {
            #[inline(always)]
            pub unsafe fn new(priority: &'a Priority) -> Self {
                debounce_that_needs_to_be_locked {
                    priority,
                }
            }
            #[inline(always)]
            pub unsafe fn priority(&self) -> &Priority {
                self.priority
            }
        }
    }
    #[allow(non_snake_case)]
    #[allow(non_camel_case_types)]
    /// Shared resources `task_3` has access to
    pub struct __rtic_internal_task_3SharedResources<'a> {
        /// Resource proxy resource `debounce`. Use method `.lock()` to gain access
        pub debounce: shared_resources::debounce_that_needs_to_be_locked<'a>,
    }
    /// Execution context
    #[allow(non_snake_case)]
    #[allow(non_camel_case_types)]
    pub struct __rtic_internal_task_3_Context<'a> {
        /// Shared Resources this task has access to
        pub shared: task_3::SharedResources<'a>,
    }
    impl<'a> __rtic_internal_task_3_Context<'a> {
        #[doc(hidden)]
        #[inline(always)]
        pub unsafe fn new(priority: &'a rtic::export::Priority) -> Self {
            __rtic_internal_task_3_Context {
                shared: task_3::SharedResources::new(priority),
            }
        }
    }
    #[allow(non_snake_case)]
    /// Hardware task
    pub mod task_3 {
        #[doc(inline)]
        pub use super::__rtic_internal_task_3SharedResources as SharedResources;
        #[doc(inline)]
        pub use super::__rtic_internal_task_3_Context as Context;
    }
    #[allow(non_snake_case)]
    #[allow(non_camel_case_types)]
    /// Local resources `button_handler` has access to
    pub struct __rtic_internal_button_handlerLocalResources<'a> {
        /// Local resource `led_state`
        pub led_state: &'a mut bool,
        /// Local resource `led`
        pub led: &'a mut MockLed<13>,
    }
    #[allow(non_snake_case)]
    #[allow(non_camel_case_types)]
    /// Shared resources `button_handler` has access to
    pub struct __rtic_internal_button_handlerSharedResources<'a> {
        /// Resource proxy resource `debounce`. Use method `.lock()` to gain access
        pub debounce: shared_resources::debounce_that_needs_to_be_locked<'a>,
    }
    /// Execution context
    #[allow(non_snake_case)]
    #[allow(non_camel_case_types)]
    pub struct __rtic_internal_button_handler_Context<'a> {
        /// Local Resources this task has access to
        pub local: button_handler::LocalResources<'a>,
        /// Shared Resources this task has access to
        pub shared: button_handler::SharedResources<'a>,
    }
    impl<'a> __rtic_internal_button_handler_Context<'a> {
        #[doc(hidden)]
        #[inline(always)]
        pub unsafe fn new(priority: &'a rtic::export::Priority) -> Self {
            __rtic_internal_button_handler_Context {
                local: button_handler::LocalResources::new(),
                shared: button_handler::SharedResources::new(priority),
            }
        }
    }
    #[allow(non_snake_case)]
    /// Hardware task
    pub mod button_handler {
        #[doc(inline)]
        pub use super::__rtic_internal_button_handlerLocalResources as LocalResources;
        #[doc(inline)]
        pub use super::__rtic_internal_button_handlerSharedResources as SharedResources;
        #[doc(inline)]
        pub use super::__rtic_internal_button_handler_Context as Context;
    }
    #[allow(non_snake_case)]
    #[allow(non_camel_case_types)]
    /// Local resources `button_reciever` has access to
    pub struct __rtic_internal_button_recieverLocalResources<'a> {
        /// Local resource `systic`
        pub systic: &'a mut Systick<125_000_000>,
    }
    #[allow(non_snake_case)]
    #[allow(non_camel_case_types)]
    /// Shared resources `button_reciever` has access to
    pub struct __rtic_internal_button_recieverSharedResources<'a> {
        /// Resource proxy resource `debounce`. Use method `.lock()` to gain access
        pub debounce: shared_resources::debounce_that_needs_to_be_locked<'a>,
    }
    /// Execution context
    #[allow(non_snake_case)]
    #[allow(non_camel_case_types)]
    pub struct __rtic_internal_button_reciever_Context<'a> {
        /// Local Resources this task has access to
        pub local: button_reciever::LocalResources<'a>,
        /// Shared Resources this task has access to
        pub shared: button_reciever::SharedResources<'a>,
    }
    impl<'a> __rtic_internal_button_reciever_Context<'a> {
        #[doc(hidden)]
        #[inline(always)]
        pub unsafe fn new(priority: &'a rtic::export::Priority) -> Self {
            __rtic_internal_button_reciever_Context {
                local: button_reciever::LocalResources::new(),
                shared: button_reciever::SharedResources::new(priority),
            }
        }
    }
    #[allow(non_snake_case)]
    /// Hardware task
    pub mod button_reciever {
        #[doc(inline)]
        pub use super::__rtic_internal_button_recieverLocalResources as LocalResources;
        #[doc(inline)]
        pub use super::__rtic_internal_button_recieverSharedResources as SharedResources;
        #[doc(inline)]
        pub use super::__rtic_internal_button_reciever_Context as Context;
    }
    /// App module
    impl __rtic_internal_initLocalResources {
        #[inline(always)]
        #[doc(hidden)]
        pub unsafe fn new() -> Self {
            __rtic_internal_initLocalResources {
                i2c_ctx: &mut *__rtic_internal_local_init_i2c_ctx.get_mut(),
            }
        }
    }
    #[allow(non_camel_case_types)]
    #[allow(non_upper_case_globals)]
    #[doc(hidden)]
    #[link_section = ".uninit.rtic0"]
    static __rtic_internal_shared_resource_debounce: rtic::RacyCell<
        core::mem::MaybeUninit<bool>,
    > = rtic::RacyCell::new(core::mem::MaybeUninit::uninit());
    impl<'a> rtic::Mutex for shared_resources::debounce_that_needs_to_be_locked<'a> {
        type T = bool;
        #[inline(always)]
        fn lock<RTIC_INTERNAL_R>(
            &mut self,
            f: impl FnOnce(&mut bool) -> RTIC_INTERNAL_R,
        ) -> RTIC_INTERNAL_R {
            /// Priority ceiling
            const CEILING: u8 = 3u8;
            unsafe {
                rtic::export::lock(
                    __rtic_internal_shared_resource_debounce.get_mut() as *mut _,
                    self.priority(),
                    CEILING,
                    rp_pico::pac::NVIC_PRIO_BITS,
                    &__rtic_internal_MASKS,
                    f,
                )
            }
        }
    }
    #[doc(hidden)]
    #[allow(non_upper_case_globals)]
    const __rtic_internal_MASK_CHUNKS: usize = rtic::export::compute_mask_chunks([
        rp_pico::pac::Interrupt::TIMER_IRQ_3 as u32,
        rp_pico::pac::Interrupt::TIMER_IRQ_2 as u32,
        rp_pico::pac::Interrupt::IO_IRQ_BANK0 as u32,
    ]);
    #[doc(hidden)]
    #[allow(non_upper_case_globals)]
    const __rtic_internal_MASKS: [rtic::export::Mask<__rtic_internal_MASK_CHUNKS>; 3] = [
        rtic::export::create_mask([rp_pico::pac::Interrupt::TIMER_IRQ_2 as u32]),
        rtic::export::create_mask([rp_pico::pac::Interrupt::TIMER_IRQ_3 as u32]),
        rtic::export::create_mask([rp_pico::pac::Interrupt::IO_IRQ_BANK0 as u32]),
    ];
    #[allow(non_camel_case_types)]
    #[allow(non_upper_case_globals)]
    #[doc(hidden)]
    #[link_section = ".uninit.rtic1"]
    static __rtic_internal_local_resource_systic: rtic::RacyCell<
        core::mem::MaybeUninit<Systick<125_000_000>>,
    > = rtic::RacyCell::new(core::mem::MaybeUninit::uninit());
    #[allow(non_camel_case_types)]
    #[allow(non_upper_case_globals)]
    #[doc(hidden)]
    #[link_section = ".uninit.rtic2"]
    static __rtic_internal_local_resource_led_state: rtic::RacyCell<
        core::mem::MaybeUninit<bool>,
    > = rtic::RacyCell::new(core::mem::MaybeUninit::uninit());
    #[allow(non_camel_case_types)]
    #[allow(non_upper_case_globals)]
    #[doc(hidden)]
    #[link_section = ".uninit.rtic3"]
    static __rtic_internal_local_resource_led: rtic::RacyCell<
        core::mem::MaybeUninit<MockLed<13>>,
    > = rtic::RacyCell::new(core::mem::MaybeUninit::uninit());
    #[allow(non_camel_case_types)]
    #[allow(non_upper_case_globals)]
    #[doc(hidden)]
    static __rtic_internal_local_init_i2c_ctx: rtic::RacyCell<MaybeUninit<I2CBus>> = rtic::RacyCell::new(
        MaybeUninit::uninit(),
    );
    #[allow(non_snake_case)]
    #[no_mangle]
    /// User HW task ISR trampoline for task_3
    unsafe fn TIMER_IRQ_3() {
        const PRIORITY: u8 = 2u8;
        rtic::export::run(
            PRIORITY,
            || { task_3(task_3::Context::new(&rtic::export::Priority::new(PRIORITY))) },
        );
    }
    impl<'a> __rtic_internal_task_3SharedResources<'a> {
        #[doc(hidden)]
        #[inline(always)]
        pub unsafe fn new(priority: &'a rtic::export::Priority) -> Self {
            __rtic_internal_task_3SharedResources {
                #[doc(hidden)]
                debounce: shared_resources::debounce_that_needs_to_be_locked::new(
                    priority,
                ),
            }
        }
    }
    #[allow(non_snake_case)]
    #[no_mangle]
    /// User HW task ISR trampoline for button_handler
    unsafe fn TIMER_IRQ_2() {
        const PRIORITY: u8 = 1u8;
        rtic::export::run(
            PRIORITY,
            || {
                button_handler(
                    button_handler::Context::new(&rtic::export::Priority::new(PRIORITY)),
                )
            },
        );
    }
    impl<'a> __rtic_internal_button_handlerLocalResources<'a> {
        #[inline(always)]
        #[doc(hidden)]
        pub unsafe fn new() -> Self {
            __rtic_internal_button_handlerLocalResources {
                led_state: &mut *(&mut *__rtic_internal_local_resource_led_state
                    .get_mut())
                    .as_mut_ptr(),
                led: &mut *(&mut *__rtic_internal_local_resource_led.get_mut())
                    .as_mut_ptr(),
            }
        }
    }
    impl<'a> __rtic_internal_button_handlerSharedResources<'a> {
        #[doc(hidden)]
        #[inline(always)]
        pub unsafe fn new(priority: &'a rtic::export::Priority) -> Self {
            __rtic_internal_button_handlerSharedResources {
                #[doc(hidden)]
                debounce: shared_resources::debounce_that_needs_to_be_locked::new(
                    priority,
                ),
            }
        }
    }
    #[allow(non_snake_case)]
    #[no_mangle]
    /// User HW task ISR trampoline for button_reciever
    unsafe fn IO_IRQ_BANK0() {
        const PRIORITY: u8 = 3u8;
        rtic::export::run(
            PRIORITY,
            || {
                button_reciever(
                    button_reciever::Context::new(&rtic::export::Priority::new(PRIORITY)),
                )
            },
        );
    }
    impl<'a> __rtic_internal_button_recieverLocalResources<'a> {
        #[inline(always)]
        #[doc(hidden)]
        pub unsafe fn new() -> Self {
            __rtic_internal_button_recieverLocalResources {
                systic: &mut *(&mut *__rtic_internal_local_resource_systic.get_mut())
                    .as_mut_ptr(),
            }
        }
    }
    impl<'a> __rtic_internal_button_recieverSharedResources<'a> {
        #[doc(hidden)]
        #[inline(always)]
        pub unsafe fn new(priority: &'a rtic::export::Priority) -> Self {
            __rtic_internal_button_recieverSharedResources {
                #[doc(hidden)]
                debounce: shared_resources::debounce_that_needs_to_be_locked::new(
                    priority,
                ),
            }
        }
    }
    #[doc(hidden)]
    #[allow(non_camel_case_types)]
    #[allow(non_upper_case_globals)]
    static __rtic_internal_TIMER_QUEUE_MARKER: rtic::RacyCell<u32> = rtic::RacyCell::new(
        0,
    );
    #[doc(hidden)]
    #[allow(non_camel_case_types)]
    pub enum SCHED_T {}
    #[automatically_derived]
    #[allow(non_camel_case_types)]
    impl ::core::clone::Clone for SCHED_T {
        #[inline]
        fn clone(&self) -> SCHED_T {
            *self
        }
    }
    #[automatically_derived]
    #[allow(non_camel_case_types)]
    impl ::core::marker::Copy for SCHED_T {}
    #[doc(hidden)]
    #[allow(non_camel_case_types)]
    #[allow(non_upper_case_globals)]
    static __rtic_internal_TQ_Rp2040Mono: rtic::RacyCell<
        rtic::export::TimerQueue<Rp2040Monotonic, SCHED_T, 0>,
    > = rtic::RacyCell::new(
        rtic::export::TimerQueue(rtic::export::SortedLinkedList::new_u16()),
    );
    #[doc(hidden)]
    #[allow(non_camel_case_types)]
    #[allow(non_upper_case_globals)]
    static __rtic_internal_MONOTONIC_STORAGE_Rp2040Mono: rtic::RacyCell<
        Option<Rp2040Monotonic>,
    > = rtic::RacyCell::new(None);
    #[no_mangle]
    #[allow(non_snake_case)]
    unsafe fn TIMER_IRQ_0() {
        while let Some((task, index)) = rtic::export::interrupt::free(|_| {
            if let Some(mono) = (&mut *__rtic_internal_MONOTONIC_STORAGE_Rp2040Mono
                .get_mut())
                .as_mut()
            {
                (&mut *__rtic_internal_TQ_Rp2040Mono.get_mut())
                    .dequeue(
                        || rtic::export::NVIC::mask(
                            you_must_enable_the_rt_feature_for_the_pac_in_your_cargo_toml::interrupt::TIMER_IRQ_0,
                        ),
                        mono,
                    )
            } else {
                core::hint::unreachable_unchecked()
            }
        }) {
            match task {}
        }
        rtic::export::interrupt::free(|_| {
            if let Some(mono) = (&mut *__rtic_internal_MONOTONIC_STORAGE_Rp2040Mono
                .get_mut())
                .as_mut()
            {
                mono.on_interrupt();
            }
        });
    }
    #[doc(hidden)]
    mod rtic_ext {
        use super::*;
        #[no_mangle]
        unsafe extern "C" fn main() -> ! {
            rtic::export::assert_send::<bool>();
            rtic::export::assert_send::<Systick<125_000_000>>();
            rtic::export::assert_send::<MockLed<13>>();
            rtic::export::assert_monotonic::<Rp2040Monotonic>();
            const _CONST_CHECK: () = {
                if !rtic::export::have_basepri() {
                    if (rp_pico::pac::Interrupt::TIMER_IRQ_3 as usize)
                        >= (__rtic_internal_MASK_CHUNKS * 32)
                    {
                        {
                            ::core::panicking::panic_fmt(
                                format_args!(
                                    "An interrupt out of range is used while in armv6 or armv8m.base",
                                ),
                            );
                        };
                    }
                    if (rp_pico::pac::Interrupt::TIMER_IRQ_2 as usize)
                        >= (__rtic_internal_MASK_CHUNKS * 32)
                    {
                        {
                            ::core::panicking::panic_fmt(
                                format_args!(
                                    "An interrupt out of range is used while in armv6 or armv8m.base",
                                ),
                            );
                        };
                    }
                    if (rp_pico::pac::Interrupt::IO_IRQ_BANK0 as usize)
                        >= (__rtic_internal_MASK_CHUNKS * 32)
                    {
                        {
                            ::core::panicking::panic_fmt(
                                format_args!(
                                    "An interrupt out of range is used while in armv6 or armv8m.base",
                                ),
                            );
                        };
                    }
                } else {}
            };
            let _ = _CONST_CHECK;
            rtic::export::interrupt::disable();
            let mut core: rtic::export::Peripherals = rtic::export::Peripherals::steal()
                .into();
            const _: () = if (1 << rp_pico::pac::NVIC_PRIO_BITS) < 2u8 as usize {
                {
                    ::core::panicking::panic_fmt(
                        format_args!(
                            "Maximum priority used by interrupt vector \'TIMER_IRQ_3\' is more than supported by hardware",
                        ),
                    );
                };
            };
            core.NVIC
                .set_priority(
                    you_must_enable_the_rt_feature_for_the_pac_in_your_cargo_toml::interrupt::TIMER_IRQ_3,
                    rtic::export::logical2hw(2u8, rp_pico::pac::NVIC_PRIO_BITS),
                );
            rtic::export::NVIC::unmask(
                you_must_enable_the_rt_feature_for_the_pac_in_your_cargo_toml::interrupt::TIMER_IRQ_3,
            );
            const _: () = if (1 << rp_pico::pac::NVIC_PRIO_BITS) < 1u8 as usize {
                {
                    ::core::panicking::panic_fmt(
                        format_args!(
                            "Maximum priority used by interrupt vector \'TIMER_IRQ_2\' is more than supported by hardware",
                        ),
                    );
                };
            };
            core.NVIC
                .set_priority(
                    you_must_enable_the_rt_feature_for_the_pac_in_your_cargo_toml::interrupt::TIMER_IRQ_2,
                    rtic::export::logical2hw(1u8, rp_pico::pac::NVIC_PRIO_BITS),
                );
            rtic::export::NVIC::unmask(
                you_must_enable_the_rt_feature_for_the_pac_in_your_cargo_toml::interrupt::TIMER_IRQ_2,
            );
            const _: () = if (1 << rp_pico::pac::NVIC_PRIO_BITS) < 3u8 as usize {
                {
                    ::core::panicking::panic_fmt(
                        format_args!(
                            "Maximum priority used by interrupt vector \'IO_IRQ_BANK0\' is more than supported by hardware",
                        ),
                    );
                };
            };
            core.NVIC
                .set_priority(
                    you_must_enable_the_rt_feature_for_the_pac_in_your_cargo_toml::interrupt::IO_IRQ_BANK0,
                    rtic::export::logical2hw(3u8, rp_pico::pac::NVIC_PRIO_BITS),
                );
            rtic::export::NVIC::unmask(
                you_must_enable_the_rt_feature_for_the_pac_in_your_cargo_toml::interrupt::IO_IRQ_BANK0,
            );
            const _: () = if (1 << rp_pico::pac::NVIC_PRIO_BITS)
                < (1 << rp_pico::pac::NVIC_PRIO_BITS) as usize
            {
                {
                    ::core::panicking::panic_fmt(
                        format_args!(
                            "Maximum priority used by monotonic \'Rp2040Mono\' is more than supported by hardware",
                        ),
                    );
                };
            };
            core.NVIC
                .set_priority(
                    you_must_enable_the_rt_feature_for_the_pac_in_your_cargo_toml::interrupt::TIMER_IRQ_0,
                    rtic::export::logical2hw(
                        (1 << rp_pico::pac::NVIC_PRIO_BITS),
                        rp_pico::pac::NVIC_PRIO_BITS,
                    ),
                );
            if !<Rp2040Monotonic as rtic::Monotonic>::DISABLE_INTERRUPT_ON_EMPTY_QUEUE {
                rtic::export::NVIC::unmask(
                    you_must_enable_the_rt_feature_for_the_pac_in_your_cargo_toml::interrupt::TIMER_IRQ_0,
                );
            }
            #[inline(never)]
            fn __rtic_init_resources<F>(f: F)
            where
                F: FnOnce(),
            {
                f();
            }
            __rtic_init_resources(|| {
                let (shared_resources, local_resources, mut monotonics) = init(
                    init::Context::new(core.into()),
                );
                __rtic_internal_shared_resource_debounce
                    .get_mut()
                    .write(core::mem::MaybeUninit::new(shared_resources.debounce));
                __rtic_internal_local_resource_systic
                    .get_mut()
                    .write(core::mem::MaybeUninit::new(local_resources.systic));
                __rtic_internal_local_resource_led_state
                    .get_mut()
                    .write(core::mem::MaybeUninit::new(local_resources.led_state));
                __rtic_internal_local_resource_led
                    .get_mut()
                    .write(core::mem::MaybeUninit::new(local_resources.led));
                monotonics.0.reset();
                __rtic_internal_MONOTONIC_STORAGE_Rp2040Mono
                    .get_mut()
                    .write(Some(monotonics.0));
                rtic::export::interrupt::enable();
            });
            loop {
                rtic::export::nop()
            }
        }
    }
}
