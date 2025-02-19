warning: unused import: `fugit::Instant`
  --> examples/simple_rtic.rs:17:9
   |
17 |         fugit::Instant,
   |         ^^^^^^^^^^^^^^
   |
   = note: `#[warn(unused_imports)]` on by default

warning: unused imports: `fugit::Duration` and `fugit::RateExtU32`
  --> examples/simple_rtic.rs:26:9
   |
26 |         fugit::Duration,
   |         ^^^^^^^^^^^^^^^
27 |         fugit::RateExtU32, // For .kHz() conversion funcs
   |         ^^^^^^^^^^^^^^^^^

warning: unused import: `ToggleableOutputPin`
  --> examples/simple_rtic.rs:33:48
   |
33 |     use embedded_hal::digital::v2::{OutputPin, ToggleableOutputPin};
   |                                                ^^^^^^^^^^^^^^^^^^^

warning: unused variable: `clocks`
  --> examples/simple_rtic.rs:76:13
   |
76 |         let clocks = clocks::init_clocks_and_plls(
   |             ^^^^^^ help: if this is intentional, prefix it with an underscore: `_clocks`
   |
   = note: `#[warn(unused_variables)]` on by default

warning: variable does not need to be mutable
   --> examples/simple_rtic.rs:115:23
    |
115 |     fn button_handler(mut ctx: button_handler::Context) {
    |                       ----^^^
    |                       |
    |                       help: remove this `mut`
    |
    = note: `#[warn(unused_mut)]` on by default

warning: type alias `Led1` is never used
  --> examples/simple_rtic.rs:45:10
   |
45 |     type Led1 = gpio::Pin<Gpio13, FunctionSio<SioOutput>, PullDown>;
   |          ^^^^
   |
   = note: `#[warn(dead_code)]` on by default

warning: type alias `Led2` is never used
  --> examples/simple_rtic.rs:46:10
   |
46 |     type Led2 = gpio::Pin<Gpio12, FunctionSio<SioOutput>, PullDown>;
   |          ^^^^

warning: type alias `Led3` is never used
  --> examples/simple_rtic.rs:47:10
   |
47 |     type Led3 = gpio::Pin<Gpio11, FunctionSio<SioOutput>, PullDown>;
   |          ^^^^

warning: unused `Result` that must be used
   --> examples/simple_rtic.rs:117:13
    |
117 |             ctx.local.led.set_high();
    |             ^^^^^^^^^^^^^^^^^^^^^^^^
    |
    = note: this `Result` may be an `Err` variant, which should be handled
    = note: `#[warn(unused_must_use)]` on by default
help: use `let _ = ...` to ignore the resulting value
    |
117 |             let _ = ctx.local.led.set_high();
    |             +++++++

warning: unused `Result` that must be used
   --> examples/simple_rtic.rs:119:13
    |
119 |             ctx.local.led.set_low();
    |             ^^^^^^^^^^^^^^^^^^^^^^^
    |
    = note: this `Result` may be an `Err` variant, which should be handled
help: use `let _ = ...` to ignore the resulting value
    |
119 |             let _ = ctx.local.led.set_low();
    |             +++++++

warning: 10 warnings emitted


simple_rtic:	file format elf32-littlearm

Disassembly of section .text.<&T as core::fmt::Display>::fmt::h0dfb4341b9096e51:

00000e98 <<&T as core::fmt::Display>::fmt::h0dfb4341b9096e51>:
     e98: b580         	push	{r7, lr}
     e9a: af00         	add	r7, sp, #0x0
     e9c: b082         	sub	sp, #0x8
     e9e: 9000         	str	r0, [sp]
     ea0: 9101         	str	r1, [sp, #0x4]
     ea2: 6800         	ldr	r0, [r0]
     ea4: f002 f85a    	bl	0x2f5c <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d> @ imm = #0x20b4
     ea8: b002         	add	sp, #0x8
     eaa: bd80         	pop	{r7, pc}

Disassembly of section .text.core::sync::atomic::AtomicBool::load::hd15b0d62d4a81cdd:

00000eac <core::sync::atomic::AtomicBool::load::hd15b0d62d4a81cdd>:
     eac: b580         	push	{r7, lr}
     eae: af00         	add	r7, sp, #0x0
     eb0: b084         	sub	sp, #0x10
     eb2: 9001         	str	r0, [sp, #0x4]
     eb4: aa02         	add	r2, sp, #0x8
     eb6: 7011         	strb	r1, [r2]
     eb8: 9003         	str	r0, [sp, #0xc]
     eba: f000 f813    	bl	0xee4 <core::sync::atomic::atomic_load::hbe4c4d35f778c52e> @ imm = #0x26
     ebe: b2c0         	uxtb	r0, r0
     ec0: 1e41         	subs	r1, r0, #0x1
     ec2: 4188         	sbcs	r0, r1
     ec4: b004         	add	sp, #0x10
     ec6: bd80         	pop	{r7, pc}

Disassembly of section .text.core::sync::atomic::AtomicBool::store::hf5fb161c5c5e1eba:

00000ec8 <core::sync::atomic::AtomicBool::store::hf5fb161c5c5e1eba>:
     ec8: b580         	push	{r7, lr}
     eca: af00         	add	r7, sp, #0x0
     ecc: b084         	sub	sp, #0x10
     ece: 9000         	str	r0, [sp]
     ed0: ab01         	add	r3, sp, #0x4
     ed2: 7019         	strb	r1, [r3]
     ed4: ab02         	add	r3, sp, #0x8
     ed6: 701a         	strb	r2, [r3]
     ed8: 9003         	str	r0, [sp, #0xc]
     eda: f000 f865    	bl	0xfa8 <core::sync::atomic::atomic_store::hf06e61bc7ea4faed> @ imm = #0xca
     ede: b004         	add	sp, #0x10
     ee0: bd80         	pop	{r7, pc}

Disassembly of section .text.core::sync::atomic::atomic_load::hbe4c4d35f778c52e:

00000ee4 <core::sync::atomic::atomic_load::hbe4c4d35f778c52e>:
     ee4: b580         	push	{r7, lr}
     ee6: af00         	add	r7, sp, #0x0
     ee8: b094         	sub	sp, #0x50
     eea: 460a         	mov	r2, r1
     eec: 4601         	mov	r1, r0
     eee: 9101         	str	r1, [sp, #0x4]
     ef0: 4828         	ldr	r0, [pc, #0xa0]         @ 0xf94 <core::sync::atomic::atomic_load::hbe4c4d35f778c52e+0xb0>
     ef2: 9003         	str	r0, [sp, #0xc]
     ef4: 4828         	ldr	r0, [pc, #0xa0]         @ 0xf98 <core::sync::atomic::atomic_load::hbe4c4d35f778c52e+0xb4>
     ef6: 9004         	str	r0, [sp, #0x10]
     ef8: a805         	add	r0, sp, #0x14
     efa: 7002         	strb	r2, [r0]
     efc: 9113         	str	r1, [sp, #0x4c]
     efe: 7800         	ldrb	r0, [r0]
     f00: 9002         	str	r0, [sp, #0x8]
     f02: 9802         	ldr	r0, [sp, #0x8]
     f04: 0081         	lsls	r1, r0, #0x2
     f06: a001         	adr	r0, #4 <core::sync::atomic::atomic_load::hbe4c4d35f778c52e+0x27>
     f08: 5840         	ldr	r0, [r0, r1]
     f0a: 4687         	mov	pc, r0
     f0c: 23 0f 00 00  	.word	0x00000f23
     f10: 2d 0f 00 00  	.word	0x00000f2d
     f14: 4f 0f 00 00  	.word	0x00000f4f
     f18: 5d 0f 00 00  	.word	0x00000f5d
     f1c: 7f 0f 00 00  	.word	0x00000f7f
     f20: defe         	trap
     f22: 9801         	ldr	r0, [sp, #0x4]
     f24: 7800         	ldrb	r0, [r0]
     f26: a906         	add	r1, sp, #0x18
     f28: 7008         	strb	r0, [r1]
     f2a: e02f         	b	0xf8c <core::sync::atomic::atomic_load::hbe4c4d35f778c52e+0xa8> @ imm = #0x5e
     f2c: 481a         	ldr	r0, [pc, #0x68]         @ 0xf98 <core::sync::atomic::atomic_load::hbe4c4d35f778c52e+0xb4>
     f2e: 9007         	str	r0, [sp, #0x1c]
     f30: 2001         	movs	r0, #0x1
     f32: 9008         	str	r0, [sp, #0x20]
     f34: 4819         	ldr	r0, [pc, #0x64]         @ 0xf9c <core::sync::atomic::atomic_load::hbe4c4d35f778c52e+0xb8>
     f36: 6801         	ldr	r1, [r0]
     f38: 6840         	ldr	r0, [r0, #0x4]
     f3a: 910b         	str	r1, [sp, #0x2c]
     f3c: 900c         	str	r0, [sp, #0x30]
     f3e: 2004         	movs	r0, #0x4
     f40: 9009         	str	r0, [sp, #0x24]
     f42: 2000         	movs	r0, #0x0
     f44: 900a         	str	r0, [sp, #0x28]
     f46: 4917         	ldr	r1, [pc, #0x5c]         @ 0xfa4 <core::sync::atomic::atomic_load::hbe4c4d35f778c52e+0xc0>
     f48: a807         	add	r0, sp, #0x1c
     f4a: f002 f855    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x20aa
     f4e: 9801         	ldr	r0, [sp, #0x4]
     f50: 7800         	ldrb	r0, [r0]
     f52: f3bf 8f5f    	dmb	sy
     f56: a906         	add	r1, sp, #0x18
     f58: 7008         	strb	r0, [r1]
     f5a: e017         	b	0xf8c <core::sync::atomic::atomic_load::hbe4c4d35f778c52e+0xa8> @ imm = #0x2e
     f5c: 480d         	ldr	r0, [pc, #0x34]         @ 0xf94 <core::sync::atomic::atomic_load::hbe4c4d35f778c52e+0xb0>
     f5e: 900d         	str	r0, [sp, #0x34]
     f60: 2001         	movs	r0, #0x1
     f62: 900e         	str	r0, [sp, #0x38]
     f64: 480d         	ldr	r0, [pc, #0x34]         @ 0xf9c <core::sync::atomic::atomic_load::hbe4c4d35f778c52e+0xb8>
     f66: 6801         	ldr	r1, [r0]
     f68: 6840         	ldr	r0, [r0, #0x4]
     f6a: 9111         	str	r1, [sp, #0x44]
     f6c: 9012         	str	r0, [sp, #0x48]
     f6e: 2004         	movs	r0, #0x4
     f70: 900f         	str	r0, [sp, #0x3c]
     f72: 2000         	movs	r0, #0x0
     f74: 9010         	str	r0, [sp, #0x40]
     f76: 490a         	ldr	r1, [pc, #0x28]         @ 0xfa0 <core::sync::atomic::atomic_load::hbe4c4d35f778c52e+0xbc>
     f78: a80d         	add	r0, sp, #0x34
     f7a: f002 f83d    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x207a
     f7e: 9801         	ldr	r0, [sp, #0x4]
     f80: 7800         	ldrb	r0, [r0]
     f82: f3bf 8f5f    	dmb	sy
     f86: a906         	add	r1, sp, #0x18
     f88: 7008         	strb	r0, [r1]
     f8a: e7ff         	b	0xf8c <core::sync::atomic::atomic_load::hbe4c4d35f778c52e+0xa8> @ imm = #-0x2
     f8c: 9806         	ldr	r0, [sp, #0x18]
     f8e: b014         	add	sp, #0x50
     f90: bd80         	pop	{r7, pc}
     f92: 46c0         	mov	r8, r8
     f94: 4c 00 00 00  	.word	0x0000004c
     f98: b0 00 00 00  	.word	0x000000b0
     f9c: d8 00 00 00  	.word	0x000000d8
     fa0: dc 01 00 00  	.word	0x000001dc
     fa4: 54 01 00 00  	.word	0x00000154

Disassembly of section .text.core::sync::atomic::atomic_store::hf06e61bc7ea4faed:

00000fa8 <core::sync::atomic::atomic_store::hf06e61bc7ea4faed>:
     fa8: b580         	push	{r7, lr}
     faa: af00         	add	r7, sp, #0x0
     fac: b094         	sub	sp, #0x50
     fae: 4613         	mov	r3, r2
     fb0: 4602         	mov	r2, r0
     fb2: 9200         	str	r2, [sp]
     fb4: 4608         	mov	r0, r1
     fb6: 9001         	str	r0, [sp, #0x4]
     fb8: 4828         	ldr	r0, [pc, #0xa0]         @ 0x105c <core::sync::atomic::atomic_store::hf06e61bc7ea4faed+0xb4>
     fba: 9003         	str	r0, [sp, #0xc]
     fbc: 4828         	ldr	r0, [pc, #0xa0]         @ 0x1060 <core::sync::atomic::atomic_store::hf06e61bc7ea4faed+0xb8>
     fbe: 9004         	str	r0, [sp, #0x10]
     fc0: a805         	add	r0, sp, #0x14
     fc2: 7003         	strb	r3, [r0]
     fc4: 9212         	str	r2, [sp, #0x48]
     fc6: aa13         	add	r2, sp, #0x4c
     fc8: 7011         	strb	r1, [r2]
     fca: 7800         	ldrb	r0, [r0]
     fcc: 9002         	str	r0, [sp, #0x8]
     fce: 9802         	ldr	r0, [sp, #0x8]
     fd0: 0081         	lsls	r1, r0, #0x2
     fd2: a001         	adr	r0, #4 <core::sync::atomic::atomic_store::hf06e61bc7ea4faed+0x2f>
     fd4: 5840         	ldr	r0, [r0, r1]
     fd6: 4687         	mov	pc, r0
     fd8: ef 0f 00 00  	.word	0x00000fef
     fdc: f7 0f 00 00  	.word	0x00000ff7
     fe0: 03 10 00 00  	.word	0x00001003
     fe4: 25 10 00 00  	.word	0x00001025
     fe8: 47 10 00 00  	.word	0x00001047
     fec: defe         	trap
     fee: 9801         	ldr	r0, [sp, #0x4]
     ff0: 9900         	ldr	r1, [sp]
     ff2: 7008         	strb	r0, [r1]
     ff4: e02f         	b	0x1056 <core::sync::atomic::atomic_store::hf06e61bc7ea4faed+0xae> @ imm = #0x5e
     ff6: 9801         	ldr	r0, [sp, #0x4]
     ff8: 9900         	ldr	r1, [sp]
     ffa: f3bf 8f5f    	dmb	sy
     ffe: 7008         	strb	r0, [r1]
    1000: e029         	b	0x1056 <core::sync::atomic::atomic_store::hf06e61bc7ea4faed+0xae> @ imm = #0x52
    1002: 4817         	ldr	r0, [pc, #0x5c]         @ 0x1060 <core::sync::atomic::atomic_store::hf06e61bc7ea4faed+0xb8>
    1004: 9006         	str	r0, [sp, #0x18]
    1006: 2001         	movs	r0, #0x1
    1008: 9007         	str	r0, [sp, #0x1c]
    100a: 4816         	ldr	r0, [pc, #0x58]         @ 0x1064 <core::sync::atomic::atomic_store::hf06e61bc7ea4faed+0xbc>
    100c: 6801         	ldr	r1, [r0]
    100e: 6840         	ldr	r0, [r0, #0x4]
    1010: 910a         	str	r1, [sp, #0x28]
    1012: 900b         	str	r0, [sp, #0x2c]
    1014: 2004         	movs	r0, #0x4
    1016: 9008         	str	r0, [sp, #0x20]
    1018: 2000         	movs	r0, #0x0
    101a: 9009         	str	r0, [sp, #0x24]
    101c: 4913         	ldr	r1, [pc, #0x4c]         @ 0x106c <core::sync::atomic::atomic_store::hf06e61bc7ea4faed+0xc4>
    101e: a806         	add	r0, sp, #0x18
    1020: f001 ffea    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x1fd4
    1024: 480d         	ldr	r0, [pc, #0x34]         @ 0x105c <core::sync::atomic::atomic_store::hf06e61bc7ea4faed+0xb4>
    1026: 900c         	str	r0, [sp, #0x30]
    1028: 2001         	movs	r0, #0x1
    102a: 900d         	str	r0, [sp, #0x34]
    102c: 480d         	ldr	r0, [pc, #0x34]         @ 0x1064 <core::sync::atomic::atomic_store::hf06e61bc7ea4faed+0xbc>
    102e: 6801         	ldr	r1, [r0]
    1030: 6840         	ldr	r0, [r0, #0x4]
    1032: 9110         	str	r1, [sp, #0x40]
    1034: 9011         	str	r0, [sp, #0x44]
    1036: 2004         	movs	r0, #0x4
    1038: 900e         	str	r0, [sp, #0x38]
    103a: 2000         	movs	r0, #0x0
    103c: 900f         	str	r0, [sp, #0x3c]
    103e: 490a         	ldr	r1, [pc, #0x28]         @ 0x1068 <core::sync::atomic::atomic_store::hf06e61bc7ea4faed+0xc0>
    1040: a80c         	add	r0, sp, #0x30
    1042: f001 ffd9    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x1fb2
    1046: 9801         	ldr	r0, [sp, #0x4]
    1048: 9900         	ldr	r1, [sp]
    104a: f3bf 8f5f    	dmb	sy
    104e: 7008         	strb	r0, [r1]
    1050: f3bf 8f5f    	dmb	sy
    1054: e7ff         	b	0x1056 <core::sync::atomic::atomic_store::hf06e61bc7ea4faed+0xae> @ imm = #-0x2
    1056: b014         	add	sp, #0x50
    1058: bd80         	pop	{r7, pc}
    105a: 46c0         	mov	r8, r8
    105c: 98 03 00 00  	.word	0x00000398
    1060: 34 04 00 00  	.word	0x00000434
    1064: d8 00 00 00  	.word	0x000000d8
    1068: b8 04 00 00  	.word	0x000004b8
    106c: 4c 04 00 00  	.word	0x0000044c

Disassembly of section .text.defmt::export::fmt::ha6e9b9304a25239d:

00001070 <defmt::export::fmt::ha6e9b9304a25239d>:
    1070: b580         	push	{r7, lr}
    1072: af00         	add	r7, sp, #0x0
    1074: b084         	sub	sp, #0x10
    1076: 9001         	str	r0, [sp, #0x4]
    1078: 9003         	str	r0, [sp, #0xc]
    107a: f000 f80b    	bl	0x1094 <<defmt::impls::adapter::Display2Format<T> as defmt::traits::Format>::_format_tag::ha9d6e23e9f3f8597> @ imm = #0x16
    107e: 4601         	mov	r1, r0
    1080: a802         	add	r0, sp, #0x8
    1082: 8001         	strh	r1, [r0]
    1084: f001 fe26    	bl	0x2cd4 <defmt::export::istr::haa718d2dfdfb8693> @ imm = #0x1c4c
    1088: 9801         	ldr	r0, [sp, #0x4]
    108a: f000 f80b    	bl	0x10a4 <<defmt::impls::adapter::Display2Format<T> as defmt::traits::Format>::_format_data::haa55e35d1d9b4caf> @ imm = #0x16
    108e: b004         	add	sp, #0x10
    1090: bd80         	pop	{r7, pc}

Disassembly of section .text.<defmt::impls::adapter::Display2Format<T> as defmt::traits::Format>::_format_tag::ha9d6e23e9f3f8597:

00001094 <<defmt::impls::adapter::Display2Format<T> as defmt::traits::Format>::_format_tag::ha9d6e23e9f3f8597>:
    1094: b580         	push	{r7, lr}
    1096: af00         	add	r7, sp, #0x0
    1098: 4801         	ldr	r0, [pc, #0x4]          @ 0x10a0 <<defmt::impls::adapter::Display2Format<T> as defmt::traits::Format>::_format_tag::ha9d6e23e9f3f8597+0xc>
    109a: f001 fe15    	bl	0x2cc8 <defmt::export::make_istr::h2fd57e43a100f582> @ imm = #0x1c2a
    109e: bd80         	pop	{r7, pc}
    10a0: 01 00 00 00  	.word	0x00000001

Disassembly of section .text.<defmt::impls::adapter::Display2Format<T> as defmt::traits::Format>::_format_data::haa55e35d1d9b4caf:

000010a4 <<defmt::impls::adapter::Display2Format<T> as defmt::traits::Format>::_format_data::haa55e35d1d9b4caf>:
    10a4: b580         	push	{r7, lr}
    10a6: af00         	add	r7, sp, #0x0
    10a8: b082         	sub	sp, #0x8
    10aa: 9001         	str	r0, [sp, #0x4]
    10ac: 4902         	ldr	r1, [pc, #0x8]          @ 0x10b8 <<defmt::impls::adapter::Display2Format<T> as defmt::traits::Format>::_format_data::haa55e35d1d9b4caf+0x14>
    10ae: f001 fe25    	bl	0x2cfc <defmt::export::display::h31980a638e969f1e> @ imm = #0x1c4a
    10b2: b002         	add	sp, #0x8
    10b4: bd80         	pop	{r7, pc}
    10b6: 46c0         	mov	r8, r8
    10b8: 04 05 00 00  	.word	0x00000504

Disassembly of section .text.cortex_m::asm::udf::h1689fecab62d0b21:

000010bc <cortex_m::asm::udf::h1689fecab62d0b21>:
    10bc: b580         	push	{r7, lr}
    10be: af00         	add	r7, sp, #0x0
    10c0: f001 ff49    	bl	0x2f56 <__udf>          @ imm = #0x1e92

Disassembly of section .text.cortex_m::interrupt::disable::hc8be860755f56e5c:

000010c4 <cortex_m::interrupt::disable::hc8be860755f56e5c>:
    10c4: b580         	push	{r7, lr}
    10c6: af00         	add	r7, sp, #0x0
    10c8: f001 ff3e    	bl	0x2f48 <__cpsid>        @ imm = #0x1e7c
    10cc: bd80         	pop	{r7, pc}

Disassembly of section .text.rust_begin_unwind:

000010d0 <rust_begin_unwind>:
    10d0: b580         	push	{r7, lr}
    10d2: af00         	add	r7, sp, #0x0
    10d4: b084         	sub	sp, #0x10
    10d6: 9000         	str	r0, [sp]
    10d8: 9003         	str	r0, [sp, #0xc]
    10da: f7ff fff3    	bl	0x10c4 <cortex_m::interrupt::disable::hc8be860755f56e5c> @ imm = #-0x1a
    10de: a901         	add	r1, sp, #0x4
    10e0: 2000         	movs	r0, #0x0
    10e2: 7008         	strb	r0, [r1]
    10e4: 9901         	ldr	r1, [sp, #0x4]
    10e6: 480a         	ldr	r0, [pc, #0x28]         @ 0x1110 <rust_begin_unwind+0x40>
    10e8: f7ff fee0    	bl	0xeac <core::sync::atomic::AtomicBool::load::hd15b0d62d4a81cdd> @ imm = #-0x240
    10ec: 2800         	cmp	r0, #0x0
    10ee: d10c         	bne	0x110a <rust_begin_unwind+0x3a> @ imm = #0x18
    10f0: e7ff         	b	0x10f2 <rust_begin_unwind+0x22> @ imm = #-0x2
    10f2: a902         	add	r1, sp, #0x8
    10f4: 2000         	movs	r0, #0x0
    10f6: 7008         	strb	r0, [r1]
    10f8: 9a02         	ldr	r2, [sp, #0x8]
    10fa: 4805         	ldr	r0, [pc, #0x14]         @ 0x1110 <rust_begin_unwind+0x40>
    10fc: 2101         	movs	r1, #0x1
    10fe: f7ff fee3    	bl	0xec8 <core::sync::atomic::AtomicBool::store::hf5fb161c5c5e1eba> @ imm = #-0x23a
    1102: 9800         	ldr	r0, [sp]
    1104: f000 f80a    	bl	0x111c <panic_probe::print_defmt::print::ha1286c25d9cc4ce4> @ imm = #0x14
    1108: e7ff         	b	0x110a <rust_begin_unwind+0x3a> @ imm = #-0x2
    110a: f000 f803    	bl	0x1114 <panic_probe::hard_fault::he15807cb3d42a87f> @ imm = #0x6
    110e: 46c0         	mov	r8, r8
    1110: e0 41 00 00  	.word	0x000041e0

Disassembly of section .text.panic_probe::hard_fault::he15807cb3d42a87f:

00001114 <panic_probe::hard_fault::he15807cb3d42a87f>:
    1114: b580         	push	{r7, lr}
    1116: af00         	add	r7, sp, #0x0
    1118: f7ff ffd0    	bl	0x10bc <cortex_m::asm::udf::h1689fecab62d0b21> @ imm = #-0x60

Disassembly of section .text.panic_probe::print_defmt::print::ha1286c25d9cc4ce4:

0000111c <panic_probe::print_defmt::print::ha1286c25d9cc4ce4>:
    111c: b580         	push	{r7, lr}
    111e: af00         	add	r7, sp, #0x0
    1120: b086         	sub	sp, #0x18
    1122: 9004         	str	r0, [sp, #0x10]
    1124: 9002         	str	r0, [sp, #0x8]
    1126: a802         	add	r0, sp, #0x8
    1128: 9001         	str	r0, [sp, #0x4]
    112a: 9005         	str	r0, [sp, #0x14]
    112c: 4807         	ldr	r0, [pc, #0x1c]         @ 0x114c <panic_probe::print_defmt::print::ha1286c25d9cc4ce4+0x30>
    112e: f001 fdcb    	bl	0x2cc8 <defmt::export::make_istr::h2fd57e43a100f582> @ imm = #0x1b96
    1132: 4601         	mov	r1, r0
    1134: a803         	add	r0, sp, #0xc
    1136: 8001         	strh	r1, [r0]
    1138: f001 fe0e    	bl	0x2d58 <defmt::export::acquire_and_header::h864b1802f03430a8> @ imm = #0x1c1c
    113c: 9801         	ldr	r0, [sp, #0x4]
    113e: f7ff ff97    	bl	0x1070 <defmt::export::fmt::ha6e9b9304a25239d> @ imm = #-0xd2
    1142: f000 ff2a    	bl	0x1f9a <_defmt_release> @ imm = #0xe54
    1146: b006         	add	sp, #0x18
    1148: bd80         	pop	{r7, pc}
    114a: 46c0         	mov	r8, r8
    114c: 02 00 00 00  	.word	0x00000002

Disassembly of section .text.<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check::hd3aea5ae0de042bc:

00001150 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check::hd3aea5ae0de042bc>:
    1150: b580         	push	{r7, lr}
    1152: af00         	add	r7, sp, #0x0
    1154: b086         	sub	sp, #0x18
    1156: 9201         	str	r2, [sp, #0x4]
    1158: 9102         	str	r1, [sp, #0x8]
    115a: 9003         	str	r0, [sp, #0xc]
    115c: 9104         	str	r1, [sp, #0x10]
    115e: 9205         	str	r2, [sp, #0x14]
    1160: 4281         	cmp	r1, r0
    1162: d204         	bhs	0x116e <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check::hd3aea5ae0de042bc+0x1e> @ imm = #0x8
    1164: e7ff         	b	0x1166 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check::hd3aea5ae0de042bc+0x16> @ imm = #-0x2
    1166: 4805         	ldr	r0, [pc, #0x14]         @ 0x117c <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check::hd3aea5ae0de042bc+0x2c>
    1168: 2161         	movs	r1, #0x61
    116a: f001 ff67    	bl	0x303c <core::panicking::panic_nounwind::h8ba64b62f651a9d5> @ imm = #0x1ece
    116e: 9802         	ldr	r0, [sp, #0x8]
    1170: 9901         	ldr	r1, [sp, #0x4]
    1172: 4288         	cmp	r0, r1
    1174: d8f7         	bhi	0x1166 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check::hd3aea5ae0de042bc+0x16> @ imm = #-0x12
    1176: e7ff         	b	0x1178 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check::hd3aea5ae0de042bc+0x28> @ imm = #-0x2
    1178: b006         	add	sp, #0x18
    117a: bd80         	pop	{r7, pc}
    117c: 14 05 00 00  	.word	0x00000514

Disassembly of section .text.<core::ops::range::RangeFrom<usize> as core::slice::index::SliceIndex<[T]>>::index::h8a2d28303d4607ff:

00001180 <<core::ops::range::RangeFrom<usize> as core::slice::index::SliceIndex<[T]>>::index::h8a2d28303d4607ff>:
    1180: b580         	push	{r7, lr}
    1182: af00         	add	r7, sp, #0x0
    1184: b08c         	sub	sp, #0x30
    1186: 9300         	str	r3, [sp]
    1188: 9201         	str	r2, [sp, #0x4]
    118a: 9102         	str	r1, [sp, #0x8]
    118c: 9003         	str	r0, [sp, #0xc]
    118e: 9004         	str	r0, [sp, #0x10]
    1190: 9105         	str	r1, [sp, #0x14]
    1192: 9206         	str	r2, [sp, #0x18]
    1194: 9007         	str	r0, [sp, #0x1c]
    1196: 9208         	str	r2, [sp, #0x20]
    1198: 4290         	cmp	r0, r2
    119a: d801         	bhi	0x11a0 <<core::ops::range::RangeFrom<usize> as core::slice::index::SliceIndex<[T]>>::index::h8a2d28303d4607ff+0x20> @ imm = #0x2
    119c: e7ff         	b	0x119e <<core::ops::range::RangeFrom<usize> as core::slice::index::SliceIndex<[T]>>::index::h8a2d28303d4607ff+0x1e> @ imm = #-0x2
    119e: e004         	b	0x11aa <<core::ops::range::RangeFrom<usize> as core::slice::index::SliceIndex<[T]>>::index::h8a2d28303d4607ff+0x2a> @ imm = #0x8
    11a0: 9a00         	ldr	r2, [sp]
    11a2: 9901         	ldr	r1, [sp, #0x4]
    11a4: 9803         	ldr	r0, [sp, #0xc]
    11a6: f002 fa53    	bl	0x3650 <core::slice::index::slice_start_index_len_fail::h0143d39f27fb17b8> @ imm = #0x24a6
    11aa: 9a01         	ldr	r2, [sp, #0x4]
    11ac: 9803         	ldr	r0, [sp, #0xc]
    11ae: 4611         	mov	r1, r2
    11b0: f7ff ffce    	bl	0x1150 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked::precondition_check::hd3aea5ae0de042bc> @ imm = #-0x64
    11b4: e7ff         	b	0x11b6 <<core::ops::range::RangeFrom<usize> as core::slice::index::SliceIndex<[T]>>::index::h8a2d28303d4607ff+0x36> @ imm = #-0x2
    11b6: 9802         	ldr	r0, [sp, #0x8]
    11b8: 9a03         	ldr	r2, [sp, #0xc]
    11ba: 9901         	ldr	r1, [sp, #0x4]
    11bc: 1a89         	subs	r1, r1, r2
    11be: 9109         	str	r1, [sp, #0x24]
    11c0: 900a         	str	r0, [sp, #0x28]
    11c2: 1880         	adds	r0, r0, r2
    11c4: 900b         	str	r0, [sp, #0x2c]
    11c6: b00c         	add	sp, #0x30
    11c8: bd80         	pop	{r7, pc}

Disassembly of section .text.core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557:

000011cc <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557>:
    11cc: b5d0         	push	{r4, r6, r7, lr}
    11ce: af02         	add	r7, sp, #0x8
    11d0: b09e         	sub	sp, #0x78
    11d2: 9301         	str	r3, [sp, #0x4]
    11d4: 9202         	str	r2, [sp, #0x8]
    11d6: 9103         	str	r1, [sp, #0xc]
    11d8: 9004         	str	r0, [sp, #0x10]
    11da: 68bc         	ldr	r4, [r7, #0x8]
    11dc: 9405         	str	r4, [sp, #0x14]
    11de: 4c42         	ldr	r4, [pc, #0x108]        @ 0x12e8 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x11c>
    11e0: 9407         	str	r4, [sp, #0x1c]
    11e2: 9408         	str	r4, [sp, #0x20]
    11e4: 9015         	str	r0, [sp, #0x54]
    11e6: 9116         	str	r1, [sp, #0x58]
    11e8: 9217         	str	r2, [sp, #0x5c]
    11ea: 9318         	str	r3, [sp, #0x60]
    11ec: 9019         	str	r0, [sp, #0x64]
    11ee: 4601         	mov	r1, r0
    11f0: 9106         	str	r1, [sp, #0x18]
    11f2: 2800         	cmp	r0, #0x0
    11f4: d101         	bne	0x11fa <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x2e> @ imm = #0x2
    11f6: e7ff         	b	0x11f8 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x2c> @ imm = #-0x2
    11f8: e016         	b	0x1228 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x5c> @ imm = #0x2c
    11fa: 9801         	ldr	r0, [sp, #0x4]
    11fc: 0841         	lsrs	r1, r0, #0x1
    11fe: 4a3b         	ldr	r2, [pc, #0xec]         @ 0x12ec <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x120>
    1200: 4011         	ands	r1, r2
    1202: 1a41         	subs	r1, r0, r1
    1204: 4a3a         	ldr	r2, [pc, #0xe8]         @ 0x12f0 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x124>
    1206: 4608         	mov	r0, r1
    1208: 4010         	ands	r0, r2
    120a: 0889         	lsrs	r1, r1, #0x2
    120c: 4011         	ands	r1, r2
    120e: 1840         	adds	r0, r0, r1
    1210: 0901         	lsrs	r1, r0, #0x4
    1212: 1841         	adds	r1, r0, r1
    1214: 4837         	ldr	r0, [pc, #0xdc]         @ 0x12f4 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x128>
    1216: 4001         	ands	r1, r0
    1218: 4837         	ldr	r0, [pc, #0xdc]         @ 0x12f8 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x12c>
    121a: 4348         	muls	r0, r1, r0
    121c: 0e00         	lsrs	r0, r0, #0x18
    121e: 901a         	str	r0, [sp, #0x68]
    1220: 981a         	ldr	r0, [sp, #0x68]
    1222: 2801         	cmp	r0, #0x1
    1224: d001         	beq	0x122a <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x5e> @ imm = #0x2
    1226: e006         	b	0x1236 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x6a> @ imm = #0xc
    1228: e01e         	b	0x1268 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x9c> @ imm = #0x3c
    122a: 9806         	ldr	r0, [sp, #0x18]
    122c: 9901         	ldr	r1, [sp, #0x4]
    122e: 1e49         	subs	r1, r1, #0x1
    1230: 4208         	tst	r0, r1
    1232: d011         	beq	0x1258 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x8c> @ imm = #0x22
    1234: e7f8         	b	0x1228 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x5c> @ imm = #-0x10
    1236: 482c         	ldr	r0, [pc, #0xb0]         @ 0x12e8 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x11c>
    1238: 9009         	str	r0, [sp, #0x24]
    123a: 2001         	movs	r0, #0x1
    123c: 900a         	str	r0, [sp, #0x28]
    123e: 482f         	ldr	r0, [pc, #0xbc]         @ 0x12fc <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x130>
    1240: 6801         	ldr	r1, [r0]
    1242: 6840         	ldr	r0, [r0, #0x4]
    1244: 910d         	str	r1, [sp, #0x34]
    1246: 900e         	str	r0, [sp, #0x38]
    1248: 2004         	movs	r0, #0x4
    124a: 900b         	str	r0, [sp, #0x2c]
    124c: 2000         	movs	r0, #0x0
    124e: 900c         	str	r0, [sp, #0x30]
    1250: 492b         	ldr	r1, [pc, #0xac]         @ 0x1300 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x134>
    1252: a809         	add	r0, sp, #0x24
    1254: f001 fed0    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x1da0
    1258: 9803         	ldr	r0, [sp, #0xc]
    125a: 901b         	str	r0, [sp, #0x6c]
    125c: 901c         	str	r0, [sp, #0x70]
    125e: 4601         	mov	r1, r0
    1260: 9100         	str	r1, [sp]
    1262: 2800         	cmp	r0, #0x0
    1264: d004         	beq	0x1270 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0xa4> @ imm = #0x8
    1266: e004         	b	0x1272 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0xa6> @ imm = #0x8
    1268: 4826         	ldr	r0, [pc, #0x98]         @ 0x1304 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x138>
    126a: 21a6         	movs	r1, #0xa6
    126c: f001 fee6    	bl	0x303c <core::panicking::panic_nounwind::h8ba64b62f651a9d5> @ imm = #0x1dcc
    1270: e016         	b	0x12a0 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0xd4> @ imm = #0x2c
    1272: 9801         	ldr	r0, [sp, #0x4]
    1274: 0841         	lsrs	r1, r0, #0x1
    1276: 4a1d         	ldr	r2, [pc, #0x74]         @ 0x12ec <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x120>
    1278: 4011         	ands	r1, r2
    127a: 1a41         	subs	r1, r0, r1
    127c: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x12f0 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x124>
    127e: 4608         	mov	r0, r1
    1280: 4010         	ands	r0, r2
    1282: 0889         	lsrs	r1, r1, #0x2
    1284: 4011         	ands	r1, r2
    1286: 1840         	adds	r0, r0, r1
    1288: 0901         	lsrs	r1, r0, #0x4
    128a: 1841         	adds	r1, r0, r1
    128c: 4819         	ldr	r0, [pc, #0x64]         @ 0x12f4 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x128>
    128e: 4001         	ands	r1, r0
    1290: 4819         	ldr	r0, [pc, #0x64]         @ 0x12f8 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x12c>
    1292: 4348         	muls	r0, r1, r0
    1294: 0e00         	lsrs	r0, r0, #0x18
    1296: 901d         	str	r0, [sp, #0x74]
    1298: 981d         	ldr	r0, [sp, #0x74]
    129a: 2801         	cmp	r0, #0x1
    129c: d001         	beq	0x12a2 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0xd6> @ imm = #0x2
    129e: e006         	b	0x12ae <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0xe2> @ imm = #0xc
    12a0: e7e2         	b	0x1268 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x9c> @ imm = #-0x3c
    12a2: 9800         	ldr	r0, [sp]
    12a4: 9901         	ldr	r1, [sp, #0x4]
    12a6: 1e49         	subs	r1, r1, #0x1
    12a8: 4208         	tst	r0, r1
    12aa: d011         	beq	0x12d0 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x104> @ imm = #0x22
    12ac: e7f8         	b	0x12a0 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0xd4> @ imm = #-0x10
    12ae: 480e         	ldr	r0, [pc, #0x38]         @ 0x12e8 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x11c>
    12b0: 900f         	str	r0, [sp, #0x3c]
    12b2: 2001         	movs	r0, #0x1
    12b4: 9010         	str	r0, [sp, #0x40]
    12b6: 4811         	ldr	r0, [pc, #0x44]         @ 0x12fc <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x130>
    12b8: 6801         	ldr	r1, [r0]
    12ba: 6840         	ldr	r0, [r0, #0x4]
    12bc: 9113         	str	r1, [sp, #0x4c]
    12be: 9014         	str	r0, [sp, #0x50]
    12c0: 2004         	movs	r0, #0x4
    12c2: 9011         	str	r0, [sp, #0x44]
    12c4: 2000         	movs	r0, #0x0
    12c6: 9012         	str	r0, [sp, #0x48]
    12c8: 490d         	ldr	r1, [pc, #0x34]         @ 0x1300 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x134>
    12ca: a80f         	add	r0, sp, #0x3c
    12cc: f001 fe94    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x1d28
    12d0: 9b05         	ldr	r3, [sp, #0x14]
    12d2: 9a02         	ldr	r2, [sp, #0x8]
    12d4: 9903         	ldr	r1, [sp, #0xc]
    12d6: 9804         	ldr	r0, [sp, #0x10]
    12d8: f000 fa6e    	bl	0x17b8 <core::ub_checks::is_nonoverlapping::runtime::hdc8e231965a5646f> @ imm = #0x4dc
    12dc: 2800         	cmp	r0, #0x0
    12de: d101         	bne	0x12e4 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x118> @ imm = #0x2
    12e0: e7ff         	b	0x12e2 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x116> @ imm = #-0x2
    12e2: e7c1         	b	0x1268 <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557+0x9c> @ imm = #-0x7e
    12e4: b01e         	add	sp, #0x78
    12e6: bdd0         	pop	{r4, r6, r7, pc}
    12e8: 54 00 00 00  	.word	0x00000054
    12ec: 55 55 55 55  	.word	0x55555555
    12f0: 33 33 33 33  	.word	0x33333333
    12f4: 0f 0f 0f 0f  	.word	0x0f0f0f0f
    12f8: 01 01 01 01  	.word	0x01010101
    12fc: d8 00 00 00  	.word	0x000000d8
    1300: 0c 06 00 00  	.word	0x0000060c
    1304: ec 01 00 00  	.word	0x000001ec

Disassembly of section .text.core::cmp::Ord::min::h6e2a2ba5494fc68a:

00001308 <core::cmp::Ord::min::h6e2a2ba5494fc68a>:
    1308: b580         	push	{r7, lr}
    130a: af00         	add	r7, sp, #0x0
    130c: b082         	sub	sp, #0x8
    130e: 9000         	str	r0, [sp]
    1310: 9101         	str	r1, [sp, #0x4]
    1312: f000 f821    	bl	0x1358 <core::cmp::min_by::hb10c0b62cf6bd1ad> @ imm = #0x42
    1316: b002         	add	sp, #0x8
    1318: bd80         	pop	{r7, pc}

Disassembly of section .text.core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h1bc5d2e0feca3ef8:

0000131a <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h1bc5d2e0feca3ef8>:
    131a: b089         	sub	sp, #0x24
    131c: 9102         	str	r1, [sp, #0x8]
    131e: 4601         	mov	r1, r0
    1320: 9802         	ldr	r0, [sp, #0x8]
    1322: 9107         	str	r1, [sp, #0x1c]
    1324: 9008         	str	r0, [sp, #0x20]
    1326: 6809         	ldr	r1, [r1]
    1328: 9103         	str	r1, [sp, #0xc]
    132a: 6802         	ldr	r2, [r0]
    132c: 9204         	str	r2, [sp, #0x10]
    132e: 2001         	movs	r0, #0x1
    1330: 2300         	movs	r3, #0x0
    1332: 9305         	str	r3, [sp, #0x14]
    1334: 4291         	cmp	r1, r2
    1336: 9006         	str	r0, [sp, #0x18]
    1338: d801         	bhi	0x133e <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h1bc5d2e0feca3ef8+0x24> @ imm = #0x2
    133a: 9805         	ldr	r0, [sp, #0x14]
    133c: 9006         	str	r0, [sp, #0x18]
    133e: 9903         	ldr	r1, [sp, #0xc]
    1340: 9a04         	ldr	r2, [sp, #0x10]
    1342: 9806         	ldr	r0, [sp, #0x18]
    1344: 9000         	str	r0, [sp]
    1346: 1e40         	subs	r0, r0, #0x1
    1348: 4291         	cmp	r1, r2
    134a: 9001         	str	r0, [sp, #0x4]
    134c: d301         	blo	0x1352 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h1bc5d2e0feca3ef8+0x38> @ imm = #0x2
    134e: 9800         	ldr	r0, [sp]
    1350: 9001         	str	r0, [sp, #0x4]
    1352: 9801         	ldr	r0, [sp, #0x4]
    1354: b009         	add	sp, #0x24
    1356: 4770         	bx	lr

Disassembly of section .text.core::cmp::min_by::hb10c0b62cf6bd1ad:

00001358 <core::cmp::min_by::hb10c0b62cf6bd1ad>:
    1358: b580         	push	{r7, lr}
    135a: af00         	add	r7, sp, #0x0
    135c: b086         	sub	sp, #0x18
    135e: 9001         	str	r0, [sp, #0x4]
    1360: 9102         	str	r1, [sp, #0x8]
    1362: a905         	add	r1, sp, #0x14
    1364: 2001         	movs	r0, #0x1
    1366: 7008         	strb	r0, [r1]
    1368: a801         	add	r0, sp, #0x4
    136a: a902         	add	r1, sp, #0x8
    136c: f000 f842    	bl	0x13f4 <core::ops::function::FnOnce::call_once::h5373bd8316914e61> @ imm = #0x84
    1370: 4601         	mov	r1, r0
    1372: a804         	add	r0, sp, #0x10
    1374: 7001         	strb	r1, [r0]
    1376: 7800         	ldrb	r0, [r0]
    1378: 1c40         	adds	r0, r0, #0x1
    137a: b2c0         	uxtb	r0, r0
    137c: 2802         	cmp	r0, #0x2
    137e: d302         	blo	0x1386 <core::cmp::min_by::hb10c0b62cf6bd1ad+0x2e> @ imm = #0x4
    1380: e7ff         	b	0x1382 <core::cmp::min_by::hb10c0b62cf6bd1ad+0x2a> @ imm = #-0x2
    1382: e006         	b	0x1392 <core::cmp::min_by::hb10c0b62cf6bd1ad+0x3a> @ imm = #0xc
    1384: defe         	trap
    1386: a905         	add	r1, sp, #0x14
    1388: 2000         	movs	r0, #0x0
    138a: 7008         	strb	r0, [r1]
    138c: 9801         	ldr	r0, [sp, #0x4]
    138e: 9003         	str	r0, [sp, #0xc]
    1390: e002         	b	0x1398 <core::cmp::min_by::hb10c0b62cf6bd1ad+0x40> @ imm = #0x4
    1392: 9802         	ldr	r0, [sp, #0x8]
    1394: 9003         	str	r0, [sp, #0xc]
    1396: e003         	b	0x13a0 <core::cmp::min_by::hb10c0b62cf6bd1ad+0x48> @ imm = #0x6
    1398: e7ff         	b	0x139a <core::cmp::min_by::hb10c0b62cf6bd1ad+0x42> @ imm = #-0x2
    139a: 9803         	ldr	r0, [sp, #0xc]
    139c: b006         	add	sp, #0x18
    139e: bd80         	pop	{r7, pc}
    13a0: a805         	add	r0, sp, #0x14
    13a2: 7800         	ldrb	r0, [r0]
    13a4: 07c0         	lsls	r0, r0, #0x1f
    13a6: 2800         	cmp	r0, #0x0
    13a8: d0f7         	beq	0x139a <core::cmp::min_by::hb10c0b62cf6bd1ad+0x42> @ imm = #-0x12
    13aa: e7ff         	b	0x13ac <core::cmp::min_by::hb10c0b62cf6bd1ad+0x54> @ imm = #-0x2
    13ac: e7f5         	b	0x139a <core::cmp::min_by::hb10c0b62cf6bd1ad+0x42> @ imm = #-0x16

Disassembly of section .text.core::fmt::Arguments::new_const::hafba7f7d8aaddc01:

000013b0 <core::fmt::Arguments::new_const::hafba7f7d8aaddc01>:
    13b0: b082         	sub	sp, #0x8
    13b2: 9100         	str	r1, [sp]
    13b4: 4601         	mov	r1, r0
    13b6: 9800         	ldr	r0, [sp]
    13b8: 9001         	str	r0, [sp, #0x4]
    13ba: 6008         	str	r0, [r1]
    13bc: 2001         	movs	r0, #0x1
    13be: 6048         	str	r0, [r1, #0x4]
    13c0: 4805         	ldr	r0, [pc, #0x14]         @ 0x13d8 <core::fmt::Arguments::new_const::hafba7f7d8aaddc01+0x28>
    13c2: 6802         	ldr	r2, [r0]
    13c4: 6840         	ldr	r0, [r0, #0x4]
    13c6: 610a         	str	r2, [r1, #0x10]
    13c8: 6148         	str	r0, [r1, #0x14]
    13ca: 2004         	movs	r0, #0x4
    13cc: 6088         	str	r0, [r1, #0x8]
    13ce: 2000         	movs	r0, #0x0
    13d0: 60c8         	str	r0, [r1, #0xc]
    13d2: b002         	add	sp, #0x8
    13d4: 4770         	bx	lr
    13d6: 46c0         	mov	r8, r8
    13d8: d8 00 00 00  	.word	0x000000d8

Disassembly of section .text.core::ops::function::FnMut::call_mut::h276678d7528aa2ea:

000013dc <core::ops::function::FnMut::call_mut::h276678d7528aa2ea>:
    13dc: b580         	push	{r7, lr}
    13de: af00         	add	r7, sp, #0x0
    13e0: b084         	sub	sp, #0x10
    13e2: 9101         	str	r1, [sp, #0x4]
    13e4: 9202         	str	r2, [sp, #0x8]
    13e6: 9003         	str	r0, [sp, #0xc]
    13e8: 9801         	ldr	r0, [sp, #0x4]
    13ea: 9902         	ldr	r1, [sp, #0x8]
    13ec: f000 fdba    	bl	0x1f64 <defmt_rtt::do_write::h7bd2b2be1b232b6e> @ imm = #0xb74
    13f0: b004         	add	sp, #0x10
    13f2: bd80         	pop	{r7, pc}

Disassembly of section .text.core::ops::function::FnOnce::call_once::h5373bd8316914e61:

000013f4 <core::ops::function::FnOnce::call_once::h5373bd8316914e61>:
    13f4: b580         	push	{r7, lr}
    13f6: af00         	add	r7, sp, #0x0
    13f8: b084         	sub	sp, #0x10
    13fa: 9001         	str	r0, [sp, #0x4]
    13fc: 9102         	str	r1, [sp, #0x8]
    13fe: 9801         	ldr	r0, [sp, #0x4]
    1400: 9902         	ldr	r1, [sp, #0x8]
    1402: f7ff ff8a    	bl	0x131a <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h1bc5d2e0feca3ef8> @ imm = #-0xec
    1406: b004         	add	sp, #0x10
    1408: bd80         	pop	{r7, pc}

Disassembly of section .text.core::sync::atomic::AtomicBool::load::hdb631beaf7d2c451:

0000140a <core::sync::atomic::AtomicBool::load::hdb631beaf7d2c451>:
    140a: b580         	push	{r7, lr}
    140c: af00         	add	r7, sp, #0x0
    140e: b084         	sub	sp, #0x10
    1410: 9001         	str	r0, [sp, #0x4]
    1412: aa02         	add	r2, sp, #0x8
    1414: 7011         	strb	r1, [r2]
    1416: 9003         	str	r0, [sp, #0xc]
    1418: f000 f82a    	bl	0x1470 <core::sync::atomic::atomic_load::h3523a0d2c6d48317> @ imm = #0x54
    141c: b2c0         	uxtb	r0, r0
    141e: 1e41         	subs	r1, r0, #0x1
    1420: 4188         	sbcs	r0, r1
    1422: b004         	add	sp, #0x10
    1424: bd80         	pop	{r7, pc}

Disassembly of section .text.core::sync::atomic::AtomicBool::store::h04c12df160047488:

00001426 <core::sync::atomic::AtomicBool::store::h04c12df160047488>:
    1426: b580         	push	{r7, lr}
    1428: af00         	add	r7, sp, #0x0
    142a: b084         	sub	sp, #0x10
    142c: 9000         	str	r0, [sp]
    142e: ab01         	add	r3, sp, #0x4
    1430: 7019         	strb	r1, [r3]
    1432: ab02         	add	r3, sp, #0x8
    1434: 701a         	strb	r2, [r3]
    1436: 9003         	str	r0, [sp, #0xc]
    1438: f000 f8da    	bl	0x15f0 <core::sync::atomic::atomic_store::h8c42a34d334a2d6e> @ imm = #0x1b4
    143c: b004         	add	sp, #0x10
    143e: bd80         	pop	{r7, pc}

Disassembly of section .text.core::sync::atomic::AtomicUsize::load::hdcfa8269c769b4a9:

00001440 <core::sync::atomic::AtomicUsize::load::hdcfa8269c769b4a9>:
    1440: b580         	push	{r7, lr}
    1442: af00         	add	r7, sp, #0x0
    1444: b084         	sub	sp, #0x10
    1446: 9001         	str	r0, [sp, #0x4]
    1448: aa02         	add	r2, sp, #0x8
    144a: 7011         	strb	r1, [r2]
    144c: 9003         	str	r0, [sp, #0xc]
    144e: f000 f871    	bl	0x1534 <core::sync::atomic::atomic_load::h8dabf5c5913374a6> @ imm = #0xe2
    1452: b004         	add	sp, #0x10
    1454: bd80         	pop	{r7, pc}

Disassembly of section .text.core::sync::atomic::AtomicUsize::store::h67cbc931a2d1772b:

00001456 <core::sync::atomic::AtomicUsize::store::h67cbc931a2d1772b>:
    1456: b580         	push	{r7, lr}
    1458: af00         	add	r7, sp, #0x0
    145a: b084         	sub	sp, #0x10
    145c: 9000         	str	r0, [sp]
    145e: 9101         	str	r1, [sp, #0x4]
    1460: ab02         	add	r3, sp, #0x8
    1462: 701a         	strb	r2, [r3]
    1464: 9003         	str	r0, [sp, #0xc]
    1466: f000 f927    	bl	0x16b8 <core::sync::atomic::atomic_store::he91e4115699c43a0> @ imm = #0x24e
    146a: b004         	add	sp, #0x10
    146c: bd80         	pop	{r7, pc}

Disassembly of section .text.core::sync::atomic::atomic_load::h3523a0d2c6d48317:

00001470 <core::sync::atomic::atomic_load::h3523a0d2c6d48317>:
    1470: b580         	push	{r7, lr}
    1472: af00         	add	r7, sp, #0x0
    1474: b094         	sub	sp, #0x50
    1476: 460a         	mov	r2, r1
    1478: 4601         	mov	r1, r0
    147a: 9101         	str	r1, [sp, #0x4]
    147c: 4828         	ldr	r0, [pc, #0xa0]         @ 0x1520 <core::sync::atomic::atomic_load::h3523a0d2c6d48317+0xb0>
    147e: 9003         	str	r0, [sp, #0xc]
    1480: 4828         	ldr	r0, [pc, #0xa0]         @ 0x1524 <core::sync::atomic::atomic_load::h3523a0d2c6d48317+0xb4>
    1482: 9004         	str	r0, [sp, #0x10]
    1484: a805         	add	r0, sp, #0x14
    1486: 7002         	strb	r2, [r0]
    1488: 9113         	str	r1, [sp, #0x4c]
    148a: 7800         	ldrb	r0, [r0]
    148c: 9002         	str	r0, [sp, #0x8]
    148e: 9802         	ldr	r0, [sp, #0x8]
    1490: 0081         	lsls	r1, r0, #0x2
    1492: a001         	adr	r0, #4 <core::sync::atomic::atomic_load::h3523a0d2c6d48317+0x27>
    1494: 5840         	ldr	r0, [r0, r1]
    1496: 4687         	mov	pc, r0
    1498: af 14 00 00  	.word	0x000014af
    149c: b9 14 00 00  	.word	0x000014b9
    14a0: db 14 00 00  	.word	0x000014db
    14a4: e9 14 00 00  	.word	0x000014e9
    14a8: 0b 15 00 00  	.word	0x0000150b
    14ac: defe         	trap
    14ae: 9801         	ldr	r0, [sp, #0x4]
    14b0: 7800         	ldrb	r0, [r0]
    14b2: a906         	add	r1, sp, #0x18
    14b4: 7008         	strb	r0, [r1]
    14b6: e02f         	b	0x1518 <core::sync::atomic::atomic_load::h3523a0d2c6d48317+0xa8> @ imm = #0x5e
    14b8: 481a         	ldr	r0, [pc, #0x68]         @ 0x1524 <core::sync::atomic::atomic_load::h3523a0d2c6d48317+0xb4>
    14ba: 9007         	str	r0, [sp, #0x1c]
    14bc: 2001         	movs	r0, #0x1
    14be: 9008         	str	r0, [sp, #0x20]
    14c0: 4819         	ldr	r0, [pc, #0x64]         @ 0x1528 <core::sync::atomic::atomic_load::h3523a0d2c6d48317+0xb8>
    14c2: 6801         	ldr	r1, [r0]
    14c4: 6840         	ldr	r0, [r0, #0x4]
    14c6: 910b         	str	r1, [sp, #0x2c]
    14c8: 900c         	str	r0, [sp, #0x30]
    14ca: 2004         	movs	r0, #0x4
    14cc: 9009         	str	r0, [sp, #0x24]
    14ce: 2000         	movs	r0, #0x0
    14d0: 900a         	str	r0, [sp, #0x28]
    14d2: 4917         	ldr	r1, [pc, #0x5c]         @ 0x1530 <core::sync::atomic::atomic_load::h3523a0d2c6d48317+0xc0>
    14d4: a807         	add	r0, sp, #0x1c
    14d6: f001 fd8f    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x1b1e
    14da: 9801         	ldr	r0, [sp, #0x4]
    14dc: 7800         	ldrb	r0, [r0]
    14de: f3bf 8f5f    	dmb	sy
    14e2: a906         	add	r1, sp, #0x18
    14e4: 7008         	strb	r0, [r1]
    14e6: e017         	b	0x1518 <core::sync::atomic::atomic_load::h3523a0d2c6d48317+0xa8> @ imm = #0x2e
    14e8: 480d         	ldr	r0, [pc, #0x34]         @ 0x1520 <core::sync::atomic::atomic_load::h3523a0d2c6d48317+0xb0>
    14ea: 900d         	str	r0, [sp, #0x34]
    14ec: 2001         	movs	r0, #0x1
    14ee: 900e         	str	r0, [sp, #0x38]
    14f0: 480d         	ldr	r0, [pc, #0x34]         @ 0x1528 <core::sync::atomic::atomic_load::h3523a0d2c6d48317+0xb8>
    14f2: 6801         	ldr	r1, [r0]
    14f4: 6840         	ldr	r0, [r0, #0x4]
    14f6: 9111         	str	r1, [sp, #0x44]
    14f8: 9012         	str	r0, [sp, #0x48]
    14fa: 2004         	movs	r0, #0x4
    14fc: 900f         	str	r0, [sp, #0x3c]
    14fe: 2000         	movs	r0, #0x0
    1500: 9010         	str	r0, [sp, #0x40]
    1502: 490a         	ldr	r1, [pc, #0x28]         @ 0x152c <core::sync::atomic::atomic_load::h3523a0d2c6d48317+0xbc>
    1504: a80d         	add	r0, sp, #0x34
    1506: f001 fd77    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x1aee
    150a: 9801         	ldr	r0, [sp, #0x4]
    150c: 7800         	ldrb	r0, [r0]
    150e: f3bf 8f5f    	dmb	sy
    1512: a906         	add	r1, sp, #0x18
    1514: 7008         	strb	r0, [r1]
    1516: e7ff         	b	0x1518 <core::sync::atomic::atomic_load::h3523a0d2c6d48317+0xa8> @ imm = #-0x2
    1518: 9806         	ldr	r0, [sp, #0x18]
    151a: b014         	add	sp, #0x50
    151c: bd80         	pop	{r7, pc}
    151e: 46c0         	mov	r8, r8
    1520: 64 01 00 00  	.word	0x00000164
    1524: a0 03 00 00  	.word	0x000003a0
    1528: d8 00 00 00  	.word	0x000000d8
    152c: 3c 04 00 00  	.word	0x0000043c
    1530: c8 04 00 00  	.word	0x000004c8

Disassembly of section .text.core::sync::atomic::atomic_load::h8dabf5c5913374a6:

00001534 <core::sync::atomic::atomic_load::h8dabf5c5913374a6>:
    1534: b580         	push	{r7, lr}
    1536: af00         	add	r7, sp, #0x0
    1538: b094         	sub	sp, #0x50
    153a: 460a         	mov	r2, r1
    153c: 4601         	mov	r1, r0
    153e: 9101         	str	r1, [sp, #0x4]
    1540: 4826         	ldr	r0, [pc, #0x98]         @ 0x15dc <core::sync::atomic::atomic_load::h8dabf5c5913374a6+0xa8>
    1542: 9003         	str	r0, [sp, #0xc]
    1544: 4826         	ldr	r0, [pc, #0x98]         @ 0x15e0 <core::sync::atomic::atomic_load::h8dabf5c5913374a6+0xac>
    1546: 9004         	str	r0, [sp, #0x10]
    1548: a805         	add	r0, sp, #0x14
    154a: 7002         	strb	r2, [r0]
    154c: 9113         	str	r1, [sp, #0x4c]
    154e: 7800         	ldrb	r0, [r0]
    1550: 9002         	str	r0, [sp, #0x8]
    1552: 9802         	ldr	r0, [sp, #0x8]
    1554: 0081         	lsls	r1, r0, #0x2
    1556: a001         	adr	r0, #4 <core::sync::atomic::atomic_load::h8dabf5c5913374a6+0x27>
    1558: 5840         	ldr	r0, [r0, r1]
    155a: 4687         	mov	pc, r0
    155c: 73 15 00 00  	.word	0x00001573
    1560: 7b 15 00 00  	.word	0x0000157b
    1564: 9d 15 00 00  	.word	0x0000159d
    1568: a9 15 00 00  	.word	0x000015a9
    156c: cb 15 00 00  	.word	0x000015cb
    1570: defe         	trap
    1572: 9801         	ldr	r0, [sp, #0x4]
    1574: 6800         	ldr	r0, [r0]
    1576: 9006         	str	r0, [sp, #0x18]
    1578: e02d         	b	0x15d6 <core::sync::atomic::atomic_load::h8dabf5c5913374a6+0xa2> @ imm = #0x5a
    157a: 4819         	ldr	r0, [pc, #0x64]         @ 0x15e0 <core::sync::atomic::atomic_load::h8dabf5c5913374a6+0xac>
    157c: 9007         	str	r0, [sp, #0x1c]
    157e: 2001         	movs	r0, #0x1
    1580: 9008         	str	r0, [sp, #0x20]
    1582: 4818         	ldr	r0, [pc, #0x60]         @ 0x15e4 <core::sync::atomic::atomic_load::h8dabf5c5913374a6+0xb0>
    1584: 6801         	ldr	r1, [r0]
    1586: 6840         	ldr	r0, [r0, #0x4]
    1588: 910b         	str	r1, [sp, #0x2c]
    158a: 900c         	str	r0, [sp, #0x30]
    158c: 2004         	movs	r0, #0x4
    158e: 9009         	str	r0, [sp, #0x24]
    1590: 2000         	movs	r0, #0x0
    1592: 900a         	str	r0, [sp, #0x28]
    1594: 4915         	ldr	r1, [pc, #0x54]         @ 0x15ec <core::sync::atomic::atomic_load::h8dabf5c5913374a6+0xb8>
    1596: a807         	add	r0, sp, #0x1c
    1598: f001 fd2e    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x1a5c
    159c: 9801         	ldr	r0, [sp, #0x4]
    159e: 6800         	ldr	r0, [r0]
    15a0: f3bf 8f5f    	dmb	sy
    15a4: 9006         	str	r0, [sp, #0x18]
    15a6: e016         	b	0x15d6 <core::sync::atomic::atomic_load::h8dabf5c5913374a6+0xa2> @ imm = #0x2c
    15a8: 480c         	ldr	r0, [pc, #0x30]         @ 0x15dc <core::sync::atomic::atomic_load::h8dabf5c5913374a6+0xa8>
    15aa: 900d         	str	r0, [sp, #0x34]
    15ac: 2001         	movs	r0, #0x1
    15ae: 900e         	str	r0, [sp, #0x38]
    15b0: 480c         	ldr	r0, [pc, #0x30]         @ 0x15e4 <core::sync::atomic::atomic_load::h8dabf5c5913374a6+0xb0>
    15b2: 6801         	ldr	r1, [r0]
    15b4: 6840         	ldr	r0, [r0, #0x4]
    15b6: 9111         	str	r1, [sp, #0x44]
    15b8: 9012         	str	r0, [sp, #0x48]
    15ba: 2004         	movs	r0, #0x4
    15bc: 900f         	str	r0, [sp, #0x3c]
    15be: 2000         	movs	r0, #0x0
    15c0: 9010         	str	r0, [sp, #0x40]
    15c2: 4909         	ldr	r1, [pc, #0x24]         @ 0x15e8 <core::sync::atomic::atomic_load::h8dabf5c5913374a6+0xb4>
    15c4: a80d         	add	r0, sp, #0x34
    15c6: f001 fd17    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x1a2e
    15ca: 9801         	ldr	r0, [sp, #0x4]
    15cc: 6800         	ldr	r0, [r0]
    15ce: f3bf 8f5f    	dmb	sy
    15d2: 9006         	str	r0, [sp, #0x18]
    15d4: e7ff         	b	0x15d6 <core::sync::atomic::atomic_load::h8dabf5c5913374a6+0xa2> @ imm = #-0x2
    15d6: 9806         	ldr	r0, [sp, #0x18]
    15d8: b014         	add	sp, #0x50
    15da: bd80         	pop	{r7, pc}
    15dc: 64 01 00 00  	.word	0x00000164
    15e0: a0 03 00 00  	.word	0x000003a0
    15e4: d8 00 00 00  	.word	0x000000d8
    15e8: 3c 04 00 00  	.word	0x0000043c
    15ec: c8 04 00 00  	.word	0x000004c8

Disassembly of section .text.core::sync::atomic::atomic_store::h8c42a34d334a2d6e:

000015f0 <core::sync::atomic::atomic_store::h8c42a34d334a2d6e>:
    15f0: b580         	push	{r7, lr}
    15f2: af00         	add	r7, sp, #0x0
    15f4: b094         	sub	sp, #0x50
    15f6: 4613         	mov	r3, r2
    15f8: 4602         	mov	r2, r0
    15fa: 9200         	str	r2, [sp]
    15fc: 4608         	mov	r0, r1
    15fe: 9001         	str	r0, [sp, #0x4]
    1600: 4828         	ldr	r0, [pc, #0xa0]         @ 0x16a4 <core::sync::atomic::atomic_store::h8c42a34d334a2d6e+0xb4>
    1602: 9003         	str	r0, [sp, #0xc]
    1604: 4828         	ldr	r0, [pc, #0xa0]         @ 0x16a8 <core::sync::atomic::atomic_store::h8c42a34d334a2d6e+0xb8>
    1606: 9004         	str	r0, [sp, #0x10]
    1608: a805         	add	r0, sp, #0x14
    160a: 7003         	strb	r3, [r0]
    160c: 9212         	str	r2, [sp, #0x48]
    160e: aa13         	add	r2, sp, #0x4c
    1610: 7011         	strb	r1, [r2]
    1612: 7800         	ldrb	r0, [r0]
    1614: 9002         	str	r0, [sp, #0x8]
    1616: 9802         	ldr	r0, [sp, #0x8]
    1618: 0081         	lsls	r1, r0, #0x2
    161a: a001         	adr	r0, #4 <core::sync::atomic::atomic_store::h8c42a34d334a2d6e+0x2f>
    161c: 5840         	ldr	r0, [r0, r1]
    161e: 4687         	mov	pc, r0
    1620: 37 16 00 00  	.word	0x00001637
    1624: 3f 16 00 00  	.word	0x0000163f
    1628: 4b 16 00 00  	.word	0x0000164b
    162c: 6d 16 00 00  	.word	0x0000166d
    1630: 8f 16 00 00  	.word	0x0000168f
    1634: defe         	trap
    1636: 9801         	ldr	r0, [sp, #0x4]
    1638: 9900         	ldr	r1, [sp]
    163a: 7008         	strb	r0, [r1]
    163c: e02f         	b	0x169e <core::sync::atomic::atomic_store::h8c42a34d334a2d6e+0xae> @ imm = #0x5e
    163e: 9801         	ldr	r0, [sp, #0x4]
    1640: 9900         	ldr	r1, [sp]
    1642: f3bf 8f5f    	dmb	sy
    1646: 7008         	strb	r0, [r1]
    1648: e029         	b	0x169e <core::sync::atomic::atomic_store::h8c42a34d334a2d6e+0xae> @ imm = #0x52
    164a: 4817         	ldr	r0, [pc, #0x5c]         @ 0x16a8 <core::sync::atomic::atomic_store::h8c42a34d334a2d6e+0xb8>
    164c: 9006         	str	r0, [sp, #0x18]
    164e: 2001         	movs	r0, #0x1
    1650: 9007         	str	r0, [sp, #0x1c]
    1652: 4816         	ldr	r0, [pc, #0x58]         @ 0x16ac <core::sync::atomic::atomic_store::h8c42a34d334a2d6e+0xbc>
    1654: 6801         	ldr	r1, [r0]
    1656: 6840         	ldr	r0, [r0, #0x4]
    1658: 910a         	str	r1, [sp, #0x28]
    165a: 900b         	str	r0, [sp, #0x2c]
    165c: 2004         	movs	r0, #0x4
    165e: 9008         	str	r0, [sp, #0x20]
    1660: 2000         	movs	r0, #0x0
    1662: 9009         	str	r0, [sp, #0x24]
    1664: 4913         	ldr	r1, [pc, #0x4c]         @ 0x16b4 <core::sync::atomic::atomic_store::h8c42a34d334a2d6e+0xc4>
    1666: a806         	add	r0, sp, #0x18
    1668: f001 fcc6    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x198c
    166c: 480d         	ldr	r0, [pc, #0x34]         @ 0x16a4 <core::sync::atomic::atomic_store::h8c42a34d334a2d6e+0xb4>
    166e: 900c         	str	r0, [sp, #0x30]
    1670: 2001         	movs	r0, #0x1
    1672: 900d         	str	r0, [sp, #0x34]
    1674: 480d         	ldr	r0, [pc, #0x34]         @ 0x16ac <core::sync::atomic::atomic_store::h8c42a34d334a2d6e+0xbc>
    1676: 6801         	ldr	r1, [r0]
    1678: 6840         	ldr	r0, [r0, #0x4]
    167a: 9110         	str	r1, [sp, #0x40]
    167c: 9011         	str	r0, [sp, #0x44]
    167e: 2004         	movs	r0, #0x4
    1680: 900e         	str	r0, [sp, #0x38]
    1682: 2000         	movs	r0, #0x0
    1684: 900f         	str	r0, [sp, #0x3c]
    1686: 490a         	ldr	r1, [pc, #0x28]         @ 0x16b0 <core::sync::atomic::atomic_store::h8c42a34d334a2d6e+0xc0>
    1688: a80c         	add	r0, sp, #0x30
    168a: f001 fcb5    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x196a
    168e: 9801         	ldr	r0, [sp, #0x4]
    1690: 9900         	ldr	r1, [sp]
    1692: f3bf 8f5f    	dmb	sy
    1696: 7008         	strb	r0, [r1]
    1698: f3bf 8f5f    	dmb	sy
    169c: e7ff         	b	0x169e <core::sync::atomic::atomic_store::h8c42a34d334a2d6e+0xae> @ imm = #-0x2
    169e: b014         	add	sp, #0x50
    16a0: bd80         	pop	{r7, pc}
    16a2: 46c0         	mov	r8, r8
    16a4: 5c 04 00 00  	.word	0x0000045c
    16a8: 44 00 00 00  	.word	0x00000044
    16ac: d8 00 00 00  	.word	0x000000d8
    16b0: 8c 00 00 00  	.word	0x0000008c
    16b4: 30 01 00 00  	.word	0x00000130

Disassembly of section .text.core::sync::atomic::atomic_store::he91e4115699c43a0:

000016b8 <core::sync::atomic::atomic_store::he91e4115699c43a0>:
    16b8: b580         	push	{r7, lr}
    16ba: af00         	add	r7, sp, #0x0
    16bc: b094         	sub	sp, #0x50
    16be: 4613         	mov	r3, r2
    16c0: 9100         	str	r1, [sp]
    16c2: 4602         	mov	r2, r0
    16c4: 9201         	str	r2, [sp, #0x4]
    16c6: 4828         	ldr	r0, [pc, #0xa0]         @ 0x1768 <core::sync::atomic::atomic_store::he91e4115699c43a0+0xb0>
    16c8: 9003         	str	r0, [sp, #0xc]
    16ca: 4828         	ldr	r0, [pc, #0xa0]         @ 0x176c <core::sync::atomic::atomic_store::he91e4115699c43a0+0xb4>
    16cc: 9004         	str	r0, [sp, #0x10]
    16ce: a805         	add	r0, sp, #0x14
    16d0: 7003         	strb	r3, [r0]
    16d2: 9212         	str	r2, [sp, #0x48]
    16d4: 9113         	str	r1, [sp, #0x4c]
    16d6: 7800         	ldrb	r0, [r0]
    16d8: 9002         	str	r0, [sp, #0x8]
    16da: 9802         	ldr	r0, [sp, #0x8]
    16dc: 0081         	lsls	r1, r0, #0x2
    16de: a001         	adr	r0, #4 <core::sync::atomic::atomic_store::he91e4115699c43a0+0x2b>
    16e0: 5840         	ldr	r0, [r0, r1]
    16e2: 4687         	mov	pc, r0
    16e4: fb 16 00 00  	.word	0x000016fb
    16e8: 03 17 00 00  	.word	0x00001703
    16ec: 0f 17 00 00  	.word	0x0000170f
    16f0: 31 17 00 00  	.word	0x00001731
    16f4: 53 17 00 00  	.word	0x00001753
    16f8: defe         	trap
    16fa: 9800         	ldr	r0, [sp]
    16fc: 9901         	ldr	r1, [sp, #0x4]
    16fe: 6008         	str	r0, [r1]
    1700: e02f         	b	0x1762 <core::sync::atomic::atomic_store::he91e4115699c43a0+0xaa> @ imm = #0x5e
    1702: 9800         	ldr	r0, [sp]
    1704: 9901         	ldr	r1, [sp, #0x4]
    1706: f3bf 8f5f    	dmb	sy
    170a: 6008         	str	r0, [r1]
    170c: e029         	b	0x1762 <core::sync::atomic::atomic_store::he91e4115699c43a0+0xaa> @ imm = #0x52
    170e: 4817         	ldr	r0, [pc, #0x5c]         @ 0x176c <core::sync::atomic::atomic_store::he91e4115699c43a0+0xb4>
    1710: 9006         	str	r0, [sp, #0x18]
    1712: 2001         	movs	r0, #0x1
    1714: 9007         	str	r0, [sp, #0x1c]
    1716: 4816         	ldr	r0, [pc, #0x58]         @ 0x1770 <core::sync::atomic::atomic_store::he91e4115699c43a0+0xb8>
    1718: 6801         	ldr	r1, [r0]
    171a: 6840         	ldr	r0, [r0, #0x4]
    171c: 910a         	str	r1, [sp, #0x28]
    171e: 900b         	str	r0, [sp, #0x2c]
    1720: 2004         	movs	r0, #0x4
    1722: 9008         	str	r0, [sp, #0x20]
    1724: 2000         	movs	r0, #0x0
    1726: 9009         	str	r0, [sp, #0x24]
    1728: 4913         	ldr	r1, [pc, #0x4c]         @ 0x1778 <core::sync::atomic::atomic_store::he91e4115699c43a0+0xc0>
    172a: a806         	add	r0, sp, #0x18
    172c: f001 fc64    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x18c8
    1730: 480d         	ldr	r0, [pc, #0x34]         @ 0x1768 <core::sync::atomic::atomic_store::he91e4115699c43a0+0xb0>
    1732: 900c         	str	r0, [sp, #0x30]
    1734: 2001         	movs	r0, #0x1
    1736: 900d         	str	r0, [sp, #0x34]
    1738: 480d         	ldr	r0, [pc, #0x34]         @ 0x1770 <core::sync::atomic::atomic_store::he91e4115699c43a0+0xb8>
    173a: 6801         	ldr	r1, [r0]
    173c: 6840         	ldr	r0, [r0, #0x4]
    173e: 9110         	str	r1, [sp, #0x40]
    1740: 9011         	str	r0, [sp, #0x44]
    1742: 2004         	movs	r0, #0x4
    1744: 900e         	str	r0, [sp, #0x38]
    1746: 2000         	movs	r0, #0x0
    1748: 900f         	str	r0, [sp, #0x3c]
    174a: 490a         	ldr	r1, [pc, #0x28]         @ 0x1774 <core::sync::atomic::atomic_store::he91e4115699c43a0+0xbc>
    174c: a80c         	add	r0, sp, #0x30
    174e: f001 fc53    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x18a6
    1752: 9800         	ldr	r0, [sp]
    1754: 9901         	ldr	r1, [sp, #0x4]
    1756: f3bf 8f5f    	dmb	sy
    175a: 6008         	str	r0, [r1]
    175c: f3bf 8f5f    	dmb	sy
    1760: e7ff         	b	0x1762 <core::sync::atomic::atomic_store::he91e4115699c43a0+0xaa> @ imm = #-0x2
    1762: b014         	add	sp, #0x50
    1764: bd80         	pop	{r7, pc}
    1766: 46c0         	mov	r8, r8
    1768: 5c 04 00 00  	.word	0x0000045c
    176c: 44 00 00 00  	.word	0x00000044
    1770: d8 00 00 00  	.word	0x000000d8
    1774: 8c 00 00 00  	.word	0x0000008c
    1778: 30 01 00 00  	.word	0x00000130

Disassembly of section .text.core::slice::<impl [T]>::is_empty::hbf215d7374d12255:

0000177c <core::slice::<impl [T]>::is_empty::hbf215d7374d12255>:
    177c: b083         	sub	sp, #0xc
    177e: 9100         	str	r1, [sp]
    1780: 4601         	mov	r1, r0
    1782: 9800         	ldr	r0, [sp]
    1784: 9101         	str	r1, [sp, #0x4]
    1786: 9002         	str	r0, [sp, #0x8]
    1788: 4241         	rsbs	r1, r0, #0
    178a: 4148         	adcs	r0, r1
    178c: b003         	add	sp, #0xc
    178e: 4770         	bx	lr

Disassembly of section .text.core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter::h1d585bc94866e7af:

00001790 <core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter::h1d585bc94866e7af>:
    1790: b08a         	sub	sp, #0x28
    1792: 9100         	str	r1, [sp]
    1794: 9001         	str	r0, [sp, #0x4]
    1796: 9003         	str	r0, [sp, #0xc]
    1798: 9104         	str	r1, [sp, #0x10]
    179a: 9105         	str	r1, [sp, #0x14]
    179c: 9006         	str	r0, [sp, #0x18]
    179e: 9107         	str	r1, [sp, #0x1c]
    17a0: 9008         	str	r0, [sp, #0x20]
    17a2: e7ff         	b	0x17a4 <core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter::h1d585bc94866e7af+0x14> @ imm = #-0x2
    17a4: 9801         	ldr	r0, [sp, #0x4]
    17a6: 9900         	ldr	r1, [sp]
    17a8: 9009         	str	r0, [sp, #0x24]
    17aa: 1840         	adds	r0, r0, r1
    17ac: 9002         	str	r0, [sp, #0x8]
    17ae: e7ff         	b	0x17b0 <core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter::h1d585bc94866e7af+0x20> @ imm = #-0x2
    17b0: 9801         	ldr	r0, [sp, #0x4]
    17b2: 9902         	ldr	r1, [sp, #0x8]
    17b4: b00a         	add	sp, #0x28
    17b6: 4770         	bx	lr

Disassembly of section .text.core::ub_checks::is_nonoverlapping::runtime::hdc8e231965a5646f:

000017b8 <core::ub_checks::is_nonoverlapping::runtime::hdc8e231965a5646f>:
    17b8: b5d0         	push	{r4, r6, r7, lr}
    17ba: af02         	add	r7, sp, #0x8
    17bc: b096         	sub	sp, #0x58
    17be: 9303         	str	r3, [sp, #0xc]
    17c0: 4613         	mov	r3, r2
    17c2: 9a03         	ldr	r2, [sp, #0xc]
    17c4: 9304         	str	r3, [sp, #0x10]
    17c6: 4603         	mov	r3, r0
    17c8: 9804         	ldr	r0, [sp, #0x10]
    17ca: 930b         	str	r3, [sp, #0x2c]
    17cc: 910c         	str	r1, [sp, #0x30]
    17ce: 900d         	str	r0, [sp, #0x34]
    17d0: 920e         	str	r2, [sp, #0x38]
    17d2: 461c         	mov	r4, r3
    17d4: 9405         	str	r4, [sp, #0x14]
    17d6: 930f         	str	r3, [sp, #0x3c]
    17d8: 460b         	mov	r3, r1
    17da: 9306         	str	r3, [sp, #0x18]
    17dc: 9110         	str	r1, [sp, #0x40]
    17de: 2300         	movs	r3, #0x0
    17e0: 4619         	mov	r1, r3
    17e2: f002 fabf    	bl	0x3d64 <__aeabi_lmul>   @ imm = #0x257e
    17e6: 1e4a         	subs	r2, r1, #0x1
    17e8: 4191         	sbcs	r1, r2
    17ea: 4602         	mov	r2, r0
    17ec: 9207         	str	r2, [sp, #0x1c]
    17ee: 9011         	str	r0, [sp, #0x44]
    17f0: aa12         	add	r2, sp, #0x48
    17f2: 7011         	strb	r1, [r2]
    17f4: 9013         	str	r0, [sp, #0x4c]
    17f6: a814         	add	r0, sp, #0x50
    17f8: 7001         	strb	r1, [r0]
    17fa: 7800         	ldrb	r0, [r0]
    17fc: 07c0         	lsls	r0, r0, #0x1f
    17fe: 2800         	cmp	r0, #0x0
    1800: d10c         	bne	0x181c <core::ub_checks::is_nonoverlapping::runtime::hdc8e231965a5646f+0x64> @ imm = #0x18
    1802: e7ff         	b	0x1804 <core::ub_checks::is_nonoverlapping::runtime::hdc8e231965a5646f+0x4c> @ imm = #-0x2
    1804: 9805         	ldr	r0, [sp, #0x14]
    1806: 9906         	ldr	r1, [sp, #0x18]
    1808: 9a07         	ldr	r2, [sp, #0x1c]
    180a: 9209         	str	r2, [sp, #0x24]
    180c: 2201         	movs	r2, #0x1
    180e: 9208         	str	r2, [sp, #0x20]
    1810: 9a09         	ldr	r2, [sp, #0x24]
    1812: 9202         	str	r2, [sp, #0x8]
    1814: 9215         	str	r2, [sp, #0x54]
    1816: 4288         	cmp	r0, r1
    1818: d309         	blo	0x182e <core::ub_checks::is_nonoverlapping::runtime::hdc8e231965a5646f+0x76> @ imm = #0x12
    181a: e003         	b	0x1824 <core::ub_checks::is_nonoverlapping::runtime::hdc8e231965a5646f+0x6c> @ imm = #0x6
    181c: 480d         	ldr	r0, [pc, #0x34]         @ 0x1854 <core::ub_checks::is_nonoverlapping::runtime::hdc8e231965a5646f+0x9c>
    181e: 213d         	movs	r1, #0x3d
    1820: f001 fc0c    	bl	0x303c <core::panicking::panic_nounwind::h8ba64b62f651a9d5> @ imm = #0x1818
    1824: 9805         	ldr	r0, [sp, #0x14]
    1826: 9906         	ldr	r1, [sp, #0x18]
    1828: 1a40         	subs	r0, r0, r1
    182a: 900a         	str	r0, [sp, #0x28]
    182c: e004         	b	0x1838 <core::ub_checks::is_nonoverlapping::runtime::hdc8e231965a5646f+0x80> @ imm = #0x8
    182e: 9806         	ldr	r0, [sp, #0x18]
    1830: 9905         	ldr	r1, [sp, #0x14]
    1832: 1a40         	subs	r0, r0, r1
    1834: 900a         	str	r0, [sp, #0x28]
    1836: e7ff         	b	0x1838 <core::ub_checks::is_nonoverlapping::runtime::hdc8e231965a5646f+0x80> @ imm = #-0x2
    1838: 9a02         	ldr	r2, [sp, #0x8]
    183a: 990a         	ldr	r1, [sp, #0x28]
    183c: 2001         	movs	r0, #0x1
    183e: 2300         	movs	r3, #0x0
    1840: 9300         	str	r3, [sp]
    1842: 4291         	cmp	r1, r2
    1844: 9001         	str	r0, [sp, #0x4]
    1846: d201         	bhs	0x184c <core::ub_checks::is_nonoverlapping::runtime::hdc8e231965a5646f+0x94> @ imm = #0x2
    1848: 9800         	ldr	r0, [sp]
    184a: 9001         	str	r0, [sp, #0x4]
    184c: 9801         	ldr	r0, [sp, #0x4]
    184e: b016         	add	sp, #0x58
    1850: bdd0         	pop	{r4, r6, r7, pc}
    1852: 46c0         	mov	r8, r8
    1854: 44 03 00 00  	.word	0x00000344

Disassembly of section .text.defmt::encoding::inner::Encoder::start_frame::hb04d859259104e44:

00001858 <defmt::encoding::inner::Encoder::start_frame::hb04d859259104e44>:
    1858: b580         	push	{r7, lr}
    185a: af00         	add	r7, sp, #0x0
    185c: b084         	sub	sp, #0x10
    185e: 9000         	str	r0, [sp]
    1860: 9002         	str	r0, [sp, #0x8]
    1862: 7800         	ldrb	r0, [r0]
    1864: 07c0         	lsls	r0, r0, #0x1f
    1866: 2800         	cmp	r0, #0x0
    1868: d108         	bne	0x187c <defmt::encoding::inner::Encoder::start_frame::hb04d859259104e44+0x24> @ imm = #0x10
    186a: e7ff         	b	0x186c <defmt::encoding::inner::Encoder::start_frame::hb04d859259104e44+0x14> @ imm = #-0x2
    186c: 9900         	ldr	r1, [sp]
    186e: 2001         	movs	r0, #0x1
    1870: 7008         	strb	r0, [r1]
    1872: a801         	add	r0, sp, #0x4
    1874: 2100         	movs	r1, #0x0
    1876: f000 f803    	bl	0x1880 <defmt::encoding::inner::Encoder::start_frame::{{closure}}::hef22d642a8319bf0> @ imm = #0x6
    187a: e7ff         	b	0x187c <defmt::encoding::inner::Encoder::start_frame::hb04d859259104e44+0x24> @ imm = #-0x2
    187c: b004         	add	sp, #0x10
    187e: bd80         	pop	{r7, pc}

Disassembly of section .text.defmt::encoding::inner::Encoder::start_frame::{{closure}}::hef22d642a8319bf0:

00001880 <defmt::encoding::inner::Encoder::start_frame::{{closure}}::hef22d642a8319bf0>:
    1880: b580         	push	{r7, lr}
    1882: af00         	add	r7, sp, #0x0
    1884: b084         	sub	sp, #0x10
    1886: 460a         	mov	r2, r1
    1888: 9002         	str	r0, [sp, #0x8]
    188a: a903         	add	r1, sp, #0xc
    188c: 700a         	strb	r2, [r1]
    188e: a901         	add	r1, sp, #0x4
    1890: 700a         	strb	r2, [r1]
    1892: 2201         	movs	r2, #0x1
    1894: f7ff fda2    	bl	0x13dc <core::ops::function::FnMut::call_mut::h276678d7528aa2ea> @ imm = #-0x4bc
    1898: b004         	add	sp, #0x10
    189a: bd80         	pop	{r7, pc}

Disassembly of section .text.defmt::encoding::inner::Encoder::write::had42fcfea7d24b57:

0000189c <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57>:
    189c: b580         	push	{r7, lr}
    189e: af00         	add	r7, sp, #0x0
    18a0: b092         	sub	sp, #0x48
    18a2: 9206         	str	r2, [sp, #0x18]
    18a4: 460a         	mov	r2, r1
    18a6: 9906         	ldr	r1, [sp, #0x18]
    18a8: 9207         	str	r2, [sp, #0x1c]
    18aa: 4602         	mov	r2, r0
    18ac: 9807         	ldr	r0, [sp, #0x1c]
    18ae: 9208         	str	r2, [sp, #0x20]
    18b0: 920d         	str	r2, [sp, #0x34]
    18b2: 900e         	str	r0, [sp, #0x38]
    18b4: 910f         	str	r1, [sp, #0x3c]
    18b6: f7ff ff6b    	bl	0x1790 <core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter::h1d585bc94866e7af> @ imm = #-0x12a
    18ba: 900a         	str	r0, [sp, #0x28]
    18bc: 910b         	str	r1, [sp, #0x2c]
    18be: e7ff         	b	0x18c0 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x24> @ imm = #-0x2
    18c0: a80a         	add	r0, sp, #0x28
    18c2: f000 f915    	bl	0x1af0 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h6deeeef55ee7c891> @ imm = #0x22a
    18c6: 900c         	str	r0, [sp, #0x30]
    18c8: 980c         	ldr	r0, [sp, #0x30]
    18ca: 2800         	cmp	r0, #0x0
    18cc: d102         	bne	0x18d4 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x38> @ imm = #0x4
    18ce: e7ff         	b	0x18d0 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x34> @ imm = #-0x2
    18d0: b012         	add	sp, #0x48
    18d2: bd80         	pop	{r7, pc}
    18d4: 9808         	ldr	r0, [sp, #0x20]
    18d6: 990c         	ldr	r1, [sp, #0x30]
    18d8: 7809         	ldrb	r1, [r1]
    18da: 9105         	str	r1, [sp, #0x14]
    18dc: aa11         	add	r2, sp, #0x44
    18de: 7011         	strb	r1, [r2]
    18e0: 7840         	ldrb	r0, [r0, #0x1]
    18e2: 2807         	cmp	r0, #0x7
    18e4: d305         	blo	0x18f2 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x56> @ imm = #0xa
    18e6: e7ff         	b	0x18e8 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x4c> @ imm = #-0x2
    18e8: 9805         	ldr	r0, [sp, #0x14]
    18ea: 0600         	lsls	r0, r0, #0x18
    18ec: 2800         	cmp	r0, #0x0
    18ee: d005         	beq	0x18fc <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x60> @ imm = #0xa
    18f0: e00b         	b	0x190a <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x6e> @ imm = #0x16
    18f2: 9805         	ldr	r0, [sp, #0x14]
    18f4: 0600         	lsls	r0, r0, #0x18
    18f6: 2800         	cmp	r0, #0x0
    18f8: d035         	beq	0x1966 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0xca> @ imm = #0x6a
    18fa: e03a         	b	0x1972 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0xd6> @ imm = #0x74
    18fc: 9808         	ldr	r0, [sp, #0x20]
    18fe: 7840         	ldrb	r0, [r0, #0x1]
    1900: 1fc1         	subs	r1, r0, #0x7
    1902: 9104         	str	r1, [sp, #0x10]
    1904: 2807         	cmp	r0, #0x7
    1906: d318         	blo	0x193a <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x9e> @ imm = #0x30
    1908: e00b         	b	0x1922 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x86> @ imm = #0x16
    190a: 9905         	ldr	r1, [sp, #0x14]
    190c: a809         	add	r0, sp, #0x24
    190e: f000 f86b    	bl	0x19e8 <defmt::encoding::inner::Encoder::write::{{closure}}::h4237aaecf49daef8> @ imm = #0xd6
    1912: 9808         	ldr	r0, [sp, #0x20]
    1914: 7840         	ldrb	r0, [r0, #0x1]
    1916: 1c41         	adds	r1, r0, #0x1
    1918: 9103         	str	r1, [sp, #0xc]
    191a: b2c8         	uxtb	r0, r1
    191c: 4288         	cmp	r0, r1
    191e: d116         	bne	0x194e <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0xb2> @ imm = #0x2c
    1920: e00e         	b	0x1940 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0xa4> @ imm = #0x1c
    1922: 9904         	ldr	r1, [sp, #0x10]
    1924: 207f         	movs	r0, #0x7f
    1926: 43c0         	mvns	r0, r0
    1928: 4301         	orrs	r1, r0
    192a: a809         	add	r0, sp, #0x24
    192c: f000 f85c    	bl	0x19e8 <defmt::encoding::inner::Encoder::write::{{closure}}::h4237aaecf49daef8> @ imm = #0xb8
    1930: 9908         	ldr	r1, [sp, #0x20]
    1932: 2000         	movs	r0, #0x0
    1934: 7048         	strb	r0, [r1, #0x1]
    1936: 7088         	strb	r0, [r1, #0x2]
    1938: e7c2         	b	0x18c0 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x24> @ imm = #-0x7c
    193a: 4828         	ldr	r0, [pc, #0xa0]         @ 0x19dc <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x140>
    193c: f002 f92e    	bl	0x3b9c <core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0> @ imm = #0x225c
    1940: 9808         	ldr	r0, [sp, #0x20]
    1942: 9903         	ldr	r1, [sp, #0xc]
    1944: 7041         	strb	r1, [r0, #0x1]
    1946: 7840         	ldrb	r0, [r0, #0x1]
    1948: 2886         	cmp	r0, #0x86
    194a: d003         	beq	0x1954 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0xb8> @ imm = #0x6
    194c: e7b8         	b	0x18c0 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x24> @ imm = #-0x90
    194e: 4822         	ldr	r0, [pc, #0x88]         @ 0x19d8 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x13c>
    1950: f002 f912    	bl	0x3b78 <core::panicking::panic_const::panic_const_add_overflow::hf5cb0614de41d6eb> @ imm = #0x2224
    1954: a809         	add	r0, sp, #0x24
    1956: 21ff         	movs	r1, #0xff
    1958: f000 f846    	bl	0x19e8 <defmt::encoding::inner::Encoder::write::{{closure}}::h4237aaecf49daef8> @ imm = #0x8c
    195c: 9908         	ldr	r1, [sp, #0x20]
    195e: 2000         	movs	r0, #0x0
    1960: 7048         	strb	r0, [r1, #0x1]
    1962: 7088         	strb	r0, [r1, #0x2]
    1964: e7ac         	b	0x18c0 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x24> @ imm = #-0xa8
    1966: 9808         	ldr	r0, [sp, #0x20]
    1968: 7840         	ldrb	r0, [r0, #0x1]
    196a: 9002         	str	r0, [sp, #0x8]
    196c: 2808         	cmp	r0, #0x8
    196e: d305         	blo	0x197c <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0xe0> @ imm = #0xa
    1970: e00e         	b	0x1990 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0xf4> @ imm = #0x1c
    1972: 9905         	ldr	r1, [sp, #0x14]
    1974: a809         	add	r0, sp, #0x24
    1976: f000 f837    	bl	0x19e8 <defmt::encoding::inner::Encoder::write::{{closure}}::h4237aaecf49daef8> @ imm = #0x6e
    197a: e00c         	b	0x1996 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0xfa> @ imm = #0x18
    197c: 9908         	ldr	r1, [sp, #0x20]
    197e: 9802         	ldr	r0, [sp, #0x8]
    1980: 2207         	movs	r2, #0x7
    1982: 4010         	ands	r0, r2
    1984: 2201         	movs	r2, #0x1
    1986: 4082         	lsls	r2, r0
    1988: 7888         	ldrb	r0, [r1, #0x2]
    198a: 4310         	orrs	r0, r2
    198c: 7088         	strb	r0, [r1, #0x2]
    198e: e002         	b	0x1996 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0xfa> @ imm = #0x4
    1990: 4813         	ldr	r0, [pc, #0x4c]         @ 0x19e0 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x144>
    1992: f002 f915    	bl	0x3bc0 <core::panicking::panic_const::panic_const_shl_overflow::h8a4a13f35df0c52c> @ imm = #0x222a
    1996: 9808         	ldr	r0, [sp, #0x20]
    1998: 7840         	ldrb	r0, [r0, #0x1]
    199a: 1c41         	adds	r1, r0, #0x1
    199c: 9101         	str	r1, [sp, #0x4]
    199e: b2c8         	uxtb	r0, r1
    19a0: 4288         	cmp	r0, r1
    19a2: d107         	bne	0x19b4 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x118> @ imm = #0xe
    19a4: e7ff         	b	0x19a6 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x10a> @ imm = #-0x2
    19a6: 9808         	ldr	r0, [sp, #0x20]
    19a8: 9901         	ldr	r1, [sp, #0x4]
    19aa: 7041         	strb	r1, [r0, #0x1]
    19ac: 7840         	ldrb	r0, [r0, #0x1]
    19ae: 2807         	cmp	r0, #0x7
    19b0: d003         	beq	0x19ba <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x11e> @ imm = #0x6
    19b2: e785         	b	0x18c0 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x24> @ imm = #-0xf6
    19b4: 480b         	ldr	r0, [pc, #0x2c]         @ 0x19e4 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x148>
    19b6: f002 f8df    	bl	0x3b78 <core::panicking::panic_const::panic_const_add_overflow::hf5cb0614de41d6eb> @ imm = #0x21be
    19ba: 9808         	ldr	r0, [sp, #0x20]
    19bc: 7880         	ldrb	r0, [r0, #0x2]
    19be: 2800         	cmp	r0, #0x0
    19c0: d100         	bne	0x19c4 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x128> @ imm = #0x0
    19c2: e77d         	b	0x18c0 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x24> @ imm = #-0x106
    19c4: 9808         	ldr	r0, [sp, #0x20]
    19c6: 7881         	ldrb	r1, [r0, #0x2]
    19c8: a809         	add	r0, sp, #0x24
    19ca: f000 f80d    	bl	0x19e8 <defmt::encoding::inner::Encoder::write::{{closure}}::h4237aaecf49daef8> @ imm = #0x1a
    19ce: 9908         	ldr	r1, [sp, #0x20]
    19d0: 2000         	movs	r0, #0x0
    19d2: 7048         	strb	r0, [r1, #0x1]
    19d4: 7088         	strb	r0, [r1, #0x2]
    19d6: e773         	b	0x18c0 <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57+0x24> @ imm = #-0x11a
    19d8: d4 03 00 00  	.word	0x000003d4
    19dc: a4 07 00 00  	.word	0x000007a4
    19e0: bc 07 00 00  	.word	0x000007bc
    19e4: d4 07 00 00  	.word	0x000007d4

Disassembly of section .text.defmt::encoding::inner::Encoder::write::{{closure}}::h4237aaecf49daef8:

000019e8 <defmt::encoding::inner::Encoder::write::{{closure}}::h4237aaecf49daef8>:
    19e8: b580         	push	{r7, lr}
    19ea: af00         	add	r7, sp, #0x0
    19ec: b084         	sub	sp, #0x10
    19ee: 460a         	mov	r2, r1
    19f0: 9002         	str	r0, [sp, #0x8]
    19f2: a903         	add	r1, sp, #0xc
    19f4: 700a         	strb	r2, [r1]
    19f6: a901         	add	r1, sp, #0x4
    19f8: 700a         	strb	r2, [r1]
    19fa: 2201         	movs	r2, #0x1
    19fc: f7ff fcee    	bl	0x13dc <core::ops::function::FnMut::call_mut::h276678d7528aa2ea> @ imm = #-0x624
    1a00: b004         	add	sp, #0x10
    1a02: bd80         	pop	{r7, pc}

Disassembly of section .text.defmt::encoding::inner::Encoder::end_frame::h306fbc2405184cc5:

00001a04 <defmt::encoding::inner::Encoder::end_frame::h306fbc2405184cc5>:
    1a04: b580         	push	{r7, lr}
    1a06: af00         	add	r7, sp, #0x0
    1a08: b088         	sub	sp, #0x20
    1a0a: 9004         	str	r0, [sp, #0x10]
    1a0c: 9006         	str	r0, [sp, #0x18]
    1a0e: 7840         	ldrb	r0, [r0, #0x1]
    1a10: 2800         	cmp	r0, #0x0
    1a12: d10b         	bne	0x1a2c <defmt::encoding::inner::Encoder::end_frame::h306fbc2405184cc5+0x28> @ imm = #0x16
    1a14: e7ff         	b	0x1a16 <defmt::encoding::inner::Encoder::end_frame::h306fbc2405184cc5+0x12> @ imm = #-0x2
    1a16: a805         	add	r0, sp, #0x14
    1a18: 2100         	movs	r1, #0x0
    1a1a: 9103         	str	r1, [sp, #0xc]
    1a1c: f000 f840    	bl	0x1aa0 <defmt::encoding::inner::Encoder::end_frame::{{closure}}::h8becb597cb6eda2f> @ imm = #0x80
    1a20: 9904         	ldr	r1, [sp, #0x10]
    1a22: 9803         	ldr	r0, [sp, #0xc]
    1a24: 7048         	strb	r0, [r1, #0x1]
    1a26: 7088         	strb	r0, [r1, #0x2]
    1a28: b008         	add	sp, #0x20
    1a2a: bd80         	pop	{r7, pc}
    1a2c: 9804         	ldr	r0, [sp, #0x10]
    1a2e: 7840         	ldrb	r0, [r0, #0x1]
    1a30: 2800         	cmp	r0, #0x0
    1a32: d107         	bne	0x1a44 <defmt::encoding::inner::Encoder::end_frame::h306fbc2405184cc5+0x40> @ imm = #0xe
    1a34: e7ff         	b	0x1a36 <defmt::encoding::inner::Encoder::end_frame::h306fbc2405184cc5+0x32> @ imm = #-0x2
    1a36: 9804         	ldr	r0, [sp, #0x10]
    1a38: 7840         	ldrb	r0, [r0, #0x1]
    1a3a: 1fc1         	subs	r1, r0, #0x7
    1a3c: 9102         	str	r1, [sp, #0x8]
    1a3e: 2807         	cmp	r0, #0x7
    1a40: d315         	blo	0x1a6e <defmt::encoding::inner::Encoder::end_frame::h306fbc2405184cc5+0x6a> @ imm = #0x2a
    1a42: e00c         	b	0x1a5e <defmt::encoding::inner::Encoder::end_frame::h306fbc2405184cc5+0x5a> @ imm = #0x18
    1a44: 9804         	ldr	r0, [sp, #0x10]
    1a46: 7840         	ldrb	r0, [r0, #0x1]
    1a48: 2806         	cmp	r0, #0x6
    1a4a: d8f4         	bhi	0x1a36 <defmt::encoding::inner::Encoder::end_frame::h306fbc2405184cc5+0x32> @ imm = #-0x18
    1a4c: e7ff         	b	0x1a4e <defmt::encoding::inner::Encoder::end_frame::h306fbc2405184cc5+0x4a> @ imm = #-0x2
    1a4e: 9804         	ldr	r0, [sp, #0x10]
    1a50: 7881         	ldrb	r1, [r0, #0x2]
    1a52: 9100         	str	r1, [sp]
    1a54: 7840         	ldrb	r0, [r0, #0x1]
    1a56: 9001         	str	r0, [sp, #0x4]
    1a58: 2808         	cmp	r0, #0x8
    1a5a: d30b         	blo	0x1a74 <defmt::encoding::inner::Encoder::end_frame::h306fbc2405184cc5+0x70> @ imm = #0x16
    1a5c: e018         	b	0x1a90 <defmt::encoding::inner::Encoder::end_frame::h306fbc2405184cc5+0x8c> @ imm = #0x30
    1a5e: 9902         	ldr	r1, [sp, #0x8]
    1a60: 207f         	movs	r0, #0x7f
    1a62: 43c0         	mvns	r0, r0
    1a64: 4301         	orrs	r1, r0
    1a66: a805         	add	r0, sp, #0x14
    1a68: f000 f81a    	bl	0x1aa0 <defmt::encoding::inner::Encoder::end_frame::{{closure}}::h8becb597cb6eda2f> @ imm = #0x34
    1a6c: e7d3         	b	0x1a16 <defmt::encoding::inner::Encoder::end_frame::h306fbc2405184cc5+0x12> @ imm = #-0x5a
    1a6e: 480a         	ldr	r0, [pc, #0x28]         @ 0x1a98 <defmt::encoding::inner::Encoder::end_frame::h306fbc2405184cc5+0x94>
    1a70: f002 f894    	bl	0x3b9c <core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0> @ imm = #0x2128
    1a74: 9900         	ldr	r1, [sp]
    1a76: 9a01         	ldr	r2, [sp, #0x4]
    1a78: 2007         	movs	r0, #0x7
    1a7a: 4002         	ands	r2, r0
    1a7c: 2000         	movs	r0, #0x0
    1a7e: 43c0         	mvns	r0, r0
    1a80: 4090         	lsls	r0, r2
    1a82: 4301         	orrs	r1, r0
    1a84: 207f         	movs	r0, #0x7f
    1a86: 4001         	ands	r1, r0
    1a88: a805         	add	r0, sp, #0x14
    1a8a: f000 f809    	bl	0x1aa0 <defmt::encoding::inner::Encoder::end_frame::{{closure}}::h8becb597cb6eda2f> @ imm = #0x12
    1a8e: e7c2         	b	0x1a16 <defmt::encoding::inner::Encoder::end_frame::h306fbc2405184cc5+0x12> @ imm = #-0x7c
    1a90: 4802         	ldr	r0, [pc, #0x8]          @ 0x1a9c <defmt::encoding::inner::Encoder::end_frame::h306fbc2405184cc5+0x98>
    1a92: f002 f895    	bl	0x3bc0 <core::panicking::panic_const::panic_const_shl_overflow::h8a4a13f35df0c52c> @ imm = #0x212a
    1a96: 46c0         	mov	r8, r8
    1a98: f4 07 00 00  	.word	0x000007f4
    1a9c: 14 08 00 00  	.word	0x00000814

Disassembly of section .text.defmt::encoding::inner::Encoder::end_frame::{{closure}}::h8becb597cb6eda2f:

00001aa0 <defmt::encoding::inner::Encoder::end_frame::{{closure}}::h8becb597cb6eda2f>:
    1aa0: b580         	push	{r7, lr}
    1aa2: af00         	add	r7, sp, #0x0
    1aa4: b084         	sub	sp, #0x10
    1aa6: 460a         	mov	r2, r1
    1aa8: 9002         	str	r0, [sp, #0x8]
    1aaa: a903         	add	r1, sp, #0xc
    1aac: 700a         	strb	r2, [r1]
    1aae: a901         	add	r1, sp, #0x4
    1ab0: 700a         	strb	r2, [r1]
    1ab2: 2201         	movs	r2, #0x1
    1ab4: f7ff fc92    	bl	0x13dc <core::ops::function::FnMut::call_mut::h276678d7528aa2ea> @ imm = #-0x6dc
    1ab8: b004         	add	sp, #0x10
    1aba: bd80         	pop	{r7, pc}

Disassembly of section .text.defmt::encoding::Encoder::start_frame::h495054d39f00c945:

00001abc <defmt::encoding::Encoder::start_frame::h495054d39f00c945>:
    1abc: b580         	push	{r7, lr}
    1abe: af00         	add	r7, sp, #0x0
    1ac0: b082         	sub	sp, #0x8
    1ac2: 9000         	str	r0, [sp]
    1ac4: f7ff fec8    	bl	0x1858 <defmt::encoding::inner::Encoder::start_frame::hb04d859259104e44> @ imm = #-0x270
    1ac8: b002         	add	sp, #0x8
    1aca: bd80         	pop	{r7, pc}

Disassembly of section .text.defmt::encoding::Encoder::write::h3645e03059f2a6d9:

00001acc <defmt::encoding::Encoder::write::h3645e03059f2a6d9>:
    1acc: b580         	push	{r7, lr}
    1ace: af00         	add	r7, sp, #0x0
    1ad0: b084         	sub	sp, #0x10
    1ad2: 9000         	str	r0, [sp]
    1ad4: 9101         	str	r1, [sp, #0x4]
    1ad6: 9202         	str	r2, [sp, #0x8]
    1ad8: f7ff fee0    	bl	0x189c <defmt::encoding::inner::Encoder::write::had42fcfea7d24b57> @ imm = #-0x240
    1adc: b004         	add	sp, #0x10
    1ade: bd80         	pop	{r7, pc}

Disassembly of section .text.defmt::encoding::Encoder::end_frame::haa828ddf3ec5e105:

00001ae0 <defmt::encoding::Encoder::end_frame::haa828ddf3ec5e105>:
    1ae0: b580         	push	{r7, lr}
    1ae2: af00         	add	r7, sp, #0x0
    1ae4: b082         	sub	sp, #0x8
    1ae6: 9000         	str	r0, [sp]
    1ae8: f7ff ff8c    	bl	0x1a04 <defmt::encoding::inner::Encoder::end_frame::h306fbc2405184cc5> @ imm = #-0xe8
    1aec: b002         	add	sp, #0x8
    1aee: bd80         	pop	{r7, pc}

Disassembly of section .text.<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h6deeeef55ee7c891:

00001af0 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h6deeeef55ee7c891>:
    1af0: b091         	sub	sp, #0x44
    1af2: 9000         	str	r0, [sp]
    1af4: 2101         	movs	r1, #0x1
    1af6: 9101         	str	r1, [sp, #0x4]
    1af8: 9102         	str	r1, [sp, #0x8]
    1afa: 9007         	str	r0, [sp, #0x1c]
    1afc: e7ff         	b	0x1afe <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h6deeeef55ee7c891+0xe> @ imm = #-0x2
    1afe: 9800         	ldr	r0, [sp]
    1b00: 1d01         	adds	r1, r0, #0x4
    1b02: 9108         	str	r1, [sp, #0x20]
    1b04: 6841         	ldr	r1, [r0, #0x4]
    1b06: 9105         	str	r1, [sp, #0x14]
    1b08: 9009         	str	r0, [sp, #0x24]
    1b0a: a905         	add	r1, sp, #0x14
    1b0c: 910a         	str	r1, [sp, #0x28]
    1b0e: 6800         	ldr	r0, [r0]
    1b10: 900b         	str	r0, [sp, #0x2c]
    1b12: 9905         	ldr	r1, [sp, #0x14]
    1b14: 1a40         	subs	r0, r0, r1
    1b16: 4241         	rsbs	r1, r0, #0
    1b18: 4148         	adcs	r0, r1
    1b1a: a904         	add	r1, sp, #0x10
    1b1c: 7008         	strb	r0, [r1]
    1b1e: e7ff         	b	0x1b20 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h6deeeef55ee7c891+0x30> @ imm = #-0x2
    1b20: a804         	add	r0, sp, #0x10
    1b22: 7800         	ldrb	r0, [r0]
    1b24: 07c0         	lsls	r0, r0, #0x1f
    1b26: 2800         	cmp	r0, #0x0
    1b28: d104         	bne	0x1b34 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h6deeeef55ee7c891+0x44> @ imm = #0x8
    1b2a: e7ff         	b	0x1b2c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h6deeeef55ee7c891+0x3c> @ imm = #-0x2
    1b2c: 9800         	ldr	r0, [sp]
    1b2e: 6800         	ldr	r0, [r0]
    1b30: 9006         	str	r0, [sp, #0x18]
    1b32: e002         	b	0x1b3a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h6deeeef55ee7c891+0x4a> @ imm = #0x4
    1b34: 2000         	movs	r0, #0x0
    1b36: 9003         	str	r0, [sp, #0xc]
    1b38: e00e         	b	0x1b58 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h6deeeef55ee7c891+0x68> @ imm = #0x1c
    1b3a: 9900         	ldr	r1, [sp]
    1b3c: 1d08         	adds	r0, r1, #0x4
    1b3e: 900c         	str	r0, [sp, #0x30]
    1b40: 900d         	str	r0, [sp, #0x34]
    1b42: 6808         	ldr	r0, [r1]
    1b44: 900e         	str	r0, [sp, #0x38]
    1b46: 1c40         	adds	r0, r0, #0x1
    1b48: 6008         	str	r0, [r1]
    1b4a: e7ff         	b	0x1b4c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h6deeeef55ee7c891+0x5c> @ imm = #-0x2
    1b4c: a806         	add	r0, sp, #0x18
    1b4e: 900f         	str	r0, [sp, #0x3c]
    1b50: 9806         	ldr	r0, [sp, #0x18]
    1b52: 9010         	str	r0, [sp, #0x40]
    1b54: 9003         	str	r0, [sp, #0xc]
    1b56: e7ff         	b	0x1b58 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h6deeeef55ee7c891+0x68> @ imm = #-0x2
    1b58: 9803         	ldr	r0, [sp, #0xc]
    1b5a: b011         	add	sp, #0x44
    1b5c: 4770         	bx	lr

Disassembly of section .text.defmt_rtt::channel::Channel::write_all::hd4bcc8023de880d0:

00001b60 <defmt_rtt::channel::Channel::write_all::hd4bcc8023de880d0>:
    1b60: b580         	push	{r7, lr}
    1b62: af00         	add	r7, sp, #0x0
    1b64: b08a         	sub	sp, #0x28
    1b66: 9001         	str	r0, [sp, #0x4]
    1b68: 9102         	str	r1, [sp, #0x8]
    1b6a: 9203         	str	r2, [sp, #0xc]
    1b6c: 9005         	str	r0, [sp, #0x14]
    1b6e: f000 f933    	bl	0x1dd8 <defmt_rtt::channel::Channel::host_is_connected::hf144b80064523642> @ imm = #0x266
    1b72: 2800         	cmp	r0, #0x0
    1b74: d103         	bne	0x1b7e <defmt_rtt::channel::Channel::write_all::hd4bcc8023de880d0+0x1e> @ imm = #0x6
    1b76: e7ff         	b	0x1b78 <defmt_rtt::channel::Channel::write_all::hd4bcc8023de880d0+0x18> @ imm = #-0x2
    1b78: 4812         	ldr	r0, [pc, #0x48]         @ 0x1bc4 <defmt_rtt::channel::Channel::write_all::hd4bcc8023de880d0+0x64>
    1b7a: 9004         	str	r0, [sp, #0x10]
    1b7c: e002         	b	0x1b84 <defmt_rtt::channel::Channel::write_all::hd4bcc8023de880d0+0x24> @ imm = #0x4
    1b7e: 4812         	ldr	r0, [pc, #0x48]         @ 0x1bc8 <defmt_rtt::channel::Channel::write_all::hd4bcc8023de880d0+0x68>
    1b80: 9004         	str	r0, [sp, #0x10]
    1b82: e7ff         	b	0x1b84 <defmt_rtt::channel::Channel::write_all::hd4bcc8023de880d0+0x24> @ imm = #-0x2
    1b84: 9802         	ldr	r0, [sp, #0x8]
    1b86: 9903         	ldr	r1, [sp, #0xc]
    1b88: f7ff fdf8    	bl	0x177c <core::slice::<impl [T]>::is_empty::hbf215d7374d12255> @ imm = #-0x410
    1b8c: 2800         	cmp	r0, #0x0
    1b8e: d10b         	bne	0x1ba8 <defmt_rtt::channel::Channel::write_all::hd4bcc8023de880d0+0x48> @ imm = #0x16
    1b90: e7ff         	b	0x1b92 <defmt_rtt::channel::Channel::write_all::hd4bcc8023de880d0+0x32> @ imm = #-0x2
    1b92: 9801         	ldr	r0, [sp, #0x4]
    1b94: 9b04         	ldr	r3, [sp, #0x10]
    1b96: 9902         	ldr	r1, [sp, #0x8]
    1b98: 9a03         	ldr	r2, [sp, #0xc]
    1b9a: 4798         	blx	r3
    1b9c: 4601         	mov	r1, r0
    1b9e: 9100         	str	r1, [sp]
    1ba0: 9006         	str	r0, [sp, #0x18]
    1ba2: 2800         	cmp	r0, #0x0
    1ba4: d0ee         	beq	0x1b84 <defmt_rtt::channel::Channel::write_all::hd4bcc8023de880d0+0x24> @ imm = #-0x24
    1ba6: e001         	b	0x1bac <defmt_rtt::channel::Channel::write_all::hd4bcc8023de880d0+0x4c> @ imm = #0x2
    1ba8: b00a         	add	sp, #0x28
    1baa: bd80         	pop	{r7, pc}
    1bac: 9800         	ldr	r0, [sp]
    1bae: 9902         	ldr	r1, [sp, #0x8]
    1bb0: 9a03         	ldr	r2, [sp, #0xc]
    1bb2: 9107         	str	r1, [sp, #0x1c]
    1bb4: 9208         	str	r2, [sp, #0x20]
    1bb6: 9009         	str	r0, [sp, #0x24]
    1bb8: 4b04         	ldr	r3, [pc, #0x10]         @ 0x1bcc <defmt_rtt::channel::Channel::write_all::hd4bcc8023de880d0+0x6c>
    1bba: f7ff fae1    	bl	0x1180 <<core::ops::range::RangeFrom<usize> as core::slice::index::SliceIndex<[T]>>::index::h8a2d28303d4607ff> @ imm = #-0xa3e
    1bbe: 9002         	str	r0, [sp, #0x8]
    1bc0: 9103         	str	r1, [sp, #0xc]
    1bc2: e7df         	b	0x1b84 <defmt_rtt::channel::Channel::write_all::hd4bcc8023de880d0+0x24> @ imm = #-0x42
    1bc4: 5b 1c 00 00  	.word	0x00001c5b
    1bc8: d1 1b 00 00  	.word	0x00001bd1
    1bcc: 8c 08 00 00  	.word	0x0000088c

Disassembly of section .text.defmt_rtt::channel::Channel::blocking_write::hb0fb6b8c9244772c:

00001bd0 <defmt_rtt::channel::Channel::blocking_write::hb0fb6b8c9244772c>:
    1bd0: b5d0         	push	{r4, r6, r7, lr}
    1bd2: af02         	add	r7, sp, #0x8
    1bd4: b090         	sub	sp, #0x40
    1bd6: 9204         	str	r2, [sp, #0x10]
    1bd8: 460a         	mov	r2, r1
    1bda: 9904         	ldr	r1, [sp, #0x10]
    1bdc: 9205         	str	r2, [sp, #0x14]
    1bde: 4602         	mov	r2, r0
    1be0: 9805         	ldr	r0, [sp, #0x14]
    1be2: 9206         	str	r2, [sp, #0x18]
    1be4: 920a         	str	r2, [sp, #0x28]
    1be6: 900b         	str	r0, [sp, #0x2c]
    1be8: 910c         	str	r1, [sp, #0x30]
    1bea: f7ff fdc7    	bl	0x177c <core::slice::<impl [T]>::is_empty::hbf215d7374d12255> @ imm = #-0x472
    1bee: 2800         	cmp	r0, #0x0
    1bf0: d120         	bne	0x1c34 <defmt_rtt::channel::Channel::blocking_write::hb0fb6b8c9244772c+0x64> @ imm = #0x40
    1bf2: e7ff         	b	0x1bf4 <defmt_rtt::channel::Channel::blocking_write::hb0fb6b8c9244772c+0x24> @ imm = #-0x2
    1bf4: 9806         	ldr	r0, [sp, #0x18]
    1bf6: 3010         	adds	r0, #0x10
    1bf8: aa08         	add	r2, sp, #0x20
    1bfa: 2100         	movs	r1, #0x0
    1bfc: 7011         	strb	r1, [r2]
    1bfe: 9908         	ldr	r1, [sp, #0x20]
    1c00: f7ff fc1e    	bl	0x1440 <core::sync::atomic::AtomicUsize::load::hdcfa8269c769b4a9> @ imm = #-0x7c4
    1c04: 4601         	mov	r1, r0
    1c06: 9806         	ldr	r0, [sp, #0x18]
    1c08: 9101         	str	r1, [sp, #0x4]
    1c0a: 910d         	str	r1, [sp, #0x34]
    1c0c: 300c         	adds	r0, #0xc
    1c0e: aa09         	add	r2, sp, #0x24
    1c10: 2102         	movs	r1, #0x2
    1c12: 7011         	strb	r1, [r2]
    1c14: 9909         	ldr	r1, [sp, #0x24]
    1c16: f7ff fc13    	bl	0x1440 <core::sync::atomic::AtomicUsize::load::hdcfa8269c769b4a9> @ imm = #-0x7da
    1c1a: 4601         	mov	r1, r0
    1c1c: 9801         	ldr	r0, [sp, #0x4]
    1c1e: 460a         	mov	r2, r1
    1c20: 9202         	str	r2, [sp, #0x8]
    1c22: 910e         	str	r1, [sp, #0x38]
    1c24: f000 f8ea    	bl	0x1dfc <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33> @ imm = #0x1d4
    1c28: 4601         	mov	r1, r0
    1c2a: 9103         	str	r1, [sp, #0xc]
    1c2c: 900f         	str	r0, [sp, #0x3c]
    1c2e: 2800         	cmp	r0, #0x0
    1c30: d003         	beq	0x1c3a <defmt_rtt::channel::Channel::blocking_write::hb0fb6b8c9244772c+0x6a> @ imm = #0x6
    1c32: e005         	b	0x1c40 <defmt_rtt::channel::Channel::blocking_write::hb0fb6b8c9244772c+0x70> @ imm = #0xa
    1c34: 2000         	movs	r0, #0x0
    1c36: 9007         	str	r0, [sp, #0x1c]
    1c38: e00c         	b	0x1c54 <defmt_rtt::channel::Channel::blocking_write::hb0fb6b8c9244772c+0x84> @ imm = #0x18
    1c3a: 2000         	movs	r0, #0x0
    1c3c: 9007         	str	r0, [sp, #0x1c]
    1c3e: e009         	b	0x1c54 <defmt_rtt::channel::Channel::blocking_write::hb0fb6b8c9244772c+0x84> @ imm = #0x12
    1c40: 9b02         	ldr	r3, [sp, #0x8]
    1c42: 9a04         	ldr	r2, [sp, #0x10]
    1c44: 9905         	ldr	r1, [sp, #0x14]
    1c46: 9806         	ldr	r0, [sp, #0x18]
    1c48: 9c03         	ldr	r4, [sp, #0xc]
    1c4a: 9400         	str	r4, [sp]
    1c4c: f000 f822    	bl	0x1c94 <defmt_rtt::channel::Channel::write_impl::h130c291f5f94da5e> @ imm = #0x44
    1c50: 9007         	str	r0, [sp, #0x1c]
    1c52: e7ff         	b	0x1c54 <defmt_rtt::channel::Channel::blocking_write::hb0fb6b8c9244772c+0x84> @ imm = #-0x2
    1c54: 9807         	ldr	r0, [sp, #0x1c]
    1c56: b010         	add	sp, #0x40
    1c58: bdd0         	pop	{r4, r6, r7, pc}

Disassembly of section .text.defmt_rtt::channel::Channel::nonblocking_write::hdcabcdf7086d1dfa:

00001c5a <defmt_rtt::channel::Channel::nonblocking_write::hdcabcdf7086d1dfa>:
    1c5a: b5d0         	push	{r4, r6, r7, lr}
    1c5c: af02         	add	r7, sp, #0x8
    1c5e: b08a         	sub	sp, #0x28
    1c60: 9203         	str	r2, [sp, #0xc]
    1c62: 9102         	str	r1, [sp, #0x8]
    1c64: 9004         	str	r0, [sp, #0x10]
    1c66: 9006         	str	r0, [sp, #0x18]
    1c68: 9107         	str	r1, [sp, #0x1c]
    1c6a: 9208         	str	r2, [sp, #0x20]
    1c6c: 300c         	adds	r0, #0xc
    1c6e: aa05         	add	r2, sp, #0x14
    1c70: 2102         	movs	r1, #0x2
    1c72: 7011         	strb	r1, [r2]
    1c74: 9905         	ldr	r1, [sp, #0x14]
    1c76: f7ff fbe3    	bl	0x1440 <core::sync::atomic::AtomicUsize::load::hdcfa8269c769b4a9> @ imm = #-0x83a
    1c7a: 9902         	ldr	r1, [sp, #0x8]
    1c7c: 9a03         	ldr	r2, [sp, #0xc]
    1c7e: 4603         	mov	r3, r0
    1c80: 9804         	ldr	r0, [sp, #0x10]
    1c82: 9309         	str	r3, [sp, #0x24]
    1c84: 2401         	movs	r4, #0x1
    1c86: 02a4         	lsls	r4, r4, #0xa
    1c88: 9400         	str	r4, [sp]
    1c8a: f000 f803    	bl	0x1c94 <defmt_rtt::channel::Channel::write_impl::h130c291f5f94da5e> @ imm = #0x6
    1c8e: b00a         	add	sp, #0x28
    1c90: bdd0         	pop	{r4, r6, r7, pc}

Disassembly of section .text.defmt_rtt::channel::Channel::write_impl::h130c291f5f94da5e:

00001c94 <defmt_rtt::channel::Channel::write_impl::h130c291f5f94da5e>:
    1c94: b5b0         	push	{r4, r5, r7, lr}
    1c96: af02         	add	r7, sp, #0x8
    1c98: b0ac         	sub	sp, #0xb0
    1c9a: 930b         	str	r3, [sp, #0x2c]
    1c9c: 9209         	str	r2, [sp, #0x24]
    1c9e: 460a         	mov	r2, r1
    1ca0: 9208         	str	r2, [sp, #0x20]
    1ca2: 4604         	mov	r4, r0
    1ca4: 9809         	ldr	r0, [sp, #0x24]
    1ca6: 940a         	str	r4, [sp, #0x28]
    1ca8: 68b9         	ldr	r1, [r7, #0x8]
    1caa: 940f         	str	r4, [sp, #0x3c]
    1cac: 9210         	str	r2, [sp, #0x40]
    1cae: 9011         	str	r0, [sp, #0x44]
    1cb0: 9312         	str	r3, [sp, #0x48]
    1cb2: f7ff fb29    	bl	0x1308 <core::cmp::Ord::min::h6e2a2ba5494fc68a> @ imm = #-0x9ae
    1cb6: 9b0b         	ldr	r3, [sp, #0x2c]
    1cb8: 4601         	mov	r1, r0
    1cba: 910c         	str	r1, [sp, #0x30]
    1cbc: 9013         	str	r0, [sp, #0x4c]
    1cbe: 1818         	adds	r0, r3, r0
    1cc0: 900d         	str	r0, [sp, #0x34]
    1cc2: 4298         	cmp	r0, r3
    1cc4: d306         	blo	0x1cd4 <defmt_rtt::channel::Channel::write_impl::h130c291f5f94da5e+0x40> @ imm = #0xc
    1cc6: e7ff         	b	0x1cc8 <defmt_rtt::channel::Channel::write_impl::h130c291f5f94da5e+0x34> @ imm = #-0x2
    1cc8: 980d         	ldr	r0, [sp, #0x34]
    1cca: 2101         	movs	r1, #0x1
    1ccc: 0289         	lsls	r1, r1, #0xa
    1cce: 4288         	cmp	r0, r1
    1cd0: d81d         	bhi	0x1d0e <defmt_rtt::channel::Channel::write_impl::h130c291f5f94da5e+0x7a> @ imm = #0x3a
    1cd2: e002         	b	0x1cda <defmt_rtt::channel::Channel::write_impl::h130c291f5f94da5e+0x46> @ imm = #0x4
    1cd4: 483f         	ldr	r0, [pc, #0xfc]         @ 0x1dd4 <defmt_rtt::channel::Channel::write_impl::h130c291f5f94da5e+0x140>
    1cd6: f001 ff4f    	bl	0x3b78 <core::panicking::panic_const::panic_const_add_overflow::hf5cb0614de41d6eb> @ imm = #0x1e9e
    1cda: 9a0c         	ldr	r2, [sp, #0x30]
    1cdc: 9808         	ldr	r0, [sp, #0x20]
    1cde: 9b0b         	ldr	r3, [sp, #0x2c]
    1ce0: 990a         	ldr	r1, [sp, #0x28]
    1ce2: 9c09         	ldr	r4, [sp, #0x24]
    1ce4: 902a         	str	r0, [sp, #0xa8]
    1ce6: 942b         	str	r4, [sp, #0xac]
    1ce8: 6849         	ldr	r1, [r1, #0x4]
    1cea: 9122         	str	r1, [sp, #0x88]
    1cec: 9323         	str	r3, [sp, #0x8c]
    1cee: 18c9         	adds	r1, r1, r3
    1cf0: 9107         	str	r1, [sp, #0x1c]
    1cf2: 901b         	str	r0, [sp, #0x6c]
    1cf4: 911c         	str	r1, [sp, #0x70]
    1cf6: 921d         	str	r2, [sp, #0x74]
    1cf8: 9200         	str	r2, [sp]
    1cfa: 2301         	movs	r3, #0x1
    1cfc: 461a         	mov	r2, r3
    1cfe: f7ff fa65    	bl	0x11cc <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557> @ imm = #-0xb36
    1d02: 9807         	ldr	r0, [sp, #0x1c]
    1d04: 9908         	ldr	r1, [sp, #0x20]
    1d06: 9a0c         	ldr	r2, [sp, #0x30]
    1d08: f000 fdba    	bl	0x2880 <__aeabi_memcpy> @ imm = #0xb74
    1d0c: e007         	b	0x1d1e <defmt_rtt::channel::Channel::write_impl::h130c291f5f94da5e+0x8a> @ imm = #0xe
    1d0e: 980b         	ldr	r0, [sp, #0x2c]
    1d10: 2101         	movs	r1, #0x1
    1d12: 0289         	lsls	r1, r1, #0xa
    1d14: 1a0a         	subs	r2, r1, r0
    1d16: 9206         	str	r2, [sp, #0x18]
    1d18: 4288         	cmp	r0, r1
    1d1a: d83d         	bhi	0x1d98 <defmt_rtt::channel::Channel::write_impl::h130c291f5f94da5e+0x104> @ imm = #0x7a
    1d1c: e011         	b	0x1d42 <defmt_rtt::channel::Channel::write_impl::h130c291f5f94da5e+0xae> @ imm = #0x22
    1d1e: 9a0c         	ldr	r2, [sp, #0x30]
    1d20: 990b         	ldr	r1, [sp, #0x2c]
    1d22: 980a         	ldr	r0, [sp, #0x28]
    1d24: 300c         	adds	r0, #0xc
    1d26: 911e         	str	r1, [sp, #0x78]
    1d28: 921f         	str	r2, [sp, #0x7c]
    1d2a: 1889         	adds	r1, r1, r2
    1d2c: 4a26         	ldr	r2, [pc, #0x98]         @ 0x1dc8 <defmt_rtt::channel::Channel::write_impl::h130c291f5f94da5e+0x134>
    1d2e: 4011         	ands	r1, r2
    1d30: ab0e         	add	r3, sp, #0x38
    1d32: 2201         	movs	r2, #0x1
    1d34: 701a         	strb	r2, [r3]
    1d36: 9a0e         	ldr	r2, [sp, #0x38]
    1d38: f7ff fb8d    	bl	0x1456 <core::sync::atomic::AtomicUsize::store::h67cbc931a2d1772b> @ imm = #-0x8e6
    1d3c: 980c         	ldr	r0, [sp, #0x30]
    1d3e: b02c         	add	sp, #0xb0
    1d40: bdb0         	pop	{r4, r5, r7, pc}
    1d42: 9a06         	ldr	r2, [sp, #0x18]
    1d44: 990a         	ldr	r1, [sp, #0x28]
    1d46: 9808         	ldr	r0, [sp, #0x20]
    1d48: 9c09         	ldr	r4, [sp, #0x24]
    1d4a: 9b0b         	ldr	r3, [sp, #0x2c]
    1d4c: 9214         	str	r2, [sp, #0x50]
    1d4e: 9028         	str	r0, [sp, #0xa0]
    1d50: 9429         	str	r4, [sp, #0xa4]
    1d52: 6849         	ldr	r1, [r1, #0x4]
    1d54: 9120         	str	r1, [sp, #0x80]
    1d56: 9321         	str	r3, [sp, #0x84]
    1d58: 18c9         	adds	r1, r1, r3
    1d5a: 9102         	str	r1, [sp, #0x8]
    1d5c: 9018         	str	r0, [sp, #0x60]
    1d5e: 9119         	str	r1, [sp, #0x64]
    1d60: 921a         	str	r2, [sp, #0x68]
    1d62: 9200         	str	r2, [sp]
    1d64: 2301         	movs	r3, #0x1
    1d66: 461a         	mov	r2, r3
    1d68: f7ff fa30    	bl	0x11cc <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557> @ imm = #-0xba0
    1d6c: 9802         	ldr	r0, [sp, #0x8]
    1d6e: 9908         	ldr	r1, [sp, #0x20]
    1d70: 9a06         	ldr	r2, [sp, #0x18]
    1d72: f000 fd85    	bl	0x2880 <__aeabi_memcpy> @ imm = #0xb0a
    1d76: 9b08         	ldr	r3, [sp, #0x20]
    1d78: 9a0a         	ldr	r2, [sp, #0x28]
    1d7a: 9906         	ldr	r1, [sp, #0x18]
    1d7c: 980c         	ldr	r0, [sp, #0x30]
    1d7e: 9326         	str	r3, [sp, #0x98]
    1d80: 9427         	str	r4, [sp, #0x9c]
    1d82: 9324         	str	r3, [sp, #0x90]
    1d84: 9125         	str	r1, [sp, #0x94]
    1d86: 185b         	adds	r3, r3, r1
    1d88: 9303         	str	r3, [sp, #0xc]
    1d8a: 6852         	ldr	r2, [r2, #0x4]
    1d8c: 9204         	str	r2, [sp, #0x10]
    1d8e: 1a42         	subs	r2, r0, r1
    1d90: 9205         	str	r2, [sp, #0x14]
    1d92: 4288         	cmp	r0, r1
    1d94: d314         	blo	0x1dc0 <defmt_rtt::channel::Channel::write_impl::h130c291f5f94da5e+0x12c> @ imm = #0x28
    1d96: e002         	b	0x1d9e <defmt_rtt::channel::Channel::write_impl::h130c291f5f94da5e+0x10a> @ imm = #0x4
    1d98: 480d         	ldr	r0, [pc, #0x34]         @ 0x1dd0 <defmt_rtt::channel::Channel::write_impl::h130c291f5f94da5e+0x13c>
    1d9a: f001 feff    	bl	0x3b9c <core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0> @ imm = #0x1dfe
    1d9e: 9a05         	ldr	r2, [sp, #0x14]
    1da0: 9803         	ldr	r0, [sp, #0xc]
    1da2: 9904         	ldr	r1, [sp, #0x10]
    1da4: 9015         	str	r0, [sp, #0x54]
    1da6: 9116         	str	r1, [sp, #0x58]
    1da8: 9217         	str	r2, [sp, #0x5c]
    1daa: 9200         	str	r2, [sp]
    1dac: 2301         	movs	r3, #0x1
    1dae: 461a         	mov	r2, r3
    1db0: f7ff fa0c    	bl	0x11cc <core::intrinsics::copy_nonoverlapping::precondition_check::hef28567bd25db557> @ imm = #-0xbe8
    1db4: 9804         	ldr	r0, [sp, #0x10]
    1db6: 9903         	ldr	r1, [sp, #0xc]
    1db8: 9a05         	ldr	r2, [sp, #0x14]
    1dba: f000 fd61    	bl	0x2880 <__aeabi_memcpy> @ imm = #0xac2
    1dbe: e7ae         	b	0x1d1e <defmt_rtt::channel::Channel::write_impl::h130c291f5f94da5e+0x8a> @ imm = #-0xa4
    1dc0: 4802         	ldr	r0, [pc, #0x8]          @ 0x1dcc <defmt_rtt::channel::Channel::write_impl::h130c291f5f94da5e+0x138>
    1dc2: f001 feeb    	bl	0x3b9c <core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0> @ imm = #0x1dd6
    1dc6: 46c0         	mov	r8, r8
    1dc8: ff 03 00 00  	.word	0x000003ff
    1dcc: dc 08 00 00  	.word	0x000008dc
    1dd0: bc 08 00 00  	.word	0x000008bc
    1dd4: a4 08 00 00  	.word	0x000008a4

Disassembly of section .text.defmt_rtt::channel::Channel::host_is_connected::hf144b80064523642:

00001dd8 <defmt_rtt::channel::Channel::host_is_connected::hf144b80064523642>:
    1dd8: b580         	push	{r7, lr}
    1dda: af00         	add	r7, sp, #0x0
    1ddc: b082         	sub	sp, #0x8
    1dde: 9001         	str	r0, [sp, #0x4]
    1de0: 3014         	adds	r0, #0x14
    1de2: 466a         	mov	r2, sp
    1de4: 2100         	movs	r1, #0x0
    1de6: 7011         	strb	r1, [r2]
    1de8: 9900         	ldr	r1, [sp]
    1dea: f7ff fb29    	bl	0x1440 <core::sync::atomic::AtomicUsize::load::hdcfa8269c769b4a9> @ imm = #-0x9ae
    1dee: 2103         	movs	r1, #0x3
    1df0: 4008         	ands	r0, r1
    1df2: 1e80         	subs	r0, r0, #0x2
    1df4: 4241         	rsbs	r1, r0, #0
    1df6: 4148         	adcs	r0, r1
    1df8: b002         	add	sp, #0x8
    1dfa: bd80         	pop	{r7, pc}

Disassembly of section .text.defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33:

00001dfc <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33>:
    1dfc: b580         	push	{r7, lr}
    1dfe: af00         	add	r7, sp, #0x0
    1e00: b08a         	sub	sp, #0x28
    1e02: 9105         	str	r1, [sp, #0x14]
    1e04: 9006         	str	r0, [sp, #0x18]
    1e06: 9008         	str	r0, [sp, #0x20]
    1e08: 9109         	str	r1, [sp, #0x24]
    1e0a: 4288         	cmp	r0, r1
    1e0c: d804         	bhi	0x1e18 <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x1c> @ imm = #0x8
    1e0e: e7ff         	b	0x1e10 <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x14> @ imm = #-0x2
    1e10: 9806         	ldr	r0, [sp, #0x18]
    1e12: 2800         	cmp	r0, #0x0
    1e14: d007         	beq	0x1e26 <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x2a> @ imm = #0xe
    1e16: e00e         	b	0x1e36 <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x3a> @ imm = #0x1c
    1e18: 9806         	ldr	r0, [sp, #0x18]
    1e1a: 9905         	ldr	r1, [sp, #0x14]
    1e1c: 1a42         	subs	r2, r0, r1
    1e1e: 9204         	str	r2, [sp, #0x10]
    1e20: 4288         	cmp	r0, r1
    1e22: d32e         	blo	0x1e82 <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x86> @ imm = #0x5c
    1e24: e027         	b	0x1e76 <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x7a> @ imm = #0x4e
    1e26: 9805         	ldr	r0, [sp, #0x14]
    1e28: 2101         	movs	r1, #0x1
    1e2a: 0289         	lsls	r1, r1, #0xa
    1e2c: 1a0a         	subs	r2, r1, r0
    1e2e: 9203         	str	r2, [sp, #0xc]
    1e30: 4288         	cmp	r0, r1
    1e32: d80e         	bhi	0x1e52 <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x56> @ imm = #0x1c
    1e34: e007         	b	0x1e46 <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x4a> @ imm = #0xe
    1e36: 9805         	ldr	r0, [sp, #0x14]
    1e38: 2101         	movs	r1, #0x1
    1e3a: 0289         	lsls	r1, r1, #0xa
    1e3c: 1a0a         	subs	r2, r1, r0
    1e3e: 9202         	str	r2, [sp, #0x8]
    1e40: 4288         	cmp	r0, r1
    1e42: d815         	bhi	0x1e70 <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x74> @ imm = #0x2a
    1e44: e011         	b	0x1e6a <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x6e> @ imm = #0x22
    1e46: 9803         	ldr	r0, [sp, #0xc]
    1e48: 1e41         	subs	r1, r0, #0x1
    1e4a: 9101         	str	r1, [sp, #0x4]
    1e4c: 2800         	cmp	r0, #0x0
    1e4e: d006         	beq	0x1e5e <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x62> @ imm = #0xc
    1e50: e002         	b	0x1e58 <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x5c> @ imm = #0x4
    1e52: 4811         	ldr	r0, [pc, #0x44]         @ 0x1e98 <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x9c>
    1e54: f001 fea2    	bl	0x3b9c <core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0> @ imm = #0x1d44
    1e58: 9801         	ldr	r0, [sp, #0x4]
    1e5a: 9007         	str	r0, [sp, #0x1c]
    1e5c: e002         	b	0x1e64 <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x68> @ imm = #0x4
    1e5e: 480e         	ldr	r0, [pc, #0x38]         @ 0x1e98 <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x9c>
    1e60: f001 fe9c    	bl	0x3b9c <core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0> @ imm = #0x1d38
    1e64: 9807         	ldr	r0, [sp, #0x1c]
    1e66: b00a         	add	sp, #0x28
    1e68: bd80         	pop	{r7, pc}
    1e6a: 9802         	ldr	r0, [sp, #0x8]
    1e6c: 9007         	str	r0, [sp, #0x1c]
    1e6e: e7f9         	b	0x1e64 <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x68> @ imm = #-0xe
    1e70: 4808         	ldr	r0, [pc, #0x20]         @ 0x1e94 <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x98>
    1e72: f001 fe93    	bl	0x3b9c <core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0> @ imm = #0x1d26
    1e76: 9804         	ldr	r0, [sp, #0x10]
    1e78: 1e41         	subs	r1, r0, #0x1
    1e7a: 9100         	str	r1, [sp]
    1e7c: 2800         	cmp	r0, #0x0
    1e7e: d006         	beq	0x1e8e <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x92> @ imm = #0xc
    1e80: e002         	b	0x1e88 <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x8c> @ imm = #0x4
    1e82: 4806         	ldr	r0, [pc, #0x18]         @ 0x1e9c <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0xa0>
    1e84: f001 fe8a    	bl	0x3b9c <core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0> @ imm = #0x1d14
    1e88: 9800         	ldr	r0, [sp]
    1e8a: 9007         	str	r0, [sp, #0x1c]
    1e8c: e7ea         	b	0x1e64 <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0x68> @ imm = #-0x2c
    1e8e: 4803         	ldr	r0, [pc, #0xc]          @ 0x1e9c <defmt_rtt::channel::available_buffer_size::h3a843b15d8349c33+0xa0>
    1e90: f001 fe84    	bl	0x3b9c <core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0> @ imm = #0x1d08
    1e94: 0c 09 00 00  	.word	0x0000090c
    1e98: fc 08 00 00  	.word	0x000008fc
    1e9c: 2c 09 00 00  	.word	0x0000092c

Disassembly of section .text.<defmt_rtt::Logger as defmt::traits::Logger>::acquire::hfe4da9ba59d77c68:

00001ea0 <<defmt_rtt::Logger as defmt::traits::Logger>::acquire::hfe4da9ba59d77c68>:
    1ea0: b580         	push	{r7, lr}
    1ea2: af00         	add	r7, sp, #0x0
    1ea4: b08c         	sub	sp, #0x30
    1ea6: f000 fc8b    	bl	0x27c0 <_critical_section_1_0_acquire> @ imm = #0x916
    1eaa: 4601         	mov	r1, r0
    1eac: 9102         	str	r1, [sp, #0x8]
    1eae: a90b         	add	r1, sp, #0x2c
    1eb0: 7008         	strb	r0, [r1]
    1eb2: a903         	add	r1, sp, #0xc
    1eb4: 2000         	movs	r0, #0x0
    1eb6: 7008         	strb	r0, [r1]
    1eb8: 9903         	ldr	r1, [sp, #0xc]
    1eba: 480f         	ldr	r0, [pc, #0x3c]         @ 0x1ef8 <<defmt_rtt::Logger as defmt::traits::Logger>::acquire::hfe4da9ba59d77c68+0x58>
    1ebc: f7ff faa5    	bl	0x140a <core::sync::atomic::AtomicBool::load::hdb631beaf7d2c451> @ imm = #-0xab6
    1ec0: 2800         	cmp	r0, #0x0
    1ec2: d110         	bne	0x1ee6 <<defmt_rtt::Logger as defmt::traits::Logger>::acquire::hfe4da9ba59d77c68+0x46> @ imm = #0x20
    1ec4: e7ff         	b	0x1ec6 <<defmt_rtt::Logger as defmt::traits::Logger>::acquire::hfe4da9ba59d77c68+0x26> @ imm = #-0x2
    1ec6: a90a         	add	r1, sp, #0x28
    1ec8: 2000         	movs	r0, #0x0
    1eca: 7008         	strb	r0, [r1]
    1ecc: 9a0a         	ldr	r2, [sp, #0x28]
    1ece: 480a         	ldr	r0, [pc, #0x28]         @ 0x1ef8 <<defmt_rtt::Logger as defmt::traits::Logger>::acquire::hfe4da9ba59d77c68+0x58>
    1ed0: 2101         	movs	r1, #0x1
    1ed2: f7ff faa8    	bl	0x1426 <core::sync::atomic::AtomicBool::store::h04c12df160047488> @ imm = #-0xab0
    1ed6: 9802         	ldr	r0, [sp, #0x8]
    1ed8: 4908         	ldr	r1, [pc, #0x20]         @ 0x1efc <<defmt_rtt::Logger as defmt::traits::Logger>::acquire::hfe4da9ba59d77c68+0x5c>
    1eda: 7008         	strb	r0, [r1]
    1edc: 4808         	ldr	r0, [pc, #0x20]         @ 0x1f00 <<defmt_rtt::Logger as defmt::traits::Logger>::acquire::hfe4da9ba59d77c68+0x60>
    1ede: f7ff fded    	bl	0x1abc <defmt::encoding::Encoder::start_frame::h495054d39f00c945> @ imm = #-0x426
    1ee2: b00c         	add	sp, #0x30
    1ee4: bd80         	pop	{r7, pc}
    1ee6: 4907         	ldr	r1, [pc, #0x1c]         @ 0x1f04 <<defmt_rtt::Logger as defmt::traits::Logger>::acquire::hfe4da9ba59d77c68+0x64>
    1ee8: a804         	add	r0, sp, #0x10
    1eea: 9001         	str	r0, [sp, #0x4]
    1eec: f7ff fa60    	bl	0x13b0 <core::fmt::Arguments::new_const::hafba7f7d8aaddc01> @ imm = #-0xb40
    1ef0: 9801         	ldr	r0, [sp, #0x4]
    1ef2: 4905         	ldr	r1, [pc, #0x14]         @ 0x1f08 <<defmt_rtt::Logger as defmt::traits::Logger>::acquire::hfe4da9ba59d77c68+0x68>
    1ef4: f001 f880    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x1100
    1ef8: e1 41 00 00  	.word	0x000041e1
    1efc: e2 41 00 00  	.word	0x000041e2
    1f00: e3 41 00 00  	.word	0x000041e3
    1f04: 5c 09 00 00  	.word	0x0000095c
    1f08: c0 09 00 00  	.word	0x000009c0

Disassembly of section .text.<defmt_rtt::Logger as defmt::traits::Logger>::release::h416d273a06a0a1b3:

00001f0c <<defmt_rtt::Logger as defmt::traits::Logger>::release::h416d273a06a0a1b3>:
    1f0c: b580         	push	{r7, lr}
    1f0e: af00         	add	r7, sp, #0x0
    1f10: b084         	sub	sp, #0x10
    1f12: 480a         	ldr	r0, [pc, #0x28]         @ 0x1f3c <<defmt_rtt::Logger as defmt::traits::Logger>::release::h416d273a06a0a1b3+0x30>
    1f14: f7ff fde4    	bl	0x1ae0 <defmt::encoding::Encoder::end_frame::haa828ddf3ec5e105> @ imm = #-0x438
    1f18: a801         	add	r0, sp, #0x4
    1f1a: 2100         	movs	r1, #0x0
    1f1c: 7001         	strb	r1, [r0]
    1f1e: 9a01         	ldr	r2, [sp, #0x4]
    1f20: 4807         	ldr	r0, [pc, #0x1c]         @ 0x1f40 <<defmt_rtt::Logger as defmt::traits::Logger>::release::h416d273a06a0a1b3+0x34>
    1f22: f7ff fa80    	bl	0x1426 <core::sync::atomic::AtomicBool::store::h04c12df160047488> @ imm = #-0xb00
    1f26: 4807         	ldr	r0, [pc, #0x1c]         @ 0x1f44 <<defmt_rtt::Logger as defmt::traits::Logger>::release::h416d273a06a0a1b3+0x38>
    1f28: 7800         	ldrb	r0, [r0]
    1f2a: a902         	add	r1, sp, #0x8
    1f2c: 7008         	strb	r0, [r1]
    1f2e: a903         	add	r1, sp, #0xc
    1f30: 7008         	strb	r0, [r1]
    1f32: f000 fc4a    	bl	0x27ca <_critical_section_1_0_release> @ imm = #0x894
    1f36: b004         	add	sp, #0x10
    1f38: bd80         	pop	{r7, pc}
    1f3a: 46c0         	mov	r8, r8
    1f3c: e3 41 00 00  	.word	0x000041e3
    1f40: e1 41 00 00  	.word	0x000041e1
    1f44: e2 41 00 00  	.word	0x000041e2

Disassembly of section .text.<defmt_rtt::Logger as defmt::traits::Logger>::write::h21a4c93188c2d9d7:

00001f48 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h21a4c93188c2d9d7>:
    1f48: b580         	push	{r7, lr}
    1f4a: af00         	add	r7, sp, #0x0
    1f4c: b082         	sub	sp, #0x8
    1f4e: 460a         	mov	r2, r1
    1f50: 4601         	mov	r1, r0
    1f52: 9100         	str	r1, [sp]
    1f54: 9201         	str	r2, [sp, #0x4]
    1f56: 4802         	ldr	r0, [pc, #0x8]          @ 0x1f60 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h21a4c93188c2d9d7+0x18>
    1f58: f7ff fdb8    	bl	0x1acc <defmt::encoding::Encoder::write::h3645e03059f2a6d9> @ imm = #-0x490
    1f5c: b002         	add	sp, #0x8
    1f5e: bd80         	pop	{r7, pc}
    1f60: e3 41 00 00  	.word	0x000041e3

Disassembly of section .text.defmt_rtt::do_write::h7bd2b2be1b232b6e:

00001f64 <defmt_rtt::do_write::h7bd2b2be1b232b6e>:
    1f64: b580         	push	{r7, lr}
    1f66: af00         	add	r7, sp, #0x0
    1f68: b084         	sub	sp, #0x10
    1f6a: 9101         	str	r1, [sp, #0x4]
    1f6c: 9000         	str	r0, [sp]
    1f6e: 9002         	str	r0, [sp, #0x8]
    1f70: 9103         	str	r1, [sp, #0xc]
    1f72: f000 f807    	bl	0x1f84 <defmt_rtt::handle::h8a7ceee1ca7c54ec> @ imm = #0xe
    1f76: 9900         	ldr	r1, [sp]
    1f78: 9a01         	ldr	r2, [sp, #0x4]
    1f7a: f7ff fdf1    	bl	0x1b60 <defmt_rtt::channel::Channel::write_all::hd4bcc8023de880d0> @ imm = #-0x41e
    1f7e: b004         	add	sp, #0x10
    1f80: bd80         	pop	{r7, pc}

Disassembly of section .text.defmt_rtt::handle::h8a7ceee1ca7c54ec:

00001f84 <defmt_rtt::handle::h8a7ceee1ca7c54ec>:
    1f84: 4801         	ldr	r0, [pc, #0x4]          @ 0x1f8c <defmt_rtt::handle::h8a7ceee1ca7c54ec+0x8>
    1f86: 3018         	adds	r0, #0x18
    1f88: 4770         	bx	lr
    1f8a: 46c0         	mov	r8, r8
    1f8c: b0 3d 00 00  	.word	0x00003db0

Disassembly of section .text._defmt_acquire:

00001f90 <_defmt_acquire>:
    1f90: b580         	push	{r7, lr}
    1f92: af00         	add	r7, sp, #0x0
    1f94: f7ff ff84    	bl	0x1ea0 <<defmt_rtt::Logger as defmt::traits::Logger>::acquire::hfe4da9ba59d77c68> @ imm = #-0xf8
    1f98: bd80         	pop	{r7, pc}

Disassembly of section .text._defmt_release:

00001f9a <_defmt_release>:
    1f9a: b580         	push	{r7, lr}
    1f9c: af00         	add	r7, sp, #0x0
    1f9e: f7ff ffb5    	bl	0x1f0c <<defmt_rtt::Logger as defmt::traits::Logger>::release::h416d273a06a0a1b3> @ imm = #-0x96
    1fa2: bd80         	pop	{r7, pc}

Disassembly of section .text._defmt_write:

00001fa4 <_defmt_write>:
    1fa4: b580         	push	{r7, lr}
    1fa6: af00         	add	r7, sp, #0x0
    1fa8: b082         	sub	sp, #0x8
    1faa: 9000         	str	r0, [sp]
    1fac: 9101         	str	r1, [sp, #0x4]
    1fae: f7ff ffcb    	bl	0x1f48 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h21a4c93188c2d9d7> @ imm = #-0x6a
    1fb2: b002         	add	sp, #0x8
    1fb4: bd80         	pop	{r7, pc}

Disassembly of section .text:

00001fb8 <_rphal_unsigned_divmod>:
    1fb8: 4a19         	ldr	r2, [pc, #0x64]         @ 0x2020 <_rphal_signed_divmod+0x34>
    1fba: 6f93         	ldr	r3, [r2, #0x78]
    1fbc: 089b         	lsrs	r3, r3, #0x2
    1fbe: d208         	bhs	0x1fd2 <_rphal_unsigned_divmod+0x1a> @ imm = #0x10
    1fc0: 6610         	str	r0, [r2, #0x60]
    1fc2: 6651         	str	r1, [r2, #0x64]
    1fc4: e7ff         	b	0x1fc6 <_rphal_unsigned_divmod+0xe> @ imm = #-0x2
    1fc6: e7ff         	b	0x1fc8 <_rphal_unsigned_divmod+0x10> @ imm = #-0x2
    1fc8: e7ff         	b	0x1fca <_rphal_unsigned_divmod+0x12> @ imm = #-0x2
    1fca: e7ff         	b	0x1fcc <_rphal_unsigned_divmod+0x14> @ imm = #-0x2
    1fcc: 6f51         	ldr	r1, [r2, #0x74]
    1fce: 6f10         	ldr	r0, [r2, #0x70]
    1fd0: 4770         	bx	lr
    1fd2: b570         	push	{r4, r5, r6, lr}
    1fd4: 6e13         	ldr	r3, [r2, #0x60]
    1fd6: 6e54         	ldr	r4, [r2, #0x64]
    1fd8: 6f55         	ldr	r5, [r2, #0x74]
    1fda: 6f16         	ldr	r6, [r2, #0x70]
    1fdc: f7ff fff0    	bl	0x1fc0 <_rphal_unsigned_divmod+0x8> @ imm = #-0x20
    1fe0: 6613         	str	r3, [r2, #0x60]
    1fe2: 6654         	str	r4, [r2, #0x64]
    1fe4: 6755         	str	r5, [r2, #0x74]
    1fe6: 6716         	str	r6, [r2, #0x70]
    1fe8: bd70         	pop	{r4, r5, r6, pc}
    1fea: 46c0         	mov	r8, r8

00001fec <_rphal_signed_divmod>:
    1fec: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x2020 <_rphal_signed_divmod+0x34>
    1fee: 6f93         	ldr	r3, [r2, #0x78]
    1ff0: 089b         	lsrs	r3, r3, #0x2
    1ff2: d208         	bhs	0x2006 <_rphal_signed_divmod+0x1a> @ imm = #0x10
    1ff4: 6690         	str	r0, [r2, #0x68]
    1ff6: 66d1         	str	r1, [r2, #0x6c]
    1ff8: e7ff         	b	0x1ffa <_rphal_signed_divmod+0xe> @ imm = #-0x2
    1ffa: e7ff         	b	0x1ffc <_rphal_signed_divmod+0x10> @ imm = #-0x2
    1ffc: e7ff         	b	0x1ffe <_rphal_signed_divmod+0x12> @ imm = #-0x2
    1ffe: e7ff         	b	0x2000 <_rphal_signed_divmod+0x14> @ imm = #-0x2
    2000: 6f51         	ldr	r1, [r2, #0x74]
    2002: 6f10         	ldr	r0, [r2, #0x70]
    2004: 4770         	bx	lr
    2006: b570         	push	{r4, r5, r6, lr}
    2008: 6e13         	ldr	r3, [r2, #0x60]
    200a: 6e54         	ldr	r4, [r2, #0x64]
    200c: 6f55         	ldr	r5, [r2, #0x74]
    200e: 6f16         	ldr	r6, [r2, #0x70]
    2010: f7ff fff0    	bl	0x1ff4 <_rphal_signed_divmod+0x8> @ imm = #-0x20
    2014: 6613         	str	r3, [r2, #0x60]
    2016: 6654         	str	r4, [r2, #0x64]
    2018: 6755         	str	r5, [r2, #0x74]
    201a: 6716         	str	r6, [r2, #0x70]
    201c: bd70         	pop	{r4, r5, r6, pc}
    201e: 0000         	movs	r0, r0
    2020: 00 00 00 d0  	.word	0xd0000000

Disassembly of section .text.core::fmt::Arguments::new_v1::h9316beb6095d2766:

00002024 <core::fmt::Arguments::new_v1::h9316beb6095d2766>:
    2024: b083         	sub	sp, #0xc
    2026: 9100         	str	r1, [sp]
    2028: 4601         	mov	r1, r0
    202a: 9800         	ldr	r0, [sp]
    202c: 9001         	str	r0, [sp, #0x4]
    202e: 9202         	str	r2, [sp, #0x8]
    2030: 6008         	str	r0, [r1]
    2032: 2001         	movs	r0, #0x1
    2034: 6048         	str	r0, [r1, #0x4]
    2036: 4805         	ldr	r0, [pc, #0x14]         @ 0x204c <core::fmt::Arguments::new_v1::h9316beb6095d2766+0x28>
    2038: 6803         	ldr	r3, [r0]
    203a: 6840         	ldr	r0, [r0, #0x4]
    203c: 610b         	str	r3, [r1, #0x10]
    203e: 6148         	str	r0, [r1, #0x14]
    2040: 608a         	str	r2, [r1, #0x8]
    2042: 2000         	movs	r0, #0x0
    2044: 60c8         	str	r0, [r1, #0xc]
    2046: b003         	add	sp, #0xc
    2048: 4770         	bx	lr
    204a: 46c0         	mov	r8, r8
    204c: d8 00 00 00  	.word	0x000000d8

Disassembly of section .text.core::mem::forget::h2d0aee15410ba879:

00002050 <core::mem::forget::h2d0aee15410ba879>:
    2050: b081         	sub	sp, #0x4
    2052: b001         	add	sp, #0x4
    2054: 4770         	bx	lr

Disassembly of section .text.core::num::<impl u16>::from_le_bytes::h3805788e32a5f5af:

00002056 <core::num::<impl u16>::from_le_bytes::h3805788e32a5f5af>:
    2056: b083         	sub	sp, #0xc
    2058: a901         	add	r1, sp, #0x4
    205a: 8008         	strh	r0, [r1]
    205c: 9901         	ldr	r1, [sp, #0x4]
    205e: 4668         	mov	r0, sp
    2060: 8001         	strh	r1, [r0]
    2062: 7801         	ldrb	r1, [r0]
    2064: 7840         	ldrb	r0, [r0, #0x1]
    2066: 0200         	lsls	r0, r0, #0x8
    2068: 1840         	adds	r0, r0, r1
    206a: a902         	add	r1, sp, #0x8
    206c: 8008         	strh	r0, [r1]
    206e: b003         	add	sp, #0xc
    2070: 4770         	bx	lr

Disassembly of section .text.core::ptr::drop_in_place<rp2040_hal::sio::Spinlock<31_usize>>::h0bd5a6b6d5712870:

00002072 <core::ptr::drop_in_place<rp2040_hal::sio::Spinlock<31_usize>>::h0bd5a6b6d5712870>:
    2072: b580         	push	{r7, lr}
    2074: af00         	add	r7, sp, #0x0
    2076: b082         	sub	sp, #0x8
    2078: 9001         	str	r0, [sp, #0x4]
    207a: f000 fb99    	bl	0x27b0 <<rp2040_hal::sio::Spinlock<_> as core::ops::drop::Drop>::drop::hd7bd7598a22a0ab9> @ imm = #0x732
    207e: b002         	add	sp, #0x8
    2080: bd80         	pop	{r7, pc}

Disassembly of section .text.core::ptr::drop_in_place<core::option::Option<rp2040_hal::sio::Spinlock<31_usize>>>::hddf8c53d8142ac22:

00002082 <core::ptr::drop_in_place<core::option::Option<rp2040_hal::sio::Spinlock<31_usize>>>::hddf8c53d8142ac22>:
    2082: b580         	push	{r7, lr}
    2084: af00         	add	r7, sp, #0x0
    2086: b082         	sub	sp, #0x8
    2088: 9000         	str	r0, [sp]
    208a: 9001         	str	r0, [sp, #0x4]
    208c: 7800         	ldrb	r0, [r0]
    208e: 07c0         	lsls	r0, r0, #0x1f
    2090: 2800         	cmp	r0, #0x0
    2092: d102         	bne	0x209a <core::ptr::drop_in_place<core::option::Option<rp2040_hal::sio::Spinlock<31_usize>>>::hddf8c53d8142ac22+0x18> @ imm = #0x4
    2094: e7ff         	b	0x2096 <core::ptr::drop_in_place<core::option::Option<rp2040_hal::sio::Spinlock<31_usize>>>::hddf8c53d8142ac22+0x14> @ imm = #-0x2
    2096: b002         	add	sp, #0x8
    2098: bd80         	pop	{r7, pc}
    209a: 9800         	ldr	r0, [sp]
    209c: 1c40         	adds	r0, r0, #0x1
    209e: f7ff ffe8    	bl	0x2072 <core::ptr::drop_in_place<rp2040_hal::sio::Spinlock<31_usize>>::h0bd5a6b6d5712870> @ imm = #-0x30
    20a2: e7f8         	b	0x2096 <core::ptr::drop_in_place<core::option::Option<rp2040_hal::sio::Spinlock<31_usize>>>::hddf8c53d8142ac22+0x14> @ imm = #-0x10

Disassembly of section .text.core::sync::atomic::atomic_load::h70404a9a5436edf4:

000020a4 <core::sync::atomic::atomic_load::h70404a9a5436edf4>:
    20a4: b580         	push	{r7, lr}
    20a6: af00         	add	r7, sp, #0x0
    20a8: b094         	sub	sp, #0x50
    20aa: 460a         	mov	r2, r1
    20ac: 4601         	mov	r1, r0
    20ae: 9101         	str	r1, [sp, #0x4]
    20b0: 4828         	ldr	r0, [pc, #0xa0]         @ 0x2154 <core::sync::atomic::atomic_load::h70404a9a5436edf4+0xb0>
    20b2: 9003         	str	r0, [sp, #0xc]
    20b4: 4828         	ldr	r0, [pc, #0xa0]         @ 0x2158 <core::sync::atomic::atomic_load::h70404a9a5436edf4+0xb4>
    20b6: 9004         	str	r0, [sp, #0x10]
    20b8: a805         	add	r0, sp, #0x14
    20ba: 7002         	strb	r2, [r0]
    20bc: 9113         	str	r1, [sp, #0x4c]
    20be: 7800         	ldrb	r0, [r0]
    20c0: 9002         	str	r0, [sp, #0x8]
    20c2: 9802         	ldr	r0, [sp, #0x8]
    20c4: 0081         	lsls	r1, r0, #0x2
    20c6: a001         	adr	r0, #4 <core::sync::atomic::atomic_load::h70404a9a5436edf4+0x27>
    20c8: 5840         	ldr	r0, [r0, r1]
    20ca: 4687         	mov	pc, r0
    20cc: e3 20 00 00  	.word	0x000020e3
    20d0: ed 20 00 00  	.word	0x000020ed
    20d4: 0f 21 00 00  	.word	0x0000210f
    20d8: 1d 21 00 00  	.word	0x0000211d
    20dc: 3f 21 00 00  	.word	0x0000213f
    20e0: defe         	trap
    20e2: 9801         	ldr	r0, [sp, #0x4]
    20e4: 8800         	ldrh	r0, [r0]
    20e6: a906         	add	r1, sp, #0x18
    20e8: 8008         	strh	r0, [r1]
    20ea: e02f         	b	0x214c <core::sync::atomic::atomic_load::h70404a9a5436edf4+0xa8> @ imm = #0x5e
    20ec: 481a         	ldr	r0, [pc, #0x68]         @ 0x2158 <core::sync::atomic::atomic_load::h70404a9a5436edf4+0xb4>
    20ee: 9007         	str	r0, [sp, #0x1c]
    20f0: 2001         	movs	r0, #0x1
    20f2: 9008         	str	r0, [sp, #0x20]
    20f4: 4819         	ldr	r0, [pc, #0x64]         @ 0x215c <core::sync::atomic::atomic_load::h70404a9a5436edf4+0xb8>
    20f6: 6801         	ldr	r1, [r0]
    20f8: 6840         	ldr	r0, [r0, #0x4]
    20fa: 910b         	str	r1, [sp, #0x2c]
    20fc: 900c         	str	r0, [sp, #0x30]
    20fe: 2004         	movs	r0, #0x4
    2100: 9009         	str	r0, [sp, #0x24]
    2102: 2000         	movs	r0, #0x0
    2104: 900a         	str	r0, [sp, #0x28]
    2106: 4917         	ldr	r1, [pc, #0x5c]         @ 0x2164 <core::sync::atomic::atomic_load::h70404a9a5436edf4+0xc0>
    2108: a807         	add	r0, sp, #0x1c
    210a: f000 ff75    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0xeea
    210e: 9801         	ldr	r0, [sp, #0x4]
    2110: 8800         	ldrh	r0, [r0]
    2112: f3bf 8f5f    	dmb	sy
    2116: a906         	add	r1, sp, #0x18
    2118: 8008         	strh	r0, [r1]
    211a: e017         	b	0x214c <core::sync::atomic::atomic_load::h70404a9a5436edf4+0xa8> @ imm = #0x2e
    211c: 480d         	ldr	r0, [pc, #0x34]         @ 0x2154 <core::sync::atomic::atomic_load::h70404a9a5436edf4+0xb0>
    211e: 900d         	str	r0, [sp, #0x34]
    2120: 2001         	movs	r0, #0x1
    2122: 900e         	str	r0, [sp, #0x38]
    2124: 480d         	ldr	r0, [pc, #0x34]         @ 0x215c <core::sync::atomic::atomic_load::h70404a9a5436edf4+0xb8>
    2126: 6801         	ldr	r1, [r0]
    2128: 6840         	ldr	r0, [r0, #0x4]
    212a: 9111         	str	r1, [sp, #0x44]
    212c: 9012         	str	r0, [sp, #0x48]
    212e: 2004         	movs	r0, #0x4
    2130: 900f         	str	r0, [sp, #0x3c]
    2132: 2000         	movs	r0, #0x0
    2134: 9010         	str	r0, [sp, #0x40]
    2136: 490a         	ldr	r1, [pc, #0x28]         @ 0x2160 <core::sync::atomic::atomic_load::h70404a9a5436edf4+0xbc>
    2138: a80d         	add	r0, sp, #0x34
    213a: f000 ff5d    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0xeba
    213e: 9801         	ldr	r0, [sp, #0x4]
    2140: 8800         	ldrh	r0, [r0]
    2142: f3bf 8f5f    	dmb	sy
    2146: a906         	add	r1, sp, #0x18
    2148: 8008         	strh	r0, [r1]
    214a: e7ff         	b	0x214c <core::sync::atomic::atomic_load::h70404a9a5436edf4+0xa8> @ imm = #-0x2
    214c: 9806         	ldr	r0, [sp, #0x18]
    214e: b014         	add	sp, #0x50
    2150: bd80         	pop	{r7, pc}
    2152: 46c0         	mov	r8, r8
    2154: b4 07 00 00  	.word	0x000007b4
    2158: cc 07 00 00  	.word	0x000007cc
    215c: d8 00 00 00  	.word	0x000000d8
    2160: e4 07 00 00  	.word	0x000007e4
    2164: 04 08 00 00  	.word	0x00000804

Disassembly of section .text.core::sync::atomic::atomic_load::h8afec2fcfcade792:

00002168 <core::sync::atomic::atomic_load::h8afec2fcfcade792>:
    2168: b580         	push	{r7, lr}
    216a: af00         	add	r7, sp, #0x0
    216c: b094         	sub	sp, #0x50
    216e: 460a         	mov	r2, r1
    2170: 4601         	mov	r1, r0
    2172: 9101         	str	r1, [sp, #0x4]
    2174: 4828         	ldr	r0, [pc, #0xa0]         @ 0x2218 <core::sync::atomic::atomic_load::h8afec2fcfcade792+0xb0>
    2176: 9003         	str	r0, [sp, #0xc]
    2178: 4828         	ldr	r0, [pc, #0xa0]         @ 0x221c <core::sync::atomic::atomic_load::h8afec2fcfcade792+0xb4>
    217a: 9004         	str	r0, [sp, #0x10]
    217c: a805         	add	r0, sp, #0x14
    217e: 7002         	strb	r2, [r0]
    2180: 9113         	str	r1, [sp, #0x4c]
    2182: 7800         	ldrb	r0, [r0]
    2184: 9002         	str	r0, [sp, #0x8]
    2186: 9802         	ldr	r0, [sp, #0x8]
    2188: 0081         	lsls	r1, r0, #0x2
    218a: a001         	adr	r0, #4 <core::sync::atomic::atomic_load::h8afec2fcfcade792+0x27>
    218c: 5840         	ldr	r0, [r0, r1]
    218e: 4687         	mov	pc, r0
    2190: a7 21 00 00  	.word	0x000021a7
    2194: b1 21 00 00  	.word	0x000021b1
    2198: d3 21 00 00  	.word	0x000021d3
    219c: e1 21 00 00  	.word	0x000021e1
    21a0: 03 22 00 00  	.word	0x00002203
    21a4: defe         	trap
    21a6: 9801         	ldr	r0, [sp, #0x4]
    21a8: 7800         	ldrb	r0, [r0]
    21aa: a906         	add	r1, sp, #0x18
    21ac: 7008         	strb	r0, [r1]
    21ae: e02f         	b	0x2210 <core::sync::atomic::atomic_load::h8afec2fcfcade792+0xa8> @ imm = #0x5e
    21b0: 481a         	ldr	r0, [pc, #0x68]         @ 0x221c <core::sync::atomic::atomic_load::h8afec2fcfcade792+0xb4>
    21b2: 9007         	str	r0, [sp, #0x1c]
    21b4: 2001         	movs	r0, #0x1
    21b6: 9008         	str	r0, [sp, #0x20]
    21b8: 4819         	ldr	r0, [pc, #0x64]         @ 0x2220 <core::sync::atomic::atomic_load::h8afec2fcfcade792+0xb8>
    21ba: 6801         	ldr	r1, [r0]
    21bc: 6840         	ldr	r0, [r0, #0x4]
    21be: 910b         	str	r1, [sp, #0x2c]
    21c0: 900c         	str	r0, [sp, #0x30]
    21c2: 2004         	movs	r0, #0x4
    21c4: 9009         	str	r0, [sp, #0x24]
    21c6: 2000         	movs	r0, #0x0
    21c8: 900a         	str	r0, [sp, #0x28]
    21ca: 4917         	ldr	r1, [pc, #0x5c]         @ 0x2228 <core::sync::atomic::atomic_load::h8afec2fcfcade792+0xc0>
    21cc: a807         	add	r0, sp, #0x1c
    21ce: f000 ff13    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0xe26
    21d2: 9801         	ldr	r0, [sp, #0x4]
    21d4: 7800         	ldrb	r0, [r0]
    21d6: f3bf 8f5f    	dmb	sy
    21da: a906         	add	r1, sp, #0x18
    21dc: 7008         	strb	r0, [r1]
    21de: e017         	b	0x2210 <core::sync::atomic::atomic_load::h8afec2fcfcade792+0xa8> @ imm = #0x2e
    21e0: 480d         	ldr	r0, [pc, #0x34]         @ 0x2218 <core::sync::atomic::atomic_load::h8afec2fcfcade792+0xb0>
    21e2: 900d         	str	r0, [sp, #0x34]
    21e4: 2001         	movs	r0, #0x1
    21e6: 900e         	str	r0, [sp, #0x38]
    21e8: 480d         	ldr	r0, [pc, #0x34]         @ 0x2220 <core::sync::atomic::atomic_load::h8afec2fcfcade792+0xb8>
    21ea: 6801         	ldr	r1, [r0]
    21ec: 6840         	ldr	r0, [r0, #0x4]
    21ee: 9111         	str	r1, [sp, #0x44]
    21f0: 9012         	str	r0, [sp, #0x48]
    21f2: 2004         	movs	r0, #0x4
    21f4: 900f         	str	r0, [sp, #0x3c]
    21f6: 2000         	movs	r0, #0x0
    21f8: 9010         	str	r0, [sp, #0x40]
    21fa: 490a         	ldr	r1, [pc, #0x28]         @ 0x2224 <core::sync::atomic::atomic_load::h8afec2fcfcade792+0xbc>
    21fc: a80d         	add	r0, sp, #0x34
    21fe: f000 fefb    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0xdf6
    2202: 9801         	ldr	r0, [sp, #0x4]
    2204: 7800         	ldrb	r0, [r0]
    2206: f3bf 8f5f    	dmb	sy
    220a: a906         	add	r1, sp, #0x18
    220c: 7008         	strb	r0, [r1]
    220e: e7ff         	b	0x2210 <core::sync::atomic::atomic_load::h8afec2fcfcade792+0xa8> @ imm = #-0x2
    2210: 9806         	ldr	r0, [sp, #0x18]
    2212: b014         	add	sp, #0x50
    2214: bd80         	pop	{r7, pc}
    2216: 46c0         	mov	r8, r8
    2218: b4 07 00 00  	.word	0x000007b4
    221c: cc 07 00 00  	.word	0x000007cc
    2220: d8 00 00 00  	.word	0x000000d8
    2224: e4 07 00 00  	.word	0x000007e4
    2228: 04 08 00 00  	.word	0x00000804

Disassembly of section .text.core::sync::atomic::atomic_store::h07f6ebc8b14321a8:

0000222c <core::sync::atomic::atomic_store::h07f6ebc8b14321a8>:
    222c: b580         	push	{r7, lr}
    222e: af00         	add	r7, sp, #0x0
    2230: b094         	sub	sp, #0x50
    2232: 4613         	mov	r3, r2
    2234: 4602         	mov	r2, r0
    2236: 9200         	str	r2, [sp]
    2238: 4608         	mov	r0, r1
    223a: 9001         	str	r0, [sp, #0x4]
    223c: 4828         	ldr	r0, [pc, #0xa0]         @ 0x22e0 <core::sync::atomic::atomic_store::h07f6ebc8b14321a8+0xb4>
    223e: 9003         	str	r0, [sp, #0xc]
    2240: 4828         	ldr	r0, [pc, #0xa0]         @ 0x22e4 <core::sync::atomic::atomic_store::h07f6ebc8b14321a8+0xb8>
    2242: 9004         	str	r0, [sp, #0x10]
    2244: a805         	add	r0, sp, #0x14
    2246: 7003         	strb	r3, [r0]
    2248: 9212         	str	r2, [sp, #0x48]
    224a: aa13         	add	r2, sp, #0x4c
    224c: 8011         	strh	r1, [r2]
    224e: 7800         	ldrb	r0, [r0]
    2250: 9002         	str	r0, [sp, #0x8]
    2252: 9802         	ldr	r0, [sp, #0x8]
    2254: 0081         	lsls	r1, r0, #0x2
    2256: a001         	adr	r0, #4 <core::sync::atomic::atomic_store::h07f6ebc8b14321a8+0x2f>
    2258: 5840         	ldr	r0, [r0, r1]
    225a: 4687         	mov	pc, r0
    225c: 73 22 00 00  	.word	0x00002273
    2260: 7b 22 00 00  	.word	0x0000227b
    2264: 87 22 00 00  	.word	0x00002287
    2268: a9 22 00 00  	.word	0x000022a9
    226c: cb 22 00 00  	.word	0x000022cb
    2270: defe         	trap
    2272: 9801         	ldr	r0, [sp, #0x4]
    2274: 9900         	ldr	r1, [sp]
    2276: 8008         	strh	r0, [r1]
    2278: e02f         	b	0x22da <core::sync::atomic::atomic_store::h07f6ebc8b14321a8+0xae> @ imm = #0x5e
    227a: 9801         	ldr	r0, [sp, #0x4]
    227c: 9900         	ldr	r1, [sp]
    227e: f3bf 8f5f    	dmb	sy
    2282: 8008         	strh	r0, [r1]
    2284: e029         	b	0x22da <core::sync::atomic::atomic_store::h07f6ebc8b14321a8+0xae> @ imm = #0x52
    2286: 4817         	ldr	r0, [pc, #0x5c]         @ 0x22e4 <core::sync::atomic::atomic_store::h07f6ebc8b14321a8+0xb8>
    2288: 9006         	str	r0, [sp, #0x18]
    228a: 2001         	movs	r0, #0x1
    228c: 9007         	str	r0, [sp, #0x1c]
    228e: 4816         	ldr	r0, [pc, #0x58]         @ 0x22e8 <core::sync::atomic::atomic_store::h07f6ebc8b14321a8+0xbc>
    2290: 6801         	ldr	r1, [r0]
    2292: 6840         	ldr	r0, [r0, #0x4]
    2294: 910a         	str	r1, [sp, #0x28]
    2296: 900b         	str	r0, [sp, #0x2c]
    2298: 2004         	movs	r0, #0x4
    229a: 9008         	str	r0, [sp, #0x20]
    229c: 2000         	movs	r0, #0x0
    229e: 9009         	str	r0, [sp, #0x24]
    22a0: 4913         	ldr	r1, [pc, #0x4c]         @ 0x22f0 <core::sync::atomic::atomic_store::h07f6ebc8b14321a8+0xc4>
    22a2: a806         	add	r0, sp, #0x18
    22a4: f000 fea8    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0xd50
    22a8: 480d         	ldr	r0, [pc, #0x34]         @ 0x22e0 <core::sync::atomic::atomic_store::h07f6ebc8b14321a8+0xb4>
    22aa: 900c         	str	r0, [sp, #0x30]
    22ac: 2001         	movs	r0, #0x1
    22ae: 900d         	str	r0, [sp, #0x34]
    22b0: 480d         	ldr	r0, [pc, #0x34]         @ 0x22e8 <core::sync::atomic::atomic_store::h07f6ebc8b14321a8+0xbc>
    22b2: 6801         	ldr	r1, [r0]
    22b4: 6840         	ldr	r0, [r0, #0x4]
    22b6: 9110         	str	r1, [sp, #0x40]
    22b8: 9011         	str	r0, [sp, #0x44]
    22ba: 2004         	movs	r0, #0x4
    22bc: 900e         	str	r0, [sp, #0x38]
    22be: 2000         	movs	r0, #0x0
    22c0: 900f         	str	r0, [sp, #0x3c]
    22c2: 490a         	ldr	r1, [pc, #0x28]         @ 0x22ec <core::sync::atomic::atomic_store::h07f6ebc8b14321a8+0xc0>
    22c4: a80c         	add	r0, sp, #0x30
    22c6: f000 fe97    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0xd2e
    22ca: 9801         	ldr	r0, [sp, #0x4]
    22cc: 9900         	ldr	r1, [sp]
    22ce: f3bf 8f5f    	dmb	sy
    22d2: 8008         	strh	r0, [r1]
    22d4: f3bf 8f5f    	dmb	sy
    22d8: e7ff         	b	0x22da <core::sync::atomic::atomic_store::h07f6ebc8b14321a8+0xae> @ imm = #-0x2
    22da: b014         	add	sp, #0x50
    22dc: bd80         	pop	{r7, pc}
    22de: 46c0         	mov	r8, r8
    22e0: 24 08 00 00  	.word	0x00000824
    22e4: 9c 08 00 00  	.word	0x0000089c
    22e8: d8 00 00 00  	.word	0x000000d8
    22ec: ec 08 00 00  	.word	0x000008ec
    22f0: cc 08 00 00  	.word	0x000008cc

Disassembly of section .text.core::sync::atomic::atomic_store::hd705e05ba94532d8:

000022f4 <core::sync::atomic::atomic_store::hd705e05ba94532d8>:
    22f4: b580         	push	{r7, lr}
    22f6: af00         	add	r7, sp, #0x0
    22f8: b094         	sub	sp, #0x50
    22fa: 4613         	mov	r3, r2
    22fc: 4602         	mov	r2, r0
    22fe: 9200         	str	r2, [sp]
    2300: 4608         	mov	r0, r1
    2302: 9001         	str	r0, [sp, #0x4]
    2304: 4828         	ldr	r0, [pc, #0xa0]         @ 0x23a8 <core::sync::atomic::atomic_store::hd705e05ba94532d8+0xb4>
    2306: 9003         	str	r0, [sp, #0xc]
    2308: 4828         	ldr	r0, [pc, #0xa0]         @ 0x23ac <core::sync::atomic::atomic_store::hd705e05ba94532d8+0xb8>
    230a: 9004         	str	r0, [sp, #0x10]
    230c: a805         	add	r0, sp, #0x14
    230e: 7003         	strb	r3, [r0]
    2310: 9212         	str	r2, [sp, #0x48]
    2312: aa13         	add	r2, sp, #0x4c
    2314: 7011         	strb	r1, [r2]
    2316: 7800         	ldrb	r0, [r0]
    2318: 9002         	str	r0, [sp, #0x8]
    231a: 9802         	ldr	r0, [sp, #0x8]
    231c: 0081         	lsls	r1, r0, #0x2
    231e: a001         	adr	r0, #4 <core::sync::atomic::atomic_store::hd705e05ba94532d8+0x2f>
    2320: 5840         	ldr	r0, [r0, r1]
    2322: 4687         	mov	pc, r0
    2324: 3b 23 00 00  	.word	0x0000233b
    2328: 43 23 00 00  	.word	0x00002343
    232c: 4f 23 00 00  	.word	0x0000234f
    2330: 71 23 00 00  	.word	0x00002371
    2334: 93 23 00 00  	.word	0x00002393
    2338: defe         	trap
    233a: 9801         	ldr	r0, [sp, #0x4]
    233c: 9900         	ldr	r1, [sp]
    233e: 7008         	strb	r0, [r1]
    2340: e02f         	b	0x23a2 <core::sync::atomic::atomic_store::hd705e05ba94532d8+0xae> @ imm = #0x5e
    2342: 9801         	ldr	r0, [sp, #0x4]
    2344: 9900         	ldr	r1, [sp]
    2346: f3bf 8f5f    	dmb	sy
    234a: 7008         	strb	r0, [r1]
    234c: e029         	b	0x23a2 <core::sync::atomic::atomic_store::hd705e05ba94532d8+0xae> @ imm = #0x52
    234e: 4817         	ldr	r0, [pc, #0x5c]         @ 0x23ac <core::sync::atomic::atomic_store::hd705e05ba94532d8+0xb8>
    2350: 9006         	str	r0, [sp, #0x18]
    2352: 2001         	movs	r0, #0x1
    2354: 9007         	str	r0, [sp, #0x1c]
    2356: 4816         	ldr	r0, [pc, #0x58]         @ 0x23b0 <core::sync::atomic::atomic_store::hd705e05ba94532d8+0xbc>
    2358: 6801         	ldr	r1, [r0]
    235a: 6840         	ldr	r0, [r0, #0x4]
    235c: 910a         	str	r1, [sp, #0x28]
    235e: 900b         	str	r0, [sp, #0x2c]
    2360: 2004         	movs	r0, #0x4
    2362: 9008         	str	r0, [sp, #0x20]
    2364: 2000         	movs	r0, #0x0
    2366: 9009         	str	r0, [sp, #0x24]
    2368: 4913         	ldr	r1, [pc, #0x4c]         @ 0x23b8 <core::sync::atomic::atomic_store::hd705e05ba94532d8+0xc4>
    236a: a806         	add	r0, sp, #0x18
    236c: f000 fe44    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0xc88
    2370: 480d         	ldr	r0, [pc, #0x34]         @ 0x23a8 <core::sync::atomic::atomic_store::hd705e05ba94532d8+0xb4>
    2372: 900c         	str	r0, [sp, #0x30]
    2374: 2001         	movs	r0, #0x1
    2376: 900d         	str	r0, [sp, #0x34]
    2378: 480d         	ldr	r0, [pc, #0x34]         @ 0x23b0 <core::sync::atomic::atomic_store::hd705e05ba94532d8+0xbc>
    237a: 6801         	ldr	r1, [r0]
    237c: 6840         	ldr	r0, [r0, #0x4]
    237e: 9110         	str	r1, [sp, #0x40]
    2380: 9011         	str	r0, [sp, #0x44]
    2382: 2004         	movs	r0, #0x4
    2384: 900e         	str	r0, [sp, #0x38]
    2386: 2000         	movs	r0, #0x0
    2388: 900f         	str	r0, [sp, #0x3c]
    238a: 490a         	ldr	r1, [pc, #0x28]         @ 0x23b4 <core::sync::atomic::atomic_store::hd705e05ba94532d8+0xc0>
    238c: a80c         	add	r0, sp, #0x30
    238e: f000 fe33    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0xc66
    2392: 9801         	ldr	r0, [sp, #0x4]
    2394: 9900         	ldr	r1, [sp]
    2396: f3bf 8f5f    	dmb	sy
    239a: 7008         	strb	r0, [r1]
    239c: f3bf 8f5f    	dmb	sy
    23a0: e7ff         	b	0x23a2 <core::sync::atomic::atomic_store::hd705e05ba94532d8+0xae> @ imm = #-0x2
    23a2: b014         	add	sp, #0x50
    23a4: bd80         	pop	{r7, pc}
    23a6: 46c0         	mov	r8, r8
    23a8: 24 08 00 00  	.word	0x00000824
    23ac: 9c 08 00 00  	.word	0x0000089c
    23b0: d8 00 00 00  	.word	0x000000d8
    23b4: ec 08 00 00  	.word	0x000008ec
    23b8: cc 08 00 00  	.word	0x000008cc

Disassembly of section .text.core::sync::atomic::compiler_fence::he2c26c5588bd4c6e:

000023bc <core::sync::atomic::compiler_fence::he2c26c5588bd4c6e>:
    23bc: b580         	push	{r7, lr}
    23be: af00         	add	r7, sp, #0x0
    23c0: b08a         	sub	sp, #0x28
    23c2: 4601         	mov	r1, r0
    23c4: 4816         	ldr	r0, [pc, #0x58]         @ 0x2420 <core::sync::atomic::compiler_fence::he2c26c5588bd4c6e+0x64>
    23c6: 9002         	str	r0, [sp, #0x8]
    23c8: a803         	add	r0, sp, #0xc
    23ca: 7001         	strb	r1, [r0]
    23cc: 7800         	ldrb	r0, [r0]
    23ce: 9001         	str	r0, [sp, #0x4]
    23d0: 9801         	ldr	r0, [sp, #0x4]
    23d2: 0081         	lsls	r1, r0, #0x2
    23d4: a001         	adr	r0, #4 <core::sync::atomic::compiler_fence::he2c26c5588bd4c6e+0x1d>
    23d6: 5840         	ldr	r0, [r0, r1]
    23d8: 4687         	mov	pc, r0
    23da: 46c0         	mov	r8, r8
    23dc: f3 23 00 00  	.word	0x000023f3
    23e0: 15 24 00 00  	.word	0x00002415
    23e4: 17 24 00 00  	.word	0x00002417
    23e8: 19 24 00 00  	.word	0x00002419
    23ec: 1b 24 00 00  	.word	0x0000241b
    23f0: defe         	trap
    23f2: 480b         	ldr	r0, [pc, #0x2c]         @ 0x2420 <core::sync::atomic::compiler_fence::he2c26c5588bd4c6e+0x64>
    23f4: 9004         	str	r0, [sp, #0x10]
    23f6: 2001         	movs	r0, #0x1
    23f8: 9005         	str	r0, [sp, #0x14]
    23fa: 480a         	ldr	r0, [pc, #0x28]         @ 0x2424 <core::sync::atomic::compiler_fence::he2c26c5588bd4c6e+0x68>
    23fc: 6801         	ldr	r1, [r0]
    23fe: 6840         	ldr	r0, [r0, #0x4]
    2400: 9108         	str	r1, [sp, #0x20]
    2402: 9009         	str	r0, [sp, #0x24]
    2404: 2004         	movs	r0, #0x4
    2406: 9006         	str	r0, [sp, #0x18]
    2408: 2000         	movs	r0, #0x0
    240a: 9007         	str	r0, [sp, #0x1c]
    240c: 4906         	ldr	r1, [pc, #0x18]         @ 0x2428 <core::sync::atomic::compiler_fence::he2c26c5588bd4c6e+0x6c>
    240e: a804         	add	r0, sp, #0x10
    2410: f000 fdf2    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0xbe4
    2414: e002         	b	0x241c <core::sync::atomic::compiler_fence::he2c26c5588bd4c6e+0x60> @ imm = #0x4
    2416: e001         	b	0x241c <core::sync::atomic::compiler_fence::he2c26c5588bd4c6e+0x60> @ imm = #0x2
    2418: e000         	b	0x241c <core::sync::atomic::compiler_fence::he2c26c5588bd4c6e+0x60> @ imm = #0x0
    241a: e7ff         	b	0x241c <core::sync::atomic::compiler_fence::he2c26c5588bd4c6e+0x60> @ imm = #-0x2
    241c: b00a         	add	sp, #0x28
    241e: bd80         	pop	{r7, pc}
    2420: b4 08 00 00  	.word	0x000008b4
    2424: d8 00 00 00  	.word	0x000000d8
    2428: 1c 09 00 00  	.word	0x0000091c

Disassembly of section .text.core::sync::atomic::AtomicU8::load::h01a48e36caf40e94:

0000242c <core::sync::atomic::AtomicU8::load::h01a48e36caf40e94>:
    242c: b580         	push	{r7, lr}
    242e: af00         	add	r7, sp, #0x0
    2430: b084         	sub	sp, #0x10
    2432: 9001         	str	r0, [sp, #0x4]
    2434: aa02         	add	r2, sp, #0x8
    2436: 7011         	strb	r1, [r2]
    2438: 9003         	str	r0, [sp, #0xc]
    243a: f7ff fe95    	bl	0x2168 <core::sync::atomic::atomic_load::h8afec2fcfcade792> @ imm = #-0x2d6
    243e: b004         	add	sp, #0x10
    2440: bd80         	pop	{r7, pc}

Disassembly of section .text.core::sync::atomic::AtomicU8::store::hdebde5e28cf33bb1:

00002442 <core::sync::atomic::AtomicU8::store::hdebde5e28cf33bb1>:
    2442: b580         	push	{r7, lr}
    2444: af00         	add	r7, sp, #0x0
    2446: b084         	sub	sp, #0x10
    2448: 9000         	str	r0, [sp]
    244a: ab01         	add	r3, sp, #0x4
    244c: 7019         	strb	r1, [r3]
    244e: ab02         	add	r3, sp, #0x8
    2450: 701a         	strb	r2, [r3]
    2452: 9003         	str	r0, [sp, #0xc]
    2454: f7ff ff4e    	bl	0x22f4 <core::sync::atomic::atomic_store::hd705e05ba94532d8> @ imm = #-0x164
    2458: b004         	add	sp, #0x10
    245a: bd80         	pop	{r7, pc}

Disassembly of section .text.core::sync::atomic::AtomicU16::load::hc1835f9ea18e85af:

0000245c <core::sync::atomic::AtomicU16::load::hc1835f9ea18e85af>:
    245c: b580         	push	{r7, lr}
    245e: af00         	add	r7, sp, #0x0
    2460: b084         	sub	sp, #0x10
    2462: 9001         	str	r0, [sp, #0x4]
    2464: aa02         	add	r2, sp, #0x8
    2466: 7011         	strb	r1, [r2]
    2468: 9003         	str	r0, [sp, #0xc]
    246a: f7ff fe1b    	bl	0x20a4 <core::sync::atomic::atomic_load::h70404a9a5436edf4> @ imm = #-0x3ca
    246e: b004         	add	sp, #0x10
    2470: bd80         	pop	{r7, pc}

Disassembly of section .text.core::sync::atomic::AtomicU16::store::h3e85cc5ad8e5ba80:

00002472 <core::sync::atomic::AtomicU16::store::h3e85cc5ad8e5ba80>:
    2472: b580         	push	{r7, lr}
    2474: af00         	add	r7, sp, #0x0
    2476: b084         	sub	sp, #0x10
    2478: 9000         	str	r0, [sp]
    247a: ab01         	add	r3, sp, #0x4
    247c: 8019         	strh	r1, [r3]
    247e: ab02         	add	r3, sp, #0x8
    2480: 701a         	strb	r2, [r3]
    2482: 9003         	str	r0, [sp, #0xc]
    2484: f7ff fed2    	bl	0x222c <core::sync::atomic::atomic_store::h07f6ebc8b14321a8> @ imm = #-0x25c
    2488: b004         	add	sp, #0x10
    248a: bd80         	pop	{r7, pc}

Disassembly of section .text.<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h1b9d840e39109c53:

0000248c <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h1b9d840e39109c53>:
    248c: b084         	sub	sp, #0x10
    248e: 9000         	str	r0, [sp]
    2490: 9101         	str	r1, [sp, #0x4]
    2492: 7800         	ldrb	r0, [r0]
    2494: 2201         	movs	r2, #0x1
    2496: 4010         	ands	r0, r2
    2498: 9002         	str	r0, [sp, #0x8]
    249a: 7809         	ldrb	r1, [r1]
    249c: 4011         	ands	r1, r2
    249e: 9103         	str	r1, [sp, #0xc]
    24a0: 1a40         	subs	r0, r0, r1
    24a2: 4241         	rsbs	r1, r0, #0
    24a4: 4148         	adcs	r0, r1
    24a6: b004         	add	sp, #0x10
    24a8: 4770         	bx	lr

Disassembly of section .text.cortex_m::register::primask::read::hd3530e19387049e6:

000024aa <cortex_m::register::primask::read::hd3530e19387049e6>:
    24aa: b580         	push	{r7, lr}
    24ac: af00         	add	r7, sp, #0x0
    24ae: b082         	sub	sp, #0x8
    24b0: f000 fd4e    	bl	0x2f50 <__primask_r>    @ imm = #0xa9c
    24b4: 9001         	str	r0, [sp, #0x4]
    24b6: 2101         	movs	r1, #0x1
    24b8: 4008         	ands	r0, r1
    24ba: 2801         	cmp	r0, #0x1
    24bc: d004         	beq	0x24c8 <cortex_m::register::primask::read::hd3530e19387049e6+0x1e> @ imm = #0x8
    24be: e7ff         	b	0x24c0 <cortex_m::register::primask::read::hd3530e19387049e6+0x16> @ imm = #-0x2
    24c0: 4669         	mov	r1, sp
    24c2: 2000         	movs	r0, #0x0
    24c4: 7008         	strb	r0, [r1]
    24c6: e003         	b	0x24d0 <cortex_m::register::primask::read::hd3530e19387049e6+0x26> @ imm = #0x6
    24c8: 4669         	mov	r1, sp
    24ca: 2001         	movs	r0, #0x1
    24cc: 7008         	strb	r0, [r1]
    24ce: e7ff         	b	0x24d0 <cortex_m::register::primask::read::hd3530e19387049e6+0x26> @ imm = #-0x2
    24d0: 4668         	mov	r0, sp
    24d2: 7800         	ldrb	r0, [r0]
    24d4: 2101         	movs	r1, #0x1
    24d6: 4008         	ands	r0, r1
    24d8: b002         	add	sp, #0x8
    24da: bd80         	pop	{r7, pc}

Disassembly of section .text.cortex_m::register::primask::Primask::is_active::hadbe31a94c71172d:

000024dc <cortex_m::register::primask::Primask::is_active::hadbe31a94c71172d>:
    24dc: b580         	push	{r7, lr}
    24de: af00         	add	r7, sp, #0x0
    24e0: b082         	sub	sp, #0x8
    24e2: 4601         	mov	r1, r0
    24e4: a801         	add	r0, sp, #0x4
    24e6: 7001         	strb	r1, [r0]
    24e8: 4902         	ldr	r1, [pc, #0x8]          @ 0x24f4 <cortex_m::register::primask::Primask::is_active::hadbe31a94c71172d+0x18>
    24ea: f7ff ffcf    	bl	0x248c <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h1b9d840e39109c53> @ imm = #-0x62
    24ee: b002         	add	sp, #0x8
    24f0: bd80         	pop	{r7, pc}
    24f2: 46c0         	mov	r8, r8
    24f4: 16 07 00 00  	.word	0x00000716

Disassembly of section .text.cortex_m::interrupt::enable::h136226647b6e0bdd:

000024f8 <cortex_m::interrupt::enable::h136226647b6e0bdd>:
    24f8: b580         	push	{r7, lr}
    24fa: af00         	add	r7, sp, #0x0
    24fc: f000 fd26    	bl	0x2f4c <__cpsie>        @ imm = #0xa4c
    2500: bd80         	pop	{r7, pc}

Disassembly of section .text.cortex_m::interrupt::disable::hcdf3bbf797f4b25c:

00002502 <cortex_m::interrupt::disable::hcdf3bbf797f4b25c>:
    2502: b580         	push	{r7, lr}
    2504: af00         	add	r7, sp, #0x0
    2506: f000 fd1f    	bl	0x2f48 <__cpsid>        @ imm = #0xa3e
    250a: bd80         	pop	{r7, pc}

Disassembly of section .text.<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::he9c3e3d32a429ac5:

0000250c <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::he9c3e3d32a429ac5>:
    250c: b580         	push	{r7, lr}
    250e: af00         	add	r7, sp, #0x0
    2510: f000 f80a    	bl	0x2528 <rp2040_hal::critical_section_impl::RpSpinlockCs::acquire::hf99adc9d0ae4eb92> @ imm = #0x14
    2514: bd80         	pop	{r7, pc}

Disassembly of section .text.<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::release::he6436d97c58ab749:

00002516 <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::release::he6436d97c58ab749>:
    2516: b580         	push	{r7, lr}
    2518: af00         	add	r7, sp, #0x0
    251a: b082         	sub	sp, #0x8
    251c: a901         	add	r1, sp, #0x4
    251e: 7008         	strb	r0, [r1]
    2520: f000 f86e    	bl	0x2600 <rp2040_hal::critical_section_impl::RpSpinlockCs::release::hb04888d5fa0dab2e> @ imm = #0xdc
    2524: b002         	add	sp, #0x8
    2526: bd80         	pop	{r7, pc}

Disassembly of section .text.rp2040_hal::critical_section_impl::RpSpinlockCs::acquire::hf99adc9d0ae4eb92:

00002528 <rp2040_hal::critical_section_impl::RpSpinlockCs::acquire::hf99adc9d0ae4eb92>:
    2528: b580         	push	{r7, lr}
    252a: af00         	add	r7, sp, #0x0
    252c: b08e         	sub	sp, #0x38
    252e: a806         	add	r0, sp, #0x18
    2530: 9002         	str	r0, [sp, #0x8]
    2532: f7ff ffba    	bl	0x24aa <cortex_m::register::primask::read::hd3530e19387049e6> @ imm = #-0x8c
    2536: f7ff ffd1    	bl	0x24dc <cortex_m::register::primask::Primask::is_active::hadbe31a94c71172d> @ imm = #-0x5e
    253a: 4601         	mov	r1, r0
    253c: 9103         	str	r1, [sp, #0xc]
    253e: a90c         	add	r1, sp, #0x30
    2540: 7008         	strb	r0, [r1]
    2542: f000 f8b1    	bl	0x26a8 <rp2040_hal::sio::Sio::core::h775db04ecbc44574> @ imm = #0x162
    2546: 4601         	mov	r1, r0
    2548: a807         	add	r0, sp, #0x1c
    254a: 7001         	strb	r1, [r0]
    254c: 7800         	ldrb	r0, [r0]
    254e: 2101         	movs	r1, #0x1
    2550: 4008         	ands	r0, r1
    2552: 1c40         	adds	r0, r0, #0x1
    2554: 9004         	str	r0, [sp, #0x10]
    2556: 2000         	movs	r0, #0x0
    2558: 2800         	cmp	r0, #0x0
    255a: d112         	bne	0x2582 <rp2040_hal::critical_section_impl::RpSpinlockCs::acquire::hf99adc9d0ae4eb92+0x5a> @ imm = #0x24
    255c: e7ff         	b	0x255e <rp2040_hal::critical_section_impl::RpSpinlockCs::acquire::hf99adc9d0ae4eb92+0x36> @ imm = #-0x2
    255e: 9802         	ldr	r0, [sp, #0x8]
    2560: 9904         	ldr	r1, [sp, #0x10]
    2562: aa0d         	add	r2, sp, #0x34
    2564: 7011         	strb	r1, [r2]
    2566: b2c9         	uxtb	r1, r1
    2568: 9101         	str	r1, [sp, #0x4]
    256a: aa08         	add	r2, sp, #0x20
    256c: 2102         	movs	r1, #0x2
    256e: 7011         	strb	r1, [r2]
    2570: 6881         	ldr	r1, [r0, #0x8]
    2572: 4821         	ldr	r0, [pc, #0x84]         @ 0x25f8 <rp2040_hal::critical_section_impl::RpSpinlockCs::acquire::hf99adc9d0ae4eb92+0xd0>
    2574: f7ff ff5a    	bl	0x242c <core::sync::atomic::AtomicU8::load::h01a48e36caf40e94> @ imm = #-0x14c
    2578: 9901         	ldr	r1, [sp, #0x4]
    257a: b2c0         	uxtb	r0, r0
    257c: 4288         	cmp	r0, r1
    257e: d017         	beq	0x25b0 <rp2040_hal::critical_section_impl::RpSpinlockCs::acquire::hf99adc9d0ae4eb92+0x88> @ imm = #0x2e
    2580: e002         	b	0x2588 <rp2040_hal::critical_section_impl::RpSpinlockCs::acquire::hf99adc9d0ae4eb92+0x60> @ imm = #0x4
    2582: 481e         	ldr	r0, [pc, #0x78]         @ 0x25fc <rp2040_hal::critical_section_impl::RpSpinlockCs::acquire::hf99adc9d0ae4eb92+0xd4>
    2584: f001 faf8    	bl	0x3b78 <core::panicking::panic_const::panic_const_add_overflow::hf5cb0614de41d6eb> @ imm = #0x15f0
    2588: f7ff ffbb    	bl	0x2502 <cortex_m::interrupt::disable::hcdf3bbf797f4b25c> @ imm = #-0x8a
    258c: 9802         	ldr	r0, [sp, #0x8]
    258e: aa09         	add	r2, sp, #0x24
    2590: 2104         	movs	r1, #0x4
    2592: 7011         	strb	r1, [r2]
    2594: 68c0         	ldr	r0, [r0, #0xc]
    2596: f7ff ff11    	bl	0x23bc <core::sync::atomic::compiler_fence::he2c26c5588bd4c6e> @ imm = #-0x1de
    259a: f000 f8bb    	bl	0x2714 <rp2040_hal::sio::Spinlock<_>::try_claim::h442292674fabaad9> @ imm = #0x176
    259e: 4601         	mov	r1, r0
    25a0: a80a         	add	r0, sp, #0x28
    25a2: 7001         	strb	r1, [r0]
    25a4: 7800         	ldrb	r0, [r0]
    25a6: 2101         	movs	r1, #0x1
    25a8: 4008         	ands	r0, r1
    25aa: 2801         	cmp	r0, #0x1
    25ac: d004         	beq	0x25b8 <rp2040_hal::critical_section_impl::RpSpinlockCs::acquire::hf99adc9d0ae4eb92+0x90> @ imm = #0x8
    25ae: e014         	b	0x25da <rp2040_hal::critical_section_impl::RpSpinlockCs::acquire::hf99adc9d0ae4eb92+0xb2> @ imm = #0x28
    25b0: a906         	add	r1, sp, #0x18
    25b2: 2002         	movs	r0, #0x2
    25b4: 7008         	strb	r0, [r1]
    25b6: e018         	b	0x25ea <rp2040_hal::critical_section_impl::RpSpinlockCs::acquire::hf99adc9d0ae4eb92+0xc2> @ imm = #0x30
    25b8: f7ff fd4a    	bl	0x2050 <core::mem::forget::h2d0aee15410ba879> @ imm = #-0x56c
    25bc: 9802         	ldr	r0, [sp, #0x8]
    25be: 9904         	ldr	r1, [sp, #0x10]
    25c0: ab0b         	add	r3, sp, #0x2c
    25c2: 2200         	movs	r2, #0x0
    25c4: 701a         	strb	r2, [r3]
    25c6: 6942         	ldr	r2, [r0, #0x14]
    25c8: 480b         	ldr	r0, [pc, #0x2c]         @ 0x25f8 <rp2040_hal::critical_section_impl::RpSpinlockCs::acquire::hf99adc9d0ae4eb92+0xd0>
    25ca: f7ff ff3a    	bl	0x2442 <core::sync::atomic::AtomicU8::store::hdebde5e28cf33bb1> @ imm = #-0x18c
    25ce: 9803         	ldr	r0, [sp, #0xc]
    25d0: 2101         	movs	r1, #0x1
    25d2: 4008         	ands	r0, r1
    25d4: a906         	add	r1, sp, #0x18
    25d6: 7008         	strb	r0, [r1]
    25d8: e007         	b	0x25ea <rp2040_hal::critical_section_impl::RpSpinlockCs::acquire::hf99adc9d0ae4eb92+0xc2> @ imm = #0xe
    25da: a80a         	add	r0, sp, #0x28
    25dc: f7ff fd51    	bl	0x2082 <core::ptr::drop_in_place<core::option::Option<rp2040_hal::sio::Spinlock<31_usize>>>::hddf8c53d8142ac22> @ imm = #-0x55e
    25e0: 9803         	ldr	r0, [sp, #0xc]
    25e2: 07c0         	lsls	r0, r0, #0x1f
    25e4: 2800         	cmp	r0, #0x0
    25e6: d104         	bne	0x25f2 <rp2040_hal::critical_section_impl::RpSpinlockCs::acquire::hf99adc9d0ae4eb92+0xca> @ imm = #0x8
    25e8: e7ce         	b	0x2588 <rp2040_hal::critical_section_impl::RpSpinlockCs::acquire::hf99adc9d0ae4eb92+0x60> @ imm = #-0x64
    25ea: 9802         	ldr	r0, [sp, #0x8]
    25ec: 6800         	ldr	r0, [r0]
    25ee: b00e         	add	sp, #0x38
    25f0: bd80         	pop	{r7, pc}
    25f2: f7ff ff81    	bl	0x24f8 <cortex_m::interrupt::enable::h136226647b6e0bdd> @ imm = #-0xfe
    25f6: e7c7         	b	0x2588 <rp2040_hal::critical_section_impl::RpSpinlockCs::acquire::hf99adc9d0ae4eb92+0x60> @ imm = #-0x72
    25f8: e6 41 00 00  	.word	0x000041e6
    25fc: 7c 0b 00 00  	.word	0x00000b7c

Disassembly of section .text.rp2040_hal::critical_section_impl::RpSpinlockCs::release::hb04888d5fa0dab2e:

00002600 <rp2040_hal::critical_section_impl::RpSpinlockCs::release::hb04888d5fa0dab2e>:
    2600: b580         	push	{r7, lr}
    2602: af00         	add	r7, sp, #0x0
    2604: b084         	sub	sp, #0x10
    2606: 4601         	mov	r1, r0
    2608: b2c8         	uxtb	r0, r1
    260a: 460a         	mov	r2, r1
    260c: 9200         	str	r2, [sp]
    260e: aa03         	add	r2, sp, #0xc
    2610: 7011         	strb	r1, [r2]
    2612: 2802         	cmp	r0, #0x2
    2614: d102         	bne	0x261c <rp2040_hal::critical_section_impl::RpSpinlockCs::release::hb04888d5fa0dab2e+0x1c> @ imm = #0x4
    2616: e7ff         	b	0x2618 <rp2040_hal::critical_section_impl::RpSpinlockCs::release::hb04888d5fa0dab2e+0x18> @ imm = #-0x2
    2618: b004         	add	sp, #0x10
    261a: bd80         	pop	{r7, pc}
    261c: a801         	add	r0, sp, #0x4
    261e: 2100         	movs	r1, #0x0
    2620: 7001         	strb	r1, [r0]
    2622: 9a01         	ldr	r2, [sp, #0x4]
    2624: 4809         	ldr	r0, [pc, #0x24]         @ 0x264c <rp2040_hal::critical_section_impl::RpSpinlockCs::release::hb04888d5fa0dab2e+0x4c>
    2626: f7ff ff0c    	bl	0x2442 <core::sync::atomic::AtomicU8::store::hdebde5e28cf33bb1> @ imm = #-0x1e8
    262a: a902         	add	r1, sp, #0x8
    262c: 2004         	movs	r0, #0x4
    262e: 7008         	strb	r0, [r1]
    2630: 9802         	ldr	r0, [sp, #0x8]
    2632: f7ff fec3    	bl	0x23bc <core::sync::atomic::compiler_fence::he2c26c5588bd4c6e> @ imm = #-0x27a
    2636: f000 f893    	bl	0x2760 <rp2040_hal::sio::Spinlock<_>::release::h66b7493418fc69b5> @ imm = #0x126
    263a: 9800         	ldr	r0, [sp]
    263c: 0600         	lsls	r0, r0, #0x18
    263e: 2800         	cmp	r0, #0x0
    2640: d0ea         	beq	0x2618 <rp2040_hal::critical_section_impl::RpSpinlockCs::release::hb04888d5fa0dab2e+0x18> @ imm = #-0x2c
    2642: e7ff         	b	0x2644 <rp2040_hal::critical_section_impl::RpSpinlockCs::release::hb04888d5fa0dab2e+0x44> @ imm = #-0x2
    2644: f7ff ff58    	bl	0x24f8 <cortex_m::interrupt::enable::h136226647b6e0bdd> @ imm = #-0x150
    2648: e7e6         	b	0x2618 <rp2040_hal::critical_section_impl::RpSpinlockCs::release::hb04888d5fa0dab2e+0x18> @ imm = #-0x34
    264a: 46c0         	mov	r8, r8
    264c: e6 41 00 00  	.word	0x000041e6

Disassembly of section .text.rp2040_hal::rom_data::rom_table_lookup::hb8c802f7c11fabb4:

00002650 <rp2040_hal::rom_data::rom_table_lookup::hb8c802f7c11fabb4>:
    2650: b580         	push	{r7, lr}
    2652: af00         	add	r7, sp, #0x0
    2654: b08a         	sub	sp, #0x28
    2656: 9000         	str	r0, [sp]
    2658: aa04         	add	r2, sp, #0x10
    265a: 8011         	strh	r1, [r2]
    265c: 9904         	ldr	r1, [sp, #0x10]
    265e: aa03         	add	r2, sp, #0xc
    2660: 8011         	strh	r1, [r2]
    2662: 9005         	str	r0, [sp, #0x14]
    2664: 2018         	movs	r0, #0x18
    2666: f000 f818    	bl	0x269a <rp2040_hal::rom_data::rom_hword_as_ptr::hdd3c39a694cc5d38> @ imm = #0x30
    266a: 4601         	mov	r1, r0
    266c: 9800         	ldr	r0, [sp]
    266e: 9101         	str	r1, [sp, #0x4]
    2670: 9106         	str	r1, [sp, #0x18]
    2672: 9107         	str	r1, [sp, #0x1c]
    2674: f000 f811    	bl	0x269a <rp2040_hal::rom_data::rom_hword_as_ptr::hdd3c39a694cc5d38> @ imm = #0x22
    2678: 9002         	str	r0, [sp, #0x8]
    267a: 9803         	ldr	r0, [sp, #0xc]
    267c: a908         	add	r1, sp, #0x20
    267e: 8008         	strh	r0, [r1]
    2680: 9808         	ldr	r0, [sp, #0x20]
    2682: a909         	add	r1, sp, #0x24
    2684: 8008         	strh	r0, [r1]
    2686: 9809         	ldr	r0, [sp, #0x24]
    2688: f7ff fce5    	bl	0x2056 <core::num::<impl u16>::from_le_bytes::h3805788e32a5f5af> @ imm = #-0x636
    268c: 9a01         	ldr	r2, [sp, #0x4]
    268e: 4601         	mov	r1, r0
    2690: 9802         	ldr	r0, [sp, #0x8]
    2692: b289         	uxth	r1, r1
    2694: 4790         	blx	r2
    2696: b00a         	add	sp, #0x28
    2698: bd80         	pop	{r7, pc}

Disassembly of section .text.rp2040_hal::rom_data::rom_hword_as_ptr::hdd3c39a694cc5d38:

0000269a <rp2040_hal::rom_data::rom_hword_as_ptr::hdd3c39a694cc5d38>:
    269a: b082         	sub	sp, #0x8
    269c: 9000         	str	r0, [sp]
    269e: 8800         	ldrh	r0, [r0]
    26a0: a901         	add	r1, sp, #0x4
    26a2: 8008         	strh	r0, [r1]
    26a4: b002         	add	sp, #0x8
    26a6: 4770         	bx	lr

Disassembly of section .text.rp2040_hal::sio::Sio::core::h775db04ecbc44574:

000026a8 <rp2040_hal::sio::Sio::core::h775db04ecbc44574>:
    26a8: b580         	push	{r7, lr}
    26aa: af00         	add	r7, sp, #0x0
    26ac: b092         	sub	sp, #0x48
    26ae: 200d         	movs	r0, #0xd
    26b0: 0700         	lsls	r0, r0, #0x1c
    26b2: 900d         	str	r0, [sp, #0x34]
    26b4: 900f         	str	r0, [sp, #0x3c]
    26b6: 9010         	str	r0, [sp, #0x40]
    26b8: f000 fb7b    	bl	0x2db2 <core::ptr::read_volatile::hbdcf4e41414fec75> @ imm = #0x6f6
    26bc: 900e         	str	r0, [sp, #0x38]
    26be: 9004         	str	r0, [sp, #0x10]
    26c0: a804         	add	r0, sp, #0x10
    26c2: 9011         	str	r0, [sp, #0x44]
    26c4: 900c         	str	r0, [sp, #0x30]
    26c6: 9804         	ldr	r0, [sp, #0x10]
    26c8: 9002         	str	r0, [sp, #0x8]
    26ca: 0600         	lsls	r0, r0, #0x18
    26cc: 2800         	cmp	r0, #0x0
    26ce: d00f         	beq	0x26f0 <rp2040_hal::sio::Sio::core::h775db04ecbc44574+0x48> @ imm = #0x1e
    26d0: e7ff         	b	0x26d2 <rp2040_hal::sio::Sio::core::h775db04ecbc44574+0x2a> @ imm = #-0x2
    26d2: 9802         	ldr	r0, [sp, #0x8]
    26d4: b2c0         	uxtb	r0, r0
    26d6: 2801         	cmp	r0, #0x1
    26d8: d00e         	beq	0x26f8 <rp2040_hal::sio::Sio::core::h775db04ecbc44574+0x50> @ imm = #0x1c
    26da: e7ff         	b	0x26dc <rp2040_hal::sio::Sio::core::h775db04ecbc44574+0x34> @ imm = #-0x2
    26dc: 490b         	ldr	r1, [pc, #0x2c]         @ 0x270c <rp2040_hal::sio::Sio::core::h775db04ecbc44574+0x64>
    26de: a805         	add	r0, sp, #0x14
    26e0: 9001         	str	r0, [sp, #0x4]
    26e2: aa0b         	add	r2, sp, #0x2c
    26e4: f7ff fc9e    	bl	0x2024 <core::fmt::Arguments::new_v1::h9316beb6095d2766> @ imm = #-0x6c4
    26e8: 9801         	ldr	r0, [sp, #0x4]
    26ea: 4909         	ldr	r1, [pc, #0x24]         @ 0x2710 <rp2040_hal::sio::Sio::core::h775db04ecbc44574+0x68>
    26ec: f000 fc84    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x908
    26f0: a903         	add	r1, sp, #0xc
    26f2: 2000         	movs	r0, #0x0
    26f4: 7008         	strb	r0, [r1]
    26f6: e003         	b	0x2700 <rp2040_hal::sio::Sio::core::h775db04ecbc44574+0x58> @ imm = #0x6
    26f8: a903         	add	r1, sp, #0xc
    26fa: 2001         	movs	r0, #0x1
    26fc: 7008         	strb	r0, [r1]
    26fe: e7ff         	b	0x2700 <rp2040_hal::sio::Sio::core::h775db04ecbc44574+0x58> @ imm = #-0x2
    2700: a803         	add	r0, sp, #0xc
    2702: 7800         	ldrb	r0, [r0]
    2704: 2101         	movs	r1, #0x1
    2706: 4008         	ands	r0, r1
    2708: b012         	add	sp, #0x48
    270a: bd80         	pop	{r7, pc}
    270c: d0 0b 00 00  	.word	0x00000bd0
    2710: 34 0c 00 00  	.word	0x00000c34

Disassembly of section .text.rp2040_hal::sio::Spinlock<_>::try_claim::h442292674fabaad9:

00002714 <rp2040_hal::sio::Spinlock<_>::try_claim::h442292674fabaad9>:
    2714: b580         	push	{r7, lr}
    2716: af00         	add	r7, sp, #0x0
    2718: b08a         	sub	sp, #0x28
    271a: 200d         	movs	r0, #0xd
    271c: 0700         	lsls	r0, r0, #0x1c
    271e: 9002         	str	r0, [sp, #0x8]
    2720: 480e         	ldr	r0, [pc, #0x38]         @ 0x275c <rp2040_hal::sio::Spinlock<_>::try_claim::h442292674fabaad9+0x48>
    2722: 9005         	str	r0, [sp, #0x14]
    2724: 9007         	str	r0, [sp, #0x1c]
    2726: 9008         	str	r0, [sp, #0x20]
    2728: f000 fb43    	bl	0x2db2 <core::ptr::read_volatile::hbdcf4e41414fec75> @ imm = #0x686
    272c: 9006         	str	r0, [sp, #0x18]
    272e: 9001         	str	r0, [sp, #0x4]
    2730: a801         	add	r0, sp, #0x4
    2732: 9009         	str	r0, [sp, #0x24]
    2734: 9004         	str	r0, [sp, #0x10]
    2736: 9801         	ldr	r0, [sp, #0x4]
    2738: 9003         	str	r0, [sp, #0xc]
    273a: 2800         	cmp	r0, #0x0
    273c: d104         	bne	0x2748 <rp2040_hal::sio::Spinlock<_>::try_claim::h442292674fabaad9+0x34> @ imm = #0x8
    273e: e7ff         	b	0x2740 <rp2040_hal::sio::Spinlock<_>::try_claim::h442292674fabaad9+0x2c> @ imm = #-0x2
    2740: 4669         	mov	r1, sp
    2742: 2000         	movs	r0, #0x0
    2744: 7008         	strb	r0, [r1]
    2746: e003         	b	0x2750 <rp2040_hal::sio::Spinlock<_>::try_claim::h442292674fabaad9+0x3c> @ imm = #0x6
    2748: 4669         	mov	r1, sp
    274a: 2001         	movs	r0, #0x1
    274c: 7008         	strb	r0, [r1]
    274e: e7ff         	b	0x2750 <rp2040_hal::sio::Spinlock<_>::try_claim::h442292674fabaad9+0x3c> @ imm = #-0x2
    2750: 4668         	mov	r0, sp
    2752: 7800         	ldrb	r0, [r0]
    2754: 2101         	movs	r1, #0x1
    2756: 4008         	ands	r0, r1
    2758: b00a         	add	sp, #0x28
    275a: bd80         	pop	{r7, pc}
    275c: 7c 01 00 d0  	.word	0xd000017c

Disassembly of section .text.rp2040_hal::sio::Spinlock<_>::release::h66b7493418fc69b5:

00002760 <rp2040_hal::sio::Spinlock<_>::release::h66b7493418fc69b5>:
    2760: b580         	push	{r7, lr}
    2762: af00         	add	r7, sp, #0x0
    2764: b088         	sub	sp, #0x20
    2766: 200d         	movs	r0, #0xd
    2768: 0700         	lsls	r0, r0, #0x1c
    276a: 9001         	str	r0, [sp, #0x4]
    276c: 4809         	ldr	r0, [pc, #0x24]         @ 0x2794 <rp2040_hal::sio::Spinlock<_>::release::h66b7493418fc69b5+0x34>
    276e: 9000         	str	r0, [sp]
    2770: 9003         	str	r0, [sp, #0xc]
    2772: 2000         	movs	r0, #0x0
    2774: 9004         	str	r0, [sp, #0x10]
    2776: 9002         	str	r0, [sp, #0x8]
    2778: a802         	add	r0, sp, #0x8
    277a: f000 f80d    	bl	0x2798 <rp2040_hal::sio::Spinlock<_>::release::{{closure}}::h54b0baea052e8545> @ imm = #0x1a
    277e: 4601         	mov	r1, r0
    2780: 9800         	ldr	r0, [sp]
    2782: 6809         	ldr	r1, [r1]
    2784: 9005         	str	r0, [sp, #0x14]
    2786: 9106         	str	r1, [sp, #0x18]
    2788: 9007         	str	r0, [sp, #0x1c]
    278a: f000 fb77    	bl	0x2e7c <core::ptr::write_volatile::h4a8585210e8cbb36> @ imm = #0x6ee
    278e: b008         	add	sp, #0x20
    2790: bd80         	pop	{r7, pc}
    2792: 46c0         	mov	r8, r8
    2794: 7c 01 00 d0  	.word	0xd000017c

Disassembly of section .text.rp2040_hal::sio::Spinlock<_>::release::{{closure}}::h54b0baea052e8545:

00002798 <rp2040_hal::sio::Spinlock<_>::release::{{closure}}::h54b0baea052e8545>:
    2798: b087         	sub	sp, #0x1c
    279a: a901         	add	r1, sp, #0x4
    279c: 6008         	str	r0, [r1]
    279e: 6048         	str	r0, [r1, #0x4]
    27a0: 2201         	movs	r2, #0x1
    27a2: 608a         	str	r2, [r1, #0x8]
    27a4: 60c8         	str	r0, [r1, #0xc]
    27a6: 610a         	str	r2, [r1, #0x10]
    27a8: 6002         	str	r2, [r0]
    27aa: 6148         	str	r0, [r1, #0x14]
    27ac: b007         	add	sp, #0x1c
    27ae: 4770         	bx	lr

Disassembly of section .text.<rp2040_hal::sio::Spinlock<_> as core::ops::drop::Drop>::drop::hd7bd7598a22a0ab9:

000027b0 <<rp2040_hal::sio::Spinlock<_> as core::ops::drop::Drop>::drop::hd7bd7598a22a0ab9>:
    27b0: b580         	push	{r7, lr}
    27b2: af00         	add	r7, sp, #0x0
    27b4: b082         	sub	sp, #0x8
    27b6: 9001         	str	r0, [sp, #0x4]
    27b8: f7ff ffd2    	bl	0x2760 <rp2040_hal::sio::Spinlock<_>::release::h66b7493418fc69b5> @ imm = #-0x5c
    27bc: b002         	add	sp, #0x8
    27be: bd80         	pop	{r7, pc}

Disassembly of section .text._critical_section_1_0_acquire:

000027c0 <_critical_section_1_0_acquire>:
    27c0: b580         	push	{r7, lr}
    27c2: af00         	add	r7, sp, #0x0
    27c4: f7ff fea2    	bl	0x250c <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::he9c3e3d32a429ac5> @ imm = #-0x2bc
    27c8: bd80         	pop	{r7, pc}

Disassembly of section .text._critical_section_1_0_release:

000027ca <_critical_section_1_0_release>:
    27ca: b580         	push	{r7, lr}
    27cc: af00         	add	r7, sp, #0x0
    27ce: b082         	sub	sp, #0x8
    27d0: a901         	add	r1, sp, #0x4
    27d2: 7008         	strb	r0, [r1]
    27d4: f7ff fe9f    	bl	0x2516 <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::release::he6436d97c58ab749> @ imm = #-0x2c2
    27d8: b002         	add	sp, #0x8
    27da: bd80         	pop	{r7, pc}

Disassembly of section .text.rp2040_hal::rom_data::memcpy::ptr::h6679322d89b0fb3d:

000027dc <rp2040_hal::rom_data::memcpy::ptr::h6679322d89b0fb3d>:
    27dc: b580         	push	{r7, lr}
    27de: af00         	add	r7, sp, #0x0
    27e0: b08a         	sub	sp, #0x28
    27e2: a903         	add	r1, sp, #0xc
    27e4: 2000         	movs	r0, #0x0
    27e6: 7008         	strb	r0, [r1]
    27e8: 9903         	ldr	r1, [sp, #0xc]
    27ea: 4815         	ldr	r0, [pc, #0x54]         @ 0x2840 <rp2040_hal::rom_data::memcpy::ptr::h6679322d89b0fb3d+0x64>
    27ec: f7ff fe36    	bl	0x245c <core::sync::atomic::AtomicU16::load::hc1835f9ea18e85af> @ imm = #-0x394
    27f0: 4601         	mov	r1, r0
    27f2: 9101         	str	r1, [sp, #0x4]
    27f4: a906         	add	r1, sp, #0x18
    27f6: 8008         	strh	r0, [r1]
    27f8: 0400         	lsls	r0, r0, #0x10
    27fa: 2800         	cmp	r0, #0x0
    27fc: d117         	bne	0x282e <rp2040_hal::rom_data::memcpy::ptr::h6679322d89b0fb3d+0x52> @ imm = #0x2e
    27fe: e7ff         	b	0x2800 <rp2040_hal::rom_data::memcpy::ptr::h6679322d89b0fb3d+0x24> @ imm = #-0x2
    2800: a904         	add	r1, sp, #0x10
    2802: 4810         	ldr	r0, [pc, #0x40]         @ 0x2844 <rp2040_hal::rom_data::memcpy::ptr::h6679322d89b0fb3d+0x68>
    2804: 8008         	strh	r0, [r1]
    2806: 9804         	ldr	r0, [sp, #0x10]
    2808: a907         	add	r1, sp, #0x1c
    280a: 8008         	strh	r0, [r1]
    280c: 9907         	ldr	r1, [sp, #0x1c]
    280e: 2014         	movs	r0, #0x14
    2810: f7ff ff1e    	bl	0x2650 <rp2040_hal::rom_data::rom_table_lookup::hb8c802f7c11fabb4> @ imm = #-0x1c4
    2814: 4601         	mov	r1, r0
    2816: 9100         	str	r1, [sp]
    2818: 9108         	str	r1, [sp, #0x20]
    281a: aa05         	add	r2, sp, #0x14
    281c: 2000         	movs	r0, #0x0
    281e: 7010         	strb	r0, [r2]
    2820: 9a05         	ldr	r2, [sp, #0x14]
    2822: 4807         	ldr	r0, [pc, #0x1c]         @ 0x2840 <rp2040_hal::rom_data::memcpy::ptr::h6679322d89b0fb3d+0x64>
    2824: f7ff fe25    	bl	0x2472 <core::sync::atomic::AtomicU16::store::h3e85cc5ad8e5ba80> @ imm = #-0x3b6
    2828: 9800         	ldr	r0, [sp]
    282a: 9002         	str	r0, [sp, #0x8]
    282c: e003         	b	0x2836 <rp2040_hal::rom_data::memcpy::ptr::h6679322d89b0fb3d+0x5a> @ imm = #0x6
    282e: 9801         	ldr	r0, [sp, #0x4]
    2830: b280         	uxth	r0, r0
    2832: 9002         	str	r0, [sp, #0x8]
    2834: e7ff         	b	0x2836 <rp2040_hal::rom_data::memcpy::ptr::h6679322d89b0fb3d+0x5a> @ imm = #-0x2
    2836: 9802         	ldr	r0, [sp, #0x8]
    2838: 9009         	str	r0, [sp, #0x24]
    283a: b00a         	add	sp, #0x28
    283c: bd80         	pop	{r7, pc}
    283e: 46c0         	mov	r8, r8
    2840: e8 41 00 00  	.word	0x000041e8
    2844: 4d 43 00 00  	.word	0x0000434d

Disassembly of section .text.rp2040_hal::rom_data::memcpy::h731125222dd3595c:

00002848 <rp2040_hal::rom_data::memcpy::h731125222dd3595c>:
    2848: b580         	push	{r7, lr}
    284a: af00         	add	r7, sp, #0x0
    284c: b086         	sub	sp, #0x18
    284e: 9201         	str	r2, [sp, #0x4]
    2850: 9100         	str	r1, [sp]
    2852: 9002         	str	r0, [sp, #0x8]
    2854: 9003         	str	r0, [sp, #0xc]
    2856: 9104         	str	r1, [sp, #0x10]
    2858: 9205         	str	r2, [sp, #0x14]
    285a: f7ff ffbf    	bl	0x27dc <rp2040_hal::rom_data::memcpy::ptr::h6679322d89b0fb3d> @ imm = #-0x82
    285e: 9900         	ldr	r1, [sp]
    2860: 9a01         	ldr	r2, [sp, #0x4]
    2862: 4603         	mov	r3, r0
    2864: 9802         	ldr	r0, [sp, #0x8]
    2866: 4798         	blx	r3
    2868: b006         	add	sp, #0x18
    286a: bd80         	pop	{r7, pc}

Disassembly of section .text.rp2040_hal::rom_data::__aeabi_memcpy::hf9e97aef0de54161:

0000286c <rp2040_hal::rom_data::__aeabi_memcpy::hf9e97aef0de54161>:
    286c: b580         	push	{r7, lr}
    286e: af00         	add	r7, sp, #0x0
    2870: b084         	sub	sp, #0x10
    2872: 9001         	str	r0, [sp, #0x4]
    2874: 9102         	str	r1, [sp, #0x8]
    2876: 9203         	str	r2, [sp, #0xc]
    2878: f7ff ffe6    	bl	0x2848 <rp2040_hal::rom_data::memcpy::h731125222dd3595c> @ imm = #-0x34
    287c: b004         	add	sp, #0x10
    287e: bd80         	pop	{r7, pc}

Disassembly of section .text.__aeabi_memcpy:

00002880 <__aeabi_memcpy>:
    2880: b580         	push	{r7, lr}
    2882: af00         	add	r7, sp, #0x0
    2884: b084         	sub	sp, #0x10
    2886: 9001         	str	r0, [sp, #0x4]
    2888: 9102         	str	r1, [sp, #0x8]
    288a: 9203         	str	r2, [sp, #0xc]
    288c: f7ff ffee    	bl	0x286c <rp2040_hal::rom_data::__aeabi_memcpy::hf9e97aef0de54161> @ imm = #-0x24
    2890: b004         	add	sp, #0x10
    2892: bd80         	pop	{r7, pc}

Disassembly of section .text.<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::haf966b149080126e:

00002894 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::haf966b149080126e>:
    2894: b5d0         	push	{r4, r6, r7, lr}
    2896: af02         	add	r7, sp, #0x8
    2898: b094         	sub	sp, #0x50
    289a: 9302         	str	r3, [sp, #0x8]
    289c: 9203         	str	r2, [sp, #0xc]
    289e: 9104         	str	r1, [sp, #0x10]
    28a0: 9005         	str	r0, [sp, #0x14]
    28a2: 68bc         	ldr	r4, [r7, #0x8]
    28a4: 9406         	str	r4, [sp, #0x18]
    28a6: 9009         	str	r0, [sp, #0x24]
    28a8: 910a         	str	r1, [sp, #0x28]
    28aa: 920b         	str	r2, [sp, #0x2c]
    28ac: 930c         	str	r3, [sp, #0x30]
    28ae: 910d         	str	r1, [sp, #0x34]
    28b0: 900e         	str	r0, [sp, #0x38]
    28b2: 4281         	cmp	r1, r0
    28b4: d30d         	blo	0x28d2 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::haf966b149080126e+0x3e> @ imm = #0x1a
    28b6: e7ff         	b	0x28b8 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::haf966b149080126e+0x24> @ imm = #-0x2
    28b8: 9804         	ldr	r0, [sp, #0x10]
    28ba: 9902         	ldr	r1, [sp, #0x8]
    28bc: 9a05         	ldr	r2, [sp, #0x14]
    28be: 1a82         	subs	r2, r0, r2
    28c0: 9208         	str	r2, [sp, #0x20]
    28c2: 2201         	movs	r2, #0x1
    28c4: 9207         	str	r2, [sp, #0x1c]
    28c6: 9a08         	ldr	r2, [sp, #0x20]
    28c8: 9201         	str	r2, [sp, #0x4]
    28ca: 920f         	str	r2, [sp, #0x3c]
    28cc: 4288         	cmp	r0, r1
    28ce: d810         	bhi	0x28f2 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::haf966b149080126e+0x5e> @ imm = #0x20
    28d0: e004         	b	0x28dc <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::haf966b149080126e+0x48> @ imm = #0x8
    28d2: 9a06         	ldr	r2, [sp, #0x18]
    28d4: 9904         	ldr	r1, [sp, #0x10]
    28d6: 9805         	ldr	r0, [sp, #0x14]
    28d8: f000 fef6    	bl	0x36c8 <core::slice::index::slice_index_order_fail::h312f4443c50dfd13> @ imm = #0xdec
    28dc: 9901         	ldr	r1, [sp, #0x4]
    28de: 9803         	ldr	r0, [sp, #0xc]
    28e0: 9a05         	ldr	r2, [sp, #0x14]
    28e2: 9b02         	ldr	r3, [sp, #0x8]
    28e4: 9010         	str	r0, [sp, #0x40]
    28e6: 9311         	str	r3, [sp, #0x44]
    28e8: 9012         	str	r0, [sp, #0x48]
    28ea: 1880         	adds	r0, r0, r2
    28ec: 9013         	str	r0, [sp, #0x4c]
    28ee: b014         	add	sp, #0x50
    28f0: bdd0         	pop	{r4, r6, r7, pc}
    28f2: 9a06         	ldr	r2, [sp, #0x18]
    28f4: 9902         	ldr	r1, [sp, #0x8]
    28f6: 9804         	ldr	r0, [sp, #0x10]
    28f8: f000 fec8    	bl	0x368c <core::slice::index::slice_end_index_len_fail::h41051af3283b2672> @ imm = #0xd90

Disassembly of section .text.<&T as core::fmt::Display>::fmt::h3e4ebafaf0e0edac:

000028fc <<&T as core::fmt::Display>::fmt::h3e4ebafaf0e0edac>:
    28fc: b580         	push	{r7, lr}
    28fe: af00         	add	r7, sp, #0x0
    2900: b082         	sub	sp, #0x8
    2902: 4602         	mov	r2, r0
    2904: 9200         	str	r2, [sp]
    2906: 9101         	str	r1, [sp, #0x4]
    2908: 6810         	ldr	r0, [r2]
    290a: 6852         	ldr	r2, [r2, #0x4]
    290c: 68d2         	ldr	r2, [r2, #0xc]
    290e: 4790         	blx	r2
    2910: b002         	add	sp, #0x8
    2912: bd80         	pop	{r7, pc}

Disassembly of section .text.core::fmt::Write::write_char::hd2ef43614f250143:

00002914 <core::fmt::Write::write_char::hd2ef43614f250143>:
    2914: b580         	push	{r7, lr}
    2916: af00         	add	r7, sp, #0x0
    2918: b08a         	sub	sp, #0x28
    291a: 9100         	str	r1, [sp]
    291c: 4601         	mov	r1, r0
    291e: 9800         	ldr	r0, [sp]
    2920: 9101         	str	r1, [sp, #0x4]
    2922: 9104         	str	r1, [sp, #0x10]
    2924: 9005         	str	r0, [sp, #0x14]
    2926: 2100         	movs	r1, #0x0
    2928: 9103         	str	r1, [sp, #0xc]
    292a: a903         	add	r1, sp, #0xc
    292c: 9106         	str	r1, [sp, #0x18]
    292e: 2204         	movs	r2, #0x4
    2930: 9207         	str	r2, [sp, #0x1c]
    2932: f000 f837    	bl	0x29a4 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142> @ imm = #0x6e
    2936: 4602         	mov	r2, r0
    2938: 9801         	ldr	r0, [sp, #0x4]
    293a: 9202         	str	r2, [sp, #0x8]
    293c: 460a         	mov	r2, r1
    293e: 9902         	ldr	r1, [sp, #0x8]
    2940: 9108         	str	r1, [sp, #0x20]
    2942: 9209         	str	r2, [sp, #0x24]
    2944: f000 fa18    	bl	0x2d78 <<defmt::export::FmtWrite as core::fmt::Write>::write_str::h4ea879d869852471> @ imm = #0x430
    2948: b00a         	add	sp, #0x28
    294a: bd80         	pop	{r7, pc}

Disassembly of section .text.core::fmt::Write::write_fmt::h993bdc6eeb697566:

0000294c <core::fmt::Write::write_fmt::h993bdc6eeb697566>:
    294c: b580         	push	{r7, lr}
    294e: af00         	add	r7, sp, #0x0
    2950: b082         	sub	sp, #0x8
    2952: 9001         	str	r0, [sp, #0x4]
    2954: f000 f948    	bl	0x2be8 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99> @ imm = #0x290
    2958: b002         	add	sp, #0x8
    295a: bd80         	pop	{r7, pc}

Disassembly of section .text.core::fmt::Arguments::new_v1::hf9439a3697bf2862:

0000295c <core::fmt::Arguments::new_v1::hf9439a3697bf2862>:
    295c: b5d0         	push	{r4, r6, r7, lr}
    295e: af02         	add	r7, sp, #0x8
    2960: b083         	sub	sp, #0xc
    2962: 9100         	str	r1, [sp]
    2964: 4601         	mov	r1, r0
    2966: 9800         	ldr	r0, [sp]
    2968: 9001         	str	r0, [sp, #0x4]
    296a: 9202         	str	r2, [sp, #0x8]
    296c: 6008         	str	r0, [r1]
    296e: 2001         	movs	r0, #0x1
    2970: 6048         	str	r0, [r1, #0x4]
    2972: 4b04         	ldr	r3, [pc, #0x10]         @ 0x2984 <core::fmt::Arguments::new_v1::hf9439a3697bf2862+0x28>
    2974: 681c         	ldr	r4, [r3]
    2976: 685b         	ldr	r3, [r3, #0x4]
    2978: 610c         	str	r4, [r1, #0x10]
    297a: 614b         	str	r3, [r1, #0x14]
    297c: 608a         	str	r2, [r1, #0x8]
    297e: 60c8         	str	r0, [r1, #0xc]
    2980: b003         	add	sp, #0xc
    2982: bdd0         	pop	{r4, r6, r7, pc}
    2984: d8 00 00 00  	.word	0x000000d8

Disassembly of section .text.core::num::<impl u16>::to_le_bytes::h9fea1b06254172a5:

00002988 <core::num::<impl u16>::to_le_bytes::h9fea1b06254172a5>:
    2988: b082         	sub	sp, #0x8
    298a: 4601         	mov	r1, r0
    298c: a801         	add	r0, sp, #0x4
    298e: 8001         	strh	r1, [r0]
    2990: 0a0a         	lsrs	r2, r1, #0x8
    2992: 4668         	mov	r0, sp
    2994: 7042         	strb	r2, [r0, #0x1]
    2996: 7001         	strb	r1, [r0]
    2998: 7801         	ldrb	r1, [r0]
    299a: 7840         	ldrb	r0, [r0, #0x1]
    299c: 0200         	lsls	r0, r0, #0x8
    299e: 1840         	adds	r0, r0, r1
    29a0: b002         	add	sp, #0x8
    29a2: 4770         	bx	lr

Disassembly of section .text.core::char::methods::encode_utf8_raw::h9ea1566076fb9142:

000029a4 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142>:
    29a4: b5b0         	push	{r4, r5, r7, lr}
    29a6: af02         	add	r7, sp, #0x8
    29a8: b0bc         	sub	sp, #0xf0
    29aa: ab28         	add	r3, sp, #0xa0
    29ac: 9302         	str	r3, [sp, #0x8]
    29ae: ab08         	add	r3, sp, #0x20
    29b0: 9304         	str	r3, [sp, #0x10]
    29b2: 9203         	str	r2, [sp, #0xc]
    29b4: 460b         	mov	r3, r1
    29b6: 9904         	ldr	r1, [sp, #0x10]
    29b8: 9305         	str	r3, [sp, #0x14]
    29ba: 4603         	mov	r3, r0
    29bc: 9805         	ldr	r0, [sp, #0x14]
    29be: 4c75         	ldr	r4, [pc, #0x1d4]        @ 0x2b94 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x1f0>
    29c0: 600c         	str	r4, [r1]
    29c2: 604b         	str	r3, [r1, #0x4]
    29c4: 6708         	str	r0, [r1, #0x70]
    29c6: 674a         	str	r2, [r1, #0x74]
    29c8: 6848         	ldr	r0, [r1, #0x4]
    29ca: 9006         	str	r0, [sp, #0x18]
    29cc: 6788         	str	r0, [r1, #0x78]
    29ce: 2880         	cmp	r0, #0x80
    29d0: d305         	blo	0x29de <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x3a> @ imm = #0xa
    29d2: e7ff         	b	0x29d4 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x30> @ imm = #-0x2
    29d4: 9806         	ldr	r0, [sp, #0x18]
    29d6: 0ac0         	lsrs	r0, r0, #0xb
    29d8: 2800         	cmp	r0, #0x0
    29da: d009         	beq	0x29f0 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x4c> @ imm = #0x12
    29dc: e003         	b	0x29e6 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x42> @ imm = #0x6
    29de: 9904         	ldr	r1, [sp, #0x10]
    29e0: 2001         	movs	r0, #0x1
    29e2: 6088         	str	r0, [r1, #0x8]
    29e4: e012         	b	0x2a0c <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x68> @ imm = #0x24
    29e6: 9806         	ldr	r0, [sp, #0x18]
    29e8: 0c00         	lsrs	r0, r0, #0x10
    29ea: 2800         	cmp	r0, #0x0
    29ec: d008         	beq	0x2a00 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x5c> @ imm = #0x10
    29ee: e003         	b	0x29f8 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x54> @ imm = #0x6
    29f0: 9904         	ldr	r1, [sp, #0x10]
    29f2: 2002         	movs	r0, #0x2
    29f4: 6088         	str	r0, [r1, #0x8]
    29f6: e008         	b	0x2a0a <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x66> @ imm = #0x10
    29f8: 9904         	ldr	r1, [sp, #0x10]
    29fa: 2004         	movs	r0, #0x4
    29fc: 6088         	str	r0, [r1, #0x8]
    29fe: e003         	b	0x2a08 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x64> @ imm = #0x6
    2a00: 9904         	ldr	r1, [sp, #0x10]
    2a02: 2003         	movs	r0, #0x3
    2a04: 6088         	str	r0, [r1, #0x8]
    2a06: e7ff         	b	0x2a08 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x64> @ imm = #-0x2
    2a08: e7ff         	b	0x2a0a <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x66> @ imm = #-0x2
    2a0a: e7ff         	b	0x2a0c <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x68> @ imm = #-0x2
    2a0c: 9804         	ldr	r0, [sp, #0x10]
    2a0e: 6880         	ldr	r0, [r0, #0x8]
    2a10: 1e40         	subs	r0, r0, #0x1
    2a12: 9001         	str	r0, [sp, #0x4]
    2a14: 2803         	cmp	r0, #0x3
    2a16: d80d         	bhi	0x2a34 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x90> @ imm = #0x1a
    2a18: 9801         	ldr	r0, [sp, #0x4]
    2a1a: 0081         	lsls	r1, r0, #0x2
    2a1c: a001         	adr	r0, #4 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x7d>
    2a1e: 5840         	ldr	r0, [r0, r1]
    2a20: 4687         	mov	pc, r0
    2a22: 46c0         	mov	r8, r8
    2a24: b7 2a 00 00  	.word	0x00002ab7
    2a28: bf 2a 00 00  	.word	0x00002abf
    2a2c: c7 2a 00 00  	.word	0x00002ac7
    2a30: cf 2a 00 00  	.word	0x00002acf
    2a34: 9904         	ldr	r1, [sp, #0x10]
    2a36: 9802         	ldr	r0, [sp, #0x8]
    2a38: 9b03         	ldr	r3, [sp, #0xc]
    2a3a: ac0a         	add	r4, sp, #0x28
    2a3c: 6284         	str	r4, [r0, #0x28]
    2a3e: 4a57         	ldr	r2, [pc, #0x15c]        @ 0x2b9c <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x1f8>
    2a40: 62c2         	str	r2, [r0, #0x2c]
    2a42: 6304         	str	r4, [r0, #0x30]
    2a44: 658c         	str	r4, [r1, #0x58]
    2a46: 65ca         	str	r2, [r1, #0x5c]
    2a48: 6dcc         	ldr	r4, [r1, #0x5c]
    2a4a: 640c         	str	r4, [r1, #0x40]
    2a4c: 6d8c         	ldr	r4, [r1, #0x58]
    2a4e: 63cc         	str	r4, [r1, #0x3c]
    2a50: ad09         	add	r5, sp, #0x24
    2a52: 6345         	str	r5, [r0, #0x34]
    2a54: 4c52         	ldr	r4, [pc, #0x148]        @ 0x2ba0 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x1fc>
    2a56: 6384         	str	r4, [r0, #0x38]
    2a58: 63c5         	str	r5, [r0, #0x3c]
    2a5a: 660d         	str	r5, [r1, #0x60]
    2a5c: 664c         	str	r4, [r1, #0x64]
    2a5e: 6e4c         	ldr	r4, [r1, #0x64]
    2a60: 648c         	str	r4, [r1, #0x48]
    2a62: 6e0c         	ldr	r4, [r1, #0x60]
    2a64: 644c         	str	r4, [r1, #0x44]
    2a66: 654b         	str	r3, [r1, #0x54]
    2a68: ab1d         	add	r3, sp, #0x74
    2a6a: 6403         	str	r3, [r0, #0x40]
    2a6c: 6442         	str	r2, [r0, #0x44]
    2a6e: 6483         	str	r3, [r0, #0x48]
    2a70: 668b         	str	r3, [r1, #0x68]
    2a72: 66ca         	str	r2, [r1, #0x6c]
    2a74: 6eca         	ldr	r2, [r1, #0x6c]
    2a76: 650a         	str	r2, [r1, #0x50]
    2a78: 6e8a         	ldr	r2, [r1, #0x68]
    2a7a: 64ca         	str	r2, [r1, #0x4c]
    2a7c: 6c0a         	ldr	r2, [r1, #0x40]
    2a7e: 628a         	str	r2, [r1, #0x28]
    2a80: 6bca         	ldr	r2, [r1, #0x3c]
    2a82: 624a         	str	r2, [r1, #0x24]
    2a84: 6c8a         	ldr	r2, [r1, #0x48]
    2a86: 630a         	str	r2, [r1, #0x30]
    2a88: 6c4a         	ldr	r2, [r1, #0x44]
    2a8a: 62ca         	str	r2, [r1, #0x2c]
    2a8c: 6d0a         	ldr	r2, [r1, #0x50]
    2a8e: 638a         	str	r2, [r1, #0x38]
    2a90: 6cca         	ldr	r2, [r1, #0x4c]
    2a92: 634a         	str	r2, [r1, #0x34]
    2a94: aa11         	add	r2, sp, #0x44
    2a96: 64c2         	str	r2, [r0, #0x4c]
    2a98: 483e         	ldr	r0, [pc, #0xf8]         @ 0x2b94 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x1f0>
    2a9a: 60c8         	str	r0, [r1, #0xc]
    2a9c: 2003         	movs	r0, #0x3
    2a9e: 6108         	str	r0, [r1, #0x10]
    2aa0: 4b40         	ldr	r3, [pc, #0x100]        @ 0x2ba4 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x200>
    2aa2: 681c         	ldr	r4, [r3]
    2aa4: 685b         	ldr	r3, [r3, #0x4]
    2aa6: 61cc         	str	r4, [r1, #0x1c]
    2aa8: 620b         	str	r3, [r1, #0x20]
    2aaa: 614a         	str	r2, [r1, #0x14]
    2aac: 6188         	str	r0, [r1, #0x18]
    2aae: 493e         	ldr	r1, [pc, #0xf8]         @ 0x2ba8 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x204>
    2ab0: a80b         	add	r0, sp, #0x2c
    2ab2: f000 faa1    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x542
    2ab6: 9803         	ldr	r0, [sp, #0xc]
    2ab8: 2800         	cmp	r0, #0x0
    2aba: d10c         	bne	0x2ad6 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x132> @ imm = #0x18
    2abc: e7ba         	b	0x2a34 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x90> @ imm = #-0x8c
    2abe: 9803         	ldr	r0, [sp, #0xc]
    2ac0: 2801         	cmp	r0, #0x1
    2ac2: d81b         	bhi	0x2afc <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x158> @ imm = #0x36
    2ac4: e7b6         	b	0x2a34 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x90> @ imm = #-0x94
    2ac6: 9803         	ldr	r0, [sp, #0xc]
    2ac8: 2802         	cmp	r0, #0x2
    2aca: d829         	bhi	0x2b20 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x17c> @ imm = #0x52
    2acc: e7b2         	b	0x2a34 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x90> @ imm = #-0x9c
    2ace: 9803         	ldr	r0, [sp, #0xc]
    2ad0: 2803         	cmp	r0, #0x3
    2ad2: d83e         	bhi	0x2b52 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x1ae> @ imm = #0x7c
    2ad4: e7ae         	b	0x2a34 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x90> @ imm = #-0xa4
    2ad6: 9905         	ldr	r1, [sp, #0x14]
    2ad8: 9804         	ldr	r0, [sp, #0x10]
    2ada: 67c1         	str	r1, [r0, #0x7c]
    2adc: 6840         	ldr	r0, [r0, #0x4]
    2ade: 7008         	strb	r0, [r1]
    2ae0: e7ff         	b	0x2ae2 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x13e> @ imm = #-0x2
    2ae2: 9b03         	ldr	r3, [sp, #0xc]
    2ae4: 9a05         	ldr	r2, [sp, #0x14]
    2ae6: 9802         	ldr	r0, [sp, #0x8]
    2ae8: 9904         	ldr	r1, [sp, #0x10]
    2aea: 6889         	ldr	r1, [r1, #0x8]
    2aec: 6241         	str	r1, [r0, #0x24]
    2aee: 482a         	ldr	r0, [pc, #0xa8]         @ 0x2b98 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x1f4>
    2af0: 9000         	str	r0, [sp]
    2af2: 2000         	movs	r0, #0x0
    2af4: f7ff fece    	bl	0x2894 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::haf966b149080126e> @ imm = #-0x264
    2af8: b03c         	add	sp, #0xf0
    2afa: bdb0         	pop	{r4, r5, r7, pc}
    2afc: 9905         	ldr	r1, [sp, #0x14]
    2afe: 9804         	ldr	r0, [sp, #0x10]
    2b00: 9b02         	ldr	r3, [sp, #0x8]
    2b02: 6019         	str	r1, [r3]
    2b04: 1c4a         	adds	r2, r1, #0x1
    2b06: 605a         	str	r2, [r3, #0x4]
    2b08: 6840         	ldr	r0, [r0, #0x4]
    2b0a: 0540         	lsls	r0, r0, #0x15
    2b0c: 0ec0         	lsrs	r0, r0, #0x1b
    2b0e: 30c0         	adds	r0, #0xc0
    2b10: 7008         	strb	r0, [r1]
    2b12: a809         	add	r0, sp, #0x24
    2b14: 7800         	ldrb	r0, [r0]
    2b16: 223f         	movs	r2, #0x3f
    2b18: 4010         	ands	r0, r2
    2b1a: 3080         	adds	r0, #0x80
    2b1c: 7048         	strb	r0, [r1, #0x1]
    2b1e: e7e0         	b	0x2ae2 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x13e> @ imm = #-0x40
    2b20: 9905         	ldr	r1, [sp, #0x14]
    2b22: 9804         	ldr	r0, [sp, #0x10]
    2b24: 9b02         	ldr	r3, [sp, #0x8]
    2b26: 6099         	str	r1, [r3, #0x8]
    2b28: 1c4a         	adds	r2, r1, #0x1
    2b2a: 60da         	str	r2, [r3, #0xc]
    2b2c: 1c8a         	adds	r2, r1, #0x2
    2b2e: 611a         	str	r2, [r3, #0x10]
    2b30: 6842         	ldr	r2, [r0, #0x4]
    2b32: 0412         	lsls	r2, r2, #0x10
    2b34: 0f12         	lsrs	r2, r2, #0x1c
    2b36: 32e0         	adds	r2, #0xe0
    2b38: 700a         	strb	r2, [r1]
    2b3a: 6840         	ldr	r0, [r0, #0x4]
    2b3c: 0500         	lsls	r0, r0, #0x14
    2b3e: 0e80         	lsrs	r0, r0, #0x1a
    2b40: 3080         	adds	r0, #0x80
    2b42: 7048         	strb	r0, [r1, #0x1]
    2b44: a809         	add	r0, sp, #0x24
    2b46: 7800         	ldrb	r0, [r0]
    2b48: 223f         	movs	r2, #0x3f
    2b4a: 4010         	ands	r0, r2
    2b4c: 3080         	adds	r0, #0x80
    2b4e: 7088         	strb	r0, [r1, #0x2]
    2b50: e7c7         	b	0x2ae2 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x13e> @ imm = #-0x72
    2b52: 9905         	ldr	r1, [sp, #0x14]
    2b54: 9804         	ldr	r0, [sp, #0x10]
    2b56: 9b02         	ldr	r3, [sp, #0x8]
    2b58: 6159         	str	r1, [r3, #0x14]
    2b5a: 1c4a         	adds	r2, r1, #0x1
    2b5c: 619a         	str	r2, [r3, #0x18]
    2b5e: 1c8a         	adds	r2, r1, #0x2
    2b60: 61da         	str	r2, [r3, #0x1c]
    2b62: 1cca         	adds	r2, r1, #0x3
    2b64: 621a         	str	r2, [r3, #0x20]
    2b66: 6842         	ldr	r2, [r0, #0x4]
    2b68: 02d2         	lsls	r2, r2, #0xb
    2b6a: 0f52         	lsrs	r2, r2, #0x1d
    2b6c: 32f0         	adds	r2, #0xf0
    2b6e: 700a         	strb	r2, [r1]
    2b70: 6842         	ldr	r2, [r0, #0x4]
    2b72: 0392         	lsls	r2, r2, #0xe
    2b74: 0e92         	lsrs	r2, r2, #0x1a
    2b76: 3280         	adds	r2, #0x80
    2b78: 704a         	strb	r2, [r1, #0x1]
    2b7a: 6840         	ldr	r0, [r0, #0x4]
    2b7c: 0500         	lsls	r0, r0, #0x14
    2b7e: 0e80         	lsrs	r0, r0, #0x1a
    2b80: 3080         	adds	r0, #0x80
    2b82: 7088         	strb	r0, [r1, #0x2]
    2b84: a809         	add	r0, sp, #0x24
    2b86: 7800         	ldrb	r0, [r0]
    2b88: 223f         	movs	r2, #0x3f
    2b8a: 4010         	ands	r0, r2
    2b8c: 3080         	adds	r0, #0x80
    2b8e: 70c8         	strb	r0, [r1, #0x3]
    2b90: e7a7         	b	0x2ae2 <core::char::methods::encode_utf8_raw::h9ea1566076fb9142+0x13e> @ imm = #-0xb2
    2b92: 46c0         	mov	r8, r8
    2b94: b8 00 00 00  	.word	0x000000b8
    2b98: 1c 06 00 00  	.word	0x0000061c
    2b9c: 61 3c 00 00  	.word	0x00003c61
    2ba0: e5 3b 00 00  	.word	0x00003be5
    2ba4: d8 00 00 00  	.word	0x000000d8
    2ba8: 94 02 00 00  	.word	0x00000294

Disassembly of section .text._ZN4core6result19Result$LT$T$C$E$GT$2ok17h5a567a009fc65aeaE:

00002bac <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h5a567a009fc65aeaE>:
    2bac: b082         	sub	sp, #0x8
    2bae: 4601         	mov	r1, r0
    2bb0: 4668         	mov	r0, sp
    2bb2: 7001         	strb	r1, [r0]
    2bb4: 7800         	ldrb	r0, [r0]
    2bb6: 07c0         	lsls	r0, r0, #0x1f
    2bb8: 2800         	cmp	r0, #0x0
    2bba: d104         	bne	0x2bc6 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h5a567a009fc65aeaE+0x1a> @ imm = #0x8
    2bbc: e7ff         	b	0x2bbe <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h5a567a009fc65aeaE+0x12> @ imm = #-0x2
    2bbe: a901         	add	r1, sp, #0x4
    2bc0: 2001         	movs	r0, #0x1
    2bc2: 7008         	strb	r0, [r1]
    2bc4: e003         	b	0x2bce <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h5a567a009fc65aeaE+0x22> @ imm = #0x6
    2bc6: a901         	add	r1, sp, #0x4
    2bc8: 2000         	movs	r0, #0x0
    2bca: 7008         	strb	r0, [r1]
    2bcc: e7ff         	b	0x2bce <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h5a567a009fc65aeaE+0x22> @ imm = #-0x2
    2bce: 4668         	mov	r0, sp
    2bd0: 7800         	ldrb	r0, [r0]
    2bd2: 07c0         	lsls	r0, r0, #0x1f
    2bd4: 2800         	cmp	r0, #0x0
    2bd6: d106         	bne	0x2be6 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h5a567a009fc65aeaE+0x3a> @ imm = #0xc
    2bd8: e7ff         	b	0x2bda <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h5a567a009fc65aeaE+0x2e> @ imm = #-0x2
    2bda: a801         	add	r0, sp, #0x4
    2bdc: 7800         	ldrb	r0, [r0]
    2bde: 2101         	movs	r1, #0x1
    2be0: 4008         	ands	r0, r1
    2be2: b002         	add	sp, #0x8
    2be4: 4770         	bx	lr
    2be6: e7f8         	b	0x2bda <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h5a567a009fc65aeaE+0x2e> @ imm = #-0x10

Disassembly of section .text.<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99:

00002be8 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99>:
    2be8: b5f0         	push	{r4, r5, r6, r7, lr}
    2bea: af03         	add	r7, sp, #0xc
    2bec: b099         	sub	sp, #0x64
    2bee: 9101         	str	r1, [sp, #0x4]
    2bf0: 9002         	str	r0, [sp, #0x8]
    2bf2: 900c         	str	r0, [sp, #0x30]
    2bf4: 910d         	str	r1, [sp, #0x34]
    2bf6: 6808         	ldr	r0, [r1]
    2bf8: 9003         	str	r0, [sp, #0xc]
    2bfa: 6848         	ldr	r0, [r1, #0x4]
    2bfc: 9004         	str	r0, [sp, #0x10]
    2bfe: 68c9         	ldr	r1, [r1, #0xc]
    2c00: 9105         	str	r1, [sp, #0x14]
    2c02: 2800         	cmp	r0, #0x0
    2c04: d104         	bne	0x2c10 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x28> @ imm = #0x8
    2c06: e7ff         	b	0x2c08 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x20> @ imm = #-0x2
    2c08: 9805         	ldr	r0, [sp, #0x14]
    2c0a: 2800         	cmp	r0, #0x0
    2c0c: d004         	beq	0x2c18 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x30> @ imm = #0x8
    2c0e: e008         	b	0x2c22 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x3a> @ imm = #0x10
    2c10: 9804         	ldr	r0, [sp, #0x10]
    2c12: 2801         	cmp	r0, #0x1
    2c14: d011         	beq	0x2c3a <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x52> @ imm = #0x22
    2c16: e004         	b	0x2c22 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x3a> @ imm = #0x8
    2c18: 2001         	movs	r0, #0x1
    2c1a: 9009         	str	r0, [sp, #0x24]
    2c1c: 2000         	movs	r0, #0x0
    2c1e: 900a         	str	r0, [sp, #0x28]
    2c20: e005         	b	0x2c2e <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x46> @ imm = #0xa
    2c22: 4827         	ldr	r0, [pc, #0x9c]         @ 0x2cc0 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0xd8>
    2c24: 6801         	ldr	r1, [r0]
    2c26: 6840         	ldr	r0, [r0, #0x4]
    2c28: 9109         	str	r1, [sp, #0x24]
    2c2a: 900a         	str	r0, [sp, #0x28]
    2c2c: e7ff         	b	0x2c2e <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x46> @ imm = #-0x2
    2c2e: a809         	add	r0, sp, #0x24
    2c30: 900f         	str	r0, [sp, #0x3c]
    2c32: 9809         	ldr	r0, [sp, #0x24]
    2c34: 2800         	cmp	r0, #0x0
    2c36: d10b         	bne	0x2c50 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x68> @ imm = #0x16
    2c38: e00e         	b	0x2c58 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x70> @ imm = #0x1c
    2c3a: 9805         	ldr	r0, [sp, #0x14]
    2c3c: 2800         	cmp	r0, #0x0
    2c3e: d1f0         	bne	0x2c22 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x3a> @ imm = #-0x20
    2c40: e7ff         	b	0x2c42 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x5a> @ imm = #-0x2
    2c42: 9803         	ldr	r0, [sp, #0xc]
    2c44: 900e         	str	r0, [sp, #0x38]
    2c46: 6801         	ldr	r1, [r0]
    2c48: 6840         	ldr	r0, [r0, #0x4]
    2c4a: 9109         	str	r1, [sp, #0x24]
    2c4c: 900a         	str	r0, [sp, #0x28]
    2c4e: e7ee         	b	0x2c2e <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x46> @ imm = #-0x24
    2c50: a90b         	add	r1, sp, #0x2c
    2c52: 2001         	movs	r0, #0x1
    2c54: 7008         	strb	r0, [r1]
    2c56: e003         	b	0x2c60 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x78> @ imm = #0x6
    2c58: a90b         	add	r1, sp, #0x2c
    2c5a: 2000         	movs	r0, #0x0
    2c5c: 7008         	strb	r0, [r1]
    2c5e: e7ff         	b	0x2c60 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x78> @ imm = #-0x2
    2c60: a810         	add	r0, sp, #0x40
    2c62: 2100         	movs	r1, #0x0
    2c64: 7001         	strb	r1, [r0]
    2c66: 7800         	ldrb	r0, [r0]
    2c68: 07c0         	lsls	r0, r0, #0x1f
    2c6a: 2800         	cmp	r0, #0x0
    2c6c: d101         	bne	0x2c72 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x8a> @ imm = #0x2
    2c6e: e7ff         	b	0x2c70 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x88> @ imm = #-0x2
    2c70: e007         	b	0x2c82 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x9a> @ imm = #0xe
    2c72: 9909         	ldr	r1, [sp, #0x24]
    2c74: 980a         	ldr	r0, [sp, #0x28]
    2c76: 9107         	str	r1, [sp, #0x1c]
    2c78: 9008         	str	r0, [sp, #0x20]
    2c7a: 9807         	ldr	r0, [sp, #0x1c]
    2c7c: 2800         	cmp	r0, #0x0
    2c7e: d10e         	bne	0x2c9e <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0xb6> @ imm = #0x1c
    2c80: e7ff         	b	0x2c82 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0x9a> @ imm = #-0x2
    2c82: 9802         	ldr	r0, [sp, #0x8]
    2c84: 9b01         	ldr	r3, [sp, #0x4]
    2c86: aa13         	add	r2, sp, #0x4c
    2c88: 4611         	mov	r1, r2
    2c8a: cb70         	ldm	r3!, {r4, r5, r6}
    2c8c: c170         	stm	r1!, {r4, r5, r6}
    2c8e: cb70         	ldm	r3!, {r4, r5, r6}
    2c90: c170         	stm	r1!, {r4, r5, r6}
    2c92: 490c         	ldr	r1, [pc, #0x30]         @ 0x2cc4 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0xdc>
    2c94: f000 f9e8    	bl	0x3068 <core::fmt::write::h0df8b10c0edc881b> @ imm = #0x3d0
    2c98: a906         	add	r1, sp, #0x18
    2c9a: 7008         	strb	r0, [r1]
    2c9c: e009         	b	0x2cb2 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0xca> @ imm = #0x12
    2c9e: 9802         	ldr	r0, [sp, #0x8]
    2ca0: 9907         	ldr	r1, [sp, #0x1c]
    2ca2: 9a08         	ldr	r2, [sp, #0x20]
    2ca4: 9111         	str	r1, [sp, #0x44]
    2ca6: 9212         	str	r2, [sp, #0x48]
    2ca8: f000 f866    	bl	0x2d78 <<defmt::export::FmtWrite as core::fmt::Write>::write_str::h4ea879d869852471> @ imm = #0xcc
    2cac: a906         	add	r1, sp, #0x18
    2cae: 7008         	strb	r0, [r1]
    2cb0: e7ff         	b	0x2cb2 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt::h99f43e2eea253a99+0xca> @ imm = #-0x2
    2cb2: a806         	add	r0, sp, #0x18
    2cb4: 7800         	ldrb	r0, [r0]
    2cb6: 2101         	movs	r1, #0x1
    2cb8: 4008         	ands	r0, r1
    2cba: b019         	add	sp, #0x64
    2cbc: bdf0         	pop	{r4, r5, r6, r7, pc}
    2cbe: 46c0         	mov	r8, r8
    2cc0: d8 00 00 00  	.word	0x000000d8
    2cc4: 78 05 00 00  	.word	0x00000578

Disassembly of section .text.defmt::export::make_istr::h2fd57e43a100f582:

00002cc8 <defmt::export::make_istr::h2fd57e43a100f582>:
    2cc8: b081         	sub	sp, #0x4
    2cca: 4669         	mov	r1, sp
    2ccc: 8008         	strh	r0, [r1]
    2cce: b001         	add	sp, #0x4
    2cd0: 4770         	bx	lr

Disassembly of section .text.defmt::export::make_formatter::ha9189e094d8c8165:

00002cd2 <defmt::export::make_formatter::ha9189e094d8c8165>:
    2cd2: 4770         	bx	lr

Disassembly of section .text.defmt::export::istr::haa718d2dfdfb8693:

00002cd4 <defmt::export::istr::haa718d2dfdfb8693>:
    2cd4: b580         	push	{r7, lr}
    2cd6: af00         	add	r7, sp, #0x0
    2cd8: b086         	sub	sp, #0x18
    2cda: 9002         	str	r0, [sp, #0x8]
    2cdc: 8800         	ldrh	r0, [r0]
    2cde: f7ff fe53    	bl	0x2988 <core::num::<impl u16>::to_le_bytes::h9fea1b06254172a5> @ imm = #-0x35a
    2ce2: a903         	add	r1, sp, #0xc
    2ce4: 8008         	strh	r0, [r1]
    2ce6: 9903         	ldr	r1, [sp, #0xc]
    2ce8: a801         	add	r0, sp, #0x4
    2cea: 8001         	strh	r1, [r0]
    2cec: 9004         	str	r0, [sp, #0x10]
    2cee: 2102         	movs	r1, #0x2
    2cf0: 9105         	str	r1, [sp, #0x14]
    2cf2: f7ff f957    	bl	0x1fa4 <_defmt_write>   @ imm = #-0xd52
    2cf6: b006         	add	sp, #0x18
    2cf8: bd80         	pop	{r7, pc}

Disassembly of section .text.defmt::export::display::h31980a638e969f1e:

00002cfc <defmt::export::display::h31980a638e969f1e>:
    2cfc: b580         	push	{r7, lr}
    2cfe: af00         	add	r7, sp, #0x0
    2d00: b096         	sub	sp, #0x58
    2d02: 9002         	str	r0, [sp, #0x8]
    2d04: 9103         	str	r1, [sp, #0xc]
    2d06: a902         	add	r1, sp, #0x8
    2d08: 9111         	str	r1, [sp, #0x44]
    2d0a: 4810         	ldr	r0, [pc, #0x40]         @ 0x2d4c <defmt::export::display::h31980a638e969f1e+0x50>
    2d0c: 9012         	str	r0, [sp, #0x48]
    2d0e: 9113         	str	r1, [sp, #0x4c]
    2d10: 910f         	str	r1, [sp, #0x3c]
    2d12: 9010         	str	r0, [sp, #0x40]
    2d14: 9810         	ldr	r0, [sp, #0x40]
    2d16: 900e         	str	r0, [sp, #0x38]
    2d18: 980f         	ldr	r0, [sp, #0x3c]
    2d1a: 900d         	str	r0, [sp, #0x34]
    2d1c: 980e         	ldr	r0, [sp, #0x38]
    2d1e: 900c         	str	r0, [sp, #0x30]
    2d20: 980d         	ldr	r0, [sp, #0x34]
    2d22: 900b         	str	r0, [sp, #0x2c]
    2d24: 490a         	ldr	r1, [pc, #0x28]         @ 0x2d50 <defmt::export::display::h31980a638e969f1e+0x54>
    2d26: a805         	add	r0, sp, #0x14
    2d28: 9001         	str	r0, [sp, #0x4]
    2d2a: aa0b         	add	r2, sp, #0x2c
    2d2c: f7ff fe16    	bl	0x295c <core::fmt::Arguments::new_v1::hf9439a3697bf2862> @ imm = #-0x3d4
    2d30: 9901         	ldr	r1, [sp, #0x4]
    2d32: a804         	add	r0, sp, #0x10
    2d34: f7ff fe0a    	bl	0x294c <core::fmt::Write::write_fmt::h993bdc6eeb697566> @ imm = #-0x3ec
    2d38: f7ff ff38    	bl	0x2bac <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h5a567a009fc65aeaE> @ imm = #-0x190
    2d3c: 4805         	ldr	r0, [pc, #0x14]         @ 0x2d54 <defmt::export::display::h31980a638e969f1e+0x58>
    2d3e: 9014         	str	r0, [sp, #0x50]
    2d40: 2101         	movs	r1, #0x1
    2d42: 9115         	str	r1, [sp, #0x54]
    2d44: f7ff f92e    	bl	0x1fa4 <_defmt_write>   @ imm = #-0xda4
    2d48: b016         	add	sp, #0x58
    2d4a: bd80         	pop	{r7, pc}
    2d4c: fd 28 00 00  	.word	0x000028fd
    2d50: d0 00 00 00  	.word	0x000000d0
    2d54: d8 04 00 00  	.word	0x000004d8

Disassembly of section .text.defmt::export::acquire_and_header::h864b1802f03430a8:

00002d58 <defmt::export::acquire_and_header::h864b1802f03430a8>:
    2d58: b580         	push	{r7, lr}
    2d5a: af00         	add	r7, sp, #0x0
    2d5c: b082         	sub	sp, #0x8
    2d5e: 9000         	str	r0, [sp]
    2d60: 9001         	str	r0, [sp, #0x4]
    2d62: f7ff f915    	bl	0x1f90 <_defmt_acquire> @ imm = #-0xdd6
    2d66: 9800         	ldr	r0, [sp]
    2d68: f7ff ffb4    	bl	0x2cd4 <defmt::export::istr::haa718d2dfdfb8693> @ imm = #-0x98
    2d6c: f7ff ffb1    	bl	0x2cd2 <defmt::export::make_formatter::ha9189e094d8c8165> @ imm = #-0x9e
    2d70: f000 f81c    	bl	0x2dac <_defmt_timestamp> @ imm = #0x38
    2d74: b002         	add	sp, #0x8
    2d76: bd80         	pop	{r7, pc}

Disassembly of section .text.<defmt::export::FmtWrite as core::fmt::Write>::write_str::h4ea879d869852471:

00002d78 <<defmt::export::FmtWrite as core::fmt::Write>::write_str::h4ea879d869852471>:
    2d78: b580         	push	{r7, lr}
    2d7a: af00         	add	r7, sp, #0x0
    2d7c: b08a         	sub	sp, #0x28
    2d7e: 9200         	str	r2, [sp]
    2d80: 460a         	mov	r2, r1
    2d82: 9900         	ldr	r1, [sp]
    2d84: 9201         	str	r2, [sp, #0x4]
    2d86: 4602         	mov	r2, r0
    2d88: 9801         	ldr	r0, [sp, #0x4]
    2d8a: 9203         	str	r2, [sp, #0xc]
    2d8c: 9004         	str	r0, [sp, #0x10]
    2d8e: 9105         	str	r1, [sp, #0x14]
    2d90: 9006         	str	r0, [sp, #0x18]
    2d92: 9107         	str	r1, [sp, #0x1c]
    2d94: 9008         	str	r0, [sp, #0x20]
    2d96: 9109         	str	r1, [sp, #0x24]
    2d98: f7ff f904    	bl	0x1fa4 <_defmt_write>   @ imm = #-0xdf8
    2d9c: a802         	add	r0, sp, #0x8
    2d9e: 2100         	movs	r1, #0x0
    2da0: 7001         	strb	r1, [r0]
    2da2: 7800         	ldrb	r0, [r0]
    2da4: 2101         	movs	r1, #0x1
    2da6: 4008         	ands	r0, r1
    2da8: b00a         	add	sp, #0x28
    2daa: bd80         	pop	{r7, pc}

Disassembly of section .text.__defmt_default_timestamp:

00002dac <_defmt_timestamp>:
    2dac: b081         	sub	sp, #0x4
    2dae: b001         	add	sp, #0x4
    2db0: 4770         	bx	lr

Disassembly of section .text.core::ptr::read_volatile::hbdcf4e41414fec75:

00002db2 <core::ptr::read_volatile::hbdcf4e41414fec75>:
    2db2: b580         	push	{r7, lr}
    2db4: af00         	add	r7, sp, #0x0
    2db6: b084         	sub	sp, #0x10
    2db8: 9001         	str	r0, [sp, #0x4]
    2dba: 9002         	str	r0, [sp, #0x8]
    2dbc: e7ff         	b	0x2dbe <core::ptr::read_volatile::hbdcf4e41414fec75+0xc> @ imm = #-0x2
    2dbe: 9801         	ldr	r0, [sp, #0x4]
    2dc0: 2104         	movs	r1, #0x4
    2dc2: f000 f807    	bl	0x2dd4 <core::ptr::read_volatile::precondition_check::h57de2065623878a2> @ imm = #0xe
    2dc6: e7ff         	b	0x2dc8 <core::ptr::read_volatile::hbdcf4e41414fec75+0x16> @ imm = #-0x2
    2dc8: 9801         	ldr	r0, [sp, #0x4]
    2dca: 6800         	ldr	r0, [r0]
    2dcc: 9003         	str	r0, [sp, #0xc]
    2dce: 9803         	ldr	r0, [sp, #0xc]
    2dd0: b004         	add	sp, #0x10
    2dd2: bd80         	pop	{r7, pc}

Disassembly of section .text.core::ptr::read_volatile::precondition_check::h57de2065623878a2:

00002dd4 <core::ptr::read_volatile::precondition_check::h57de2065623878a2>:
    2dd4: b580         	push	{r7, lr}
    2dd6: af00         	add	r7, sp, #0x0
    2dd8: b08e         	sub	sp, #0x38
    2dda: 9101         	str	r1, [sp, #0x4]
    2ddc: 4a1f         	ldr	r2, [pc, #0x7c]         @ 0x2e5c <core::ptr::read_volatile::precondition_check::h57de2065623878a2+0x88>
    2dde: 9203         	str	r2, [sp, #0xc]
    2de0: 900a         	str	r0, [sp, #0x28]
    2de2: 910b         	str	r1, [sp, #0x2c]
    2de4: 900c         	str	r0, [sp, #0x30]
    2de6: 4601         	mov	r1, r0
    2de8: 9102         	str	r1, [sp, #0x8]
    2dea: 2800         	cmp	r0, #0x0
    2dec: d101         	bne	0x2df2 <core::ptr::read_volatile::precondition_check::h57de2065623878a2+0x1e> @ imm = #0x2
    2dee: e7ff         	b	0x2df0 <core::ptr::read_volatile::precondition_check::h57de2065623878a2+0x1c> @ imm = #-0x2
    2df0: e016         	b	0x2e20 <core::ptr::read_volatile::precondition_check::h57de2065623878a2+0x4c> @ imm = #0x2c
    2df2: 9801         	ldr	r0, [sp, #0x4]
    2df4: 0841         	lsrs	r1, r0, #0x1
    2df6: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x2e60 <core::ptr::read_volatile::precondition_check::h57de2065623878a2+0x8c>
    2df8: 4011         	ands	r1, r2
    2dfa: 1a41         	subs	r1, r0, r1
    2dfc: 4a19         	ldr	r2, [pc, #0x64]         @ 0x2e64 <core::ptr::read_volatile::precondition_check::h57de2065623878a2+0x90>
    2dfe: 4608         	mov	r0, r1
    2e00: 4010         	ands	r0, r2
    2e02: 0889         	lsrs	r1, r1, #0x2
    2e04: 4011         	ands	r1, r2
    2e06: 1840         	adds	r0, r0, r1
    2e08: 0901         	lsrs	r1, r0, #0x4
    2e0a: 1841         	adds	r1, r0, r1
    2e0c: 4816         	ldr	r0, [pc, #0x58]         @ 0x2e68 <core::ptr::read_volatile::precondition_check::h57de2065623878a2+0x94>
    2e0e: 4001         	ands	r1, r0
    2e10: 4816         	ldr	r0, [pc, #0x58]         @ 0x2e6c <core::ptr::read_volatile::precondition_check::h57de2065623878a2+0x98>
    2e12: 4348         	muls	r0, r1, r0
    2e14: 0e00         	lsrs	r0, r0, #0x18
    2e16: 900d         	str	r0, [sp, #0x34]
    2e18: 980d         	ldr	r0, [sp, #0x34]
    2e1a: 2801         	cmp	r0, #0x1
    2e1c: d004         	beq	0x2e28 <core::ptr::read_volatile::precondition_check::h57de2065623878a2+0x54> @ imm = #0x8
    2e1e: e009         	b	0x2e34 <core::ptr::read_volatile::precondition_check::h57de2065623878a2+0x60> @ imm = #0x12
    2e20: 4815         	ldr	r0, [pc, #0x54]         @ 0x2e78 <core::ptr::read_volatile::precondition_check::h57de2065623878a2+0xa4>
    2e22: 216e         	movs	r1, #0x6e
    2e24: f000 f90a    	bl	0x303c <core::panicking::panic_nounwind::h8ba64b62f651a9d5> @ imm = #0x214
    2e28: 9802         	ldr	r0, [sp, #0x8]
    2e2a: 9901         	ldr	r1, [sp, #0x4]
    2e2c: 1e49         	subs	r1, r1, #0x1
    2e2e: 4208         	tst	r0, r1
    2e30: d011         	beq	0x2e56 <core::ptr::read_volatile::precondition_check::h57de2065623878a2+0x82> @ imm = #0x22
    2e32: e7f5         	b	0x2e20 <core::ptr::read_volatile::precondition_check::h57de2065623878a2+0x4c> @ imm = #-0x16
    2e34: 4809         	ldr	r0, [pc, #0x24]         @ 0x2e5c <core::ptr::read_volatile::precondition_check::h57de2065623878a2+0x88>
    2e36: 9004         	str	r0, [sp, #0x10]
    2e38: 2001         	movs	r0, #0x1
    2e3a: 9005         	str	r0, [sp, #0x14]
    2e3c: 480c         	ldr	r0, [pc, #0x30]         @ 0x2e70 <core::ptr::read_volatile::precondition_check::h57de2065623878a2+0x9c>
    2e3e: 6801         	ldr	r1, [r0]
    2e40: 6840         	ldr	r0, [r0, #0x4]
    2e42: 9108         	str	r1, [sp, #0x20]
    2e44: 9009         	str	r0, [sp, #0x24]
    2e46: 2004         	movs	r0, #0x4
    2e48: 9006         	str	r0, [sp, #0x18]
    2e4a: 2000         	movs	r0, #0x0
    2e4c: 9007         	str	r0, [sp, #0x1c]
    2e4e: 4909         	ldr	r1, [pc, #0x24]         @ 0x2e74 <core::ptr::read_volatile::precondition_check::h57de2065623878a2+0xa0>
    2e50: a804         	add	r0, sp, #0x10
    2e52: f000 f8d1    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x1a2
    2e56: b00e         	add	sp, #0x38
    2e58: bd80         	pop	{r7, pc}
    2e5a: 46c0         	mov	r8, r8
    2e5c: 5c 00 00 00  	.word	0x0000005c
    2e60: 55 55 55 55  	.word	0x55555555
    2e64: 33 33 33 33  	.word	0x33333333
    2e68: 0f 0f 0f 0f  	.word	0x0f0f0f0f
    2e6c: 01 01 01 01  	.word	0x01010101
    2e70: d8 00 00 00  	.word	0x000000d8
    2e74: 2c 06 00 00  	.word	0x0000062c
    2e78: a4 02 00 00  	.word	0x000002a4

Disassembly of section .text.core::ptr::write_volatile::h4a8585210e8cbb36:

00002e7c <core::ptr::write_volatile::h4a8585210e8cbb36>:
    2e7c: b580         	push	{r7, lr}
    2e7e: af00         	add	r7, sp, #0x0
    2e80: b084         	sub	sp, #0x10
    2e82: 9100         	str	r1, [sp]
    2e84: 9001         	str	r0, [sp, #0x4]
    2e86: 9002         	str	r0, [sp, #0x8]
    2e88: 9103         	str	r1, [sp, #0xc]
    2e8a: e7ff         	b	0x2e8c <core::ptr::write_volatile::h4a8585210e8cbb36+0x10> @ imm = #-0x2
    2e8c: 9801         	ldr	r0, [sp, #0x4]
    2e8e: 2104         	movs	r1, #0x4
    2e90: f000 f806    	bl	0x2ea0 <core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42> @ imm = #0xc
    2e94: e7ff         	b	0x2e96 <core::ptr::write_volatile::h4a8585210e8cbb36+0x1a> @ imm = #-0x2
    2e96: 9800         	ldr	r0, [sp]
    2e98: 9901         	ldr	r1, [sp, #0x4]
    2e9a: 6008         	str	r0, [r1]
    2e9c: b004         	add	sp, #0x10
    2e9e: bd80         	pop	{r7, pc}

Disassembly of section .text.core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42:

00002ea0 <core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42>:
    2ea0: b580         	push	{r7, lr}
    2ea2: af00         	add	r7, sp, #0x0
    2ea4: b08e         	sub	sp, #0x38
    2ea6: 9100         	str	r1, [sp]
    2ea8: 4a1f         	ldr	r2, [pc, #0x7c]         @ 0x2f28 <core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42+0x88>
    2eaa: 9202         	str	r2, [sp, #0x8]
    2eac: 9009         	str	r0, [sp, #0x24]
    2eae: 910a         	str	r1, [sp, #0x28]
    2eb0: 900b         	str	r0, [sp, #0x2c]
    2eb2: 900c         	str	r0, [sp, #0x30]
    2eb4: 4601         	mov	r1, r0
    2eb6: 9101         	str	r1, [sp, #0x4]
    2eb8: 2800         	cmp	r0, #0x0
    2eba: d101         	bne	0x2ec0 <core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42+0x20> @ imm = #0x2
    2ebc: e7ff         	b	0x2ebe <core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42+0x1e> @ imm = #-0x2
    2ebe: e016         	b	0x2eee <core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42+0x4e> @ imm = #0x2c
    2ec0: 9800         	ldr	r0, [sp]
    2ec2: 0841         	lsrs	r1, r0, #0x1
    2ec4: 4a19         	ldr	r2, [pc, #0x64]         @ 0x2f2c <core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42+0x8c>
    2ec6: 4011         	ands	r1, r2
    2ec8: 1a41         	subs	r1, r0, r1
    2eca: 4a19         	ldr	r2, [pc, #0x64]         @ 0x2f30 <core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42+0x90>
    2ecc: 4608         	mov	r0, r1
    2ece: 4010         	ands	r0, r2
    2ed0: 0889         	lsrs	r1, r1, #0x2
    2ed2: 4011         	ands	r1, r2
    2ed4: 1840         	adds	r0, r0, r1
    2ed6: 0901         	lsrs	r1, r0, #0x4
    2ed8: 1841         	adds	r1, r0, r1
    2eda: 4816         	ldr	r0, [pc, #0x58]         @ 0x2f34 <core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42+0x94>
    2edc: 4001         	ands	r1, r0
    2ede: 4816         	ldr	r0, [pc, #0x58]         @ 0x2f38 <core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42+0x98>
    2ee0: 4348         	muls	r0, r1, r0
    2ee2: 0e00         	lsrs	r0, r0, #0x18
    2ee4: 900d         	str	r0, [sp, #0x34]
    2ee6: 980d         	ldr	r0, [sp, #0x34]
    2ee8: 2801         	cmp	r0, #0x1
    2eea: d004         	beq	0x2ef6 <core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42+0x56> @ imm = #0x8
    2eec: e009         	b	0x2f02 <core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42+0x62> @ imm = #0x12
    2eee: 4815         	ldr	r0, [pc, #0x54]         @ 0x2f44 <core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42+0xa4>
    2ef0: 216f         	movs	r1, #0x6f
    2ef2: f000 f8a3    	bl	0x303c <core::panicking::panic_nounwind::h8ba64b62f651a9d5> @ imm = #0x146
    2ef6: 9801         	ldr	r0, [sp, #0x4]
    2ef8: 9900         	ldr	r1, [sp]
    2efa: 1e49         	subs	r1, r1, #0x1
    2efc: 4208         	tst	r0, r1
    2efe: d011         	beq	0x2f24 <core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42+0x84> @ imm = #0x22
    2f00: e7f5         	b	0x2eee <core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42+0x4e> @ imm = #-0x16
    2f02: 4809         	ldr	r0, [pc, #0x24]         @ 0x2f28 <core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42+0x88>
    2f04: 9003         	str	r0, [sp, #0xc]
    2f06: 2001         	movs	r0, #0x1
    2f08: 9004         	str	r0, [sp, #0x10]
    2f0a: 480c         	ldr	r0, [pc, #0x30]         @ 0x2f3c <core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42+0x9c>
    2f0c: 6801         	ldr	r1, [r0]
    2f0e: 6840         	ldr	r0, [r0, #0x4]
    2f10: 9107         	str	r1, [sp, #0x1c]
    2f12: 9008         	str	r0, [sp, #0x20]
    2f14: 2004         	movs	r0, #0x4
    2f16: 9005         	str	r0, [sp, #0x14]
    2f18: 2000         	movs	r0, #0x0
    2f1a: 9006         	str	r0, [sp, #0x18]
    2f1c: 4908         	ldr	r1, [pc, #0x20]         @ 0x2f40 <core::ptr::write_volatile::precondition_check::h0ecde13a2dd44a42+0xa0>
    2f1e: a803         	add	r0, sp, #0xc
    2f20: f000 f86a    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0xd4
    2f24: b00e         	add	sp, #0x38
    2f26: bd80         	pop	{r7, pc}
    2f28: 5c 00 00 00  	.word	0x0000005c
    2f2c: 55 55 55 55  	.word	0x55555555
    2f30: 33 33 33 33  	.word	0x33333333
    2f34: 0f 0f 0f 0f  	.word	0x0f0f0f0f
    2f38: 01 01 01 01  	.word	0x01010101
    2f3c: d8 00 00 00  	.word	0x000000d8
    2f40: 2c 06 00 00  	.word	0x0000062c
    2f44: 6c 01 00 00  	.word	0x0000016c

Disassembly of section .text.__cpsid:

00002f48 <__cpsid>:
    2f48: b672         	cpsid i
    2f4a: 4770         	bx	lr

Disassembly of section .text.__cpsie:

00002f4c <__cpsie>:
    2f4c: b662         	cpsie i
    2f4e: 4770         	bx	lr

Disassembly of section .text.__primask_r:

00002f50 <__primask_r>:
    2f50: f3ef 8010    	mrs	r0, primask
    2f54: 4770         	bx	lr

Disassembly of section .text.__udf:

00002f56 <__udf>:
    2f56: de00         	udf	#0x0
    2f58: defe         	trap

Disassembly of section .text.<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d:

00002f5c <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d>:
    2f5c: b5f0         	push	{r4, r5, r6, r7, lr}
    2f5e: af03         	add	r7, sp, #0xc
    2f60: b08f         	sub	sp, #0x3c
    2f62: 4604         	mov	r4, r0
    2f64: 694d         	ldr	r5, [r1, #0x14]
    2f66: 698e         	ldr	r6, [r1, #0x18]
    2f68: 68f3         	ldr	r3, [r6, #0xc]
    2f6a: 491e         	ldr	r1, [pc, #0x78]         @ 0x2fe4 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d+0x88>
    2f6c: 220c         	movs	r2, #0xc
    2f6e: 4628         	mov	r0, r5
    2f70: 9302         	str	r3, [sp, #0x8]
    2f72: 4798         	blx	r3
    2f74: 2101         	movs	r1, #0x1
    2f76: 2800         	cmp	r0, #0x0
    2f78: d11f         	bne	0x2fba <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d+0x5e> @ imm = #0x3e
    2f7a: 9101         	str	r1, [sp, #0x4]
    2f7c: 9400         	str	r4, [sp]
    2f7e: 69a0         	ldr	r0, [r4, #0x18]
    2f80: 2100         	movs	r1, #0x0
    2f82: 9107         	str	r1, [sp, #0x1c]
    2f84: 2103         	movs	r1, #0x3
    2f86: 9104         	str	r1, [sp, #0x10]
    2f88: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x2fe8 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d+0x8c>
    2f8a: 9203         	str	r2, [sp, #0xc]
    2f8c: 9106         	str	r1, [sp, #0x18]
    2f8e: a909         	add	r1, sp, #0x24
    2f90: 9105         	str	r1, [sp, #0x14]
    2f92: 4916         	ldr	r1, [pc, #0x58]         @ 0x2fec <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d+0x90>
    2f94: 910e         	str	r1, [sp, #0x38]
    2f96: 4602         	mov	r2, r0
    2f98: 320c         	adds	r2, #0xc
    2f9a: 920d         	str	r2, [sp, #0x34]
    2f9c: 910c         	str	r1, [sp, #0x30]
    2f9e: 4601         	mov	r1, r0
    2fa0: 3108         	adds	r1, #0x8
    2fa2: 910b         	str	r1, [sp, #0x2c]
    2fa4: 4912         	ldr	r1, [pc, #0x48]         @ 0x2ff0 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d+0x94>
    2fa6: 910a         	str	r1, [sp, #0x28]
    2fa8: 9009         	str	r0, [sp, #0x24]
    2faa: aa03         	add	r2, sp, #0xc
    2fac: 4628         	mov	r0, r5
    2fae: 4631         	mov	r1, r6
    2fb0: f000 f85a    	bl	0x3068 <core::fmt::write::h0df8b10c0edc881b> @ imm = #0xb4
    2fb4: 2800         	cmp	r0, #0x0
    2fb6: d003         	beq	0x2fc0 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d+0x64> @ imm = #0x6
    2fb8: 9901         	ldr	r1, [sp, #0x4]
    2fba: 4608         	mov	r0, r1
    2fbc: b00f         	add	sp, #0x3c
    2fbe: bdf0         	pop	{r4, r5, r6, r7, pc}
    2fc0: 490c         	ldr	r1, [pc, #0x30]         @ 0x2ff4 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d+0x98>
    2fc2: 2202         	movs	r2, #0x2
    2fc4: 4628         	mov	r0, r5
    2fc6: 9b02         	ldr	r3, [sp, #0x8]
    2fc8: 4798         	blx	r3
    2fca: 2800         	cmp	r0, #0x0
    2fcc: 9901         	ldr	r1, [sp, #0x4]
    2fce: d1f4         	bne	0x2fba <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d+0x5e> @ imm = #-0x18
    2fd0: 4628         	mov	r0, r5
    2fd2: 4631         	mov	r1, r6
    2fd4: 9a00         	ldr	r2, [sp]
    2fd6: f000 f847    	bl	0x3068 <core::fmt::write::h0df8b10c0edc881b> @ imm = #0x8e
    2fda: 4601         	mov	r1, r0
    2fdc: 4608         	mov	r0, r1
    2fde: b00f         	add	sp, #0x3c
    2fe0: bdf0         	pop	{r4, r5, r6, r7, pc}
    2fe2: 46c0         	mov	r8, r8
    2fe4: ec 0c 00 00  	.word	0x00000cec
    2fe8: d4 0c 00 00  	.word	0x00000cd4
    2fec: 61 3c 00 00  	.word	0x00003c61
    2ff0: 55 3d 00 00  	.word	0x00003d55
    2ff4: f8 0c 00 00  	.word	0x00000cf8

Disassembly of section .text.unlikely.core::panicking::panic_fmt::h756aba86a6a1830d:

00002ff8 <core::panicking::panic_fmt::h756aba86a6a1830d>:
    2ff8: b580         	push	{r7, lr}
    2ffa: af00         	add	r7, sp, #0x0
    2ffc: b088         	sub	sp, #0x20
    2ffe: 466a         	mov	r2, sp
    3000: 4613         	mov	r3, r2
    3002: c870         	ldm	r0!, {r4, r5, r6}
    3004: c370         	stm	r3!, {r4, r5, r6}
    3006: c870         	ldm	r0!, {r4, r5, r6}
    3008: c370         	stm	r3!, {r4, r5, r6}
    300a: 2001         	movs	r0, #0x1
    300c: 8390         	strh	r0, [r2, #0x1c]
    300e: 9106         	str	r1, [sp, #0x18]
    3010: 4610         	mov	r0, r2
    3012: f7fe f85d    	bl	0x10d0 <rust_begin_unwind> @ imm = #-0x1f46

Disassembly of section .text.unlikely.core::panicking::panic_nounwind_fmt::h4094459c57d84e6d:

00003016 <core::panicking::panic_nounwind_fmt::h4094459c57d84e6d>:
    3016: b580         	push	{r7, lr}
    3018: af00         	add	r7, sp, #0x0
    301a: b08a         	sub	sp, #0x28
    301c: 9201         	str	r2, [sp, #0x4]
    301e: 460a         	mov	r2, r1
    3020: a902         	add	r1, sp, #0x8
    3022: 460c         	mov	r4, r1
    3024: c868         	ldm	r0!, {r3, r5, r6}
    3026: c468         	stm	r4!, {r3, r5, r6}
    3028: c868         	ldm	r0!, {r3, r5, r6}
    302a: c468         	stm	r4!, {r3, r5, r6}
    302c: 774a         	strb	r2, [r1, #0x1d]
    302e: 2000         	movs	r0, #0x0
    3030: 7708         	strb	r0, [r1, #0x1c]
    3032: 9801         	ldr	r0, [sp, #0x4]
    3034: 9008         	str	r0, [sp, #0x20]
    3036: 4608         	mov	r0, r1
    3038: f7fe f84a    	bl	0x10d0 <rust_begin_unwind> @ imm = #-0x1f6c

Disassembly of section .text.unlikely.core::panicking::panic_nounwind::h8ba64b62f651a9d5:

0000303c <core::panicking::panic_nounwind::h8ba64b62f651a9d5>:
    303c: b580         	push	{r7, lr}
    303e: af00         	add	r7, sp, #0x0
    3040: b088         	sub	sp, #0x20
    3042: 460a         	mov	r2, r1
    3044: 2100         	movs	r1, #0x0
    3046: 9104         	str	r1, [sp, #0x10]
    3048: 2301         	movs	r3, #0x1
    304a: 9301         	str	r3, [sp, #0x4]
    304c: ab06         	add	r3, sp, #0x18
    304e: 9300         	str	r3, [sp]
    3050: 9103         	str	r1, [sp, #0xc]
    3052: 2304         	movs	r3, #0x4
    3054: 9302         	str	r3, [sp, #0x8]
    3056: 9207         	str	r2, [sp, #0x1c]
    3058: 9006         	str	r0, [sp, #0x18]
    305a: 4668         	mov	r0, sp
    305c: 4a01         	ldr	r2, [pc, #0x4]          @ 0x3064 <core::panicking::panic_nounwind::h8ba64b62f651a9d5+0x28>
    305e: f7ff ffda    	bl	0x3016 <core::panicking::panic_nounwind_fmt::h4094459c57d84e6d> @ imm = #-0x4c
    3062: 46c0         	mov	r8, r8
    3064: 10 0d 00 00  	.word	0x00000d10

Disassembly of section .text.core::fmt::write::h0df8b10c0edc881b:

00003068 <core::fmt::write::h0df8b10c0edc881b>:
    3068: b5f0         	push	{r4, r5, r6, r7, lr}
    306a: af03         	add	r7, sp, #0xc
    306c: b08f         	sub	sp, #0x3c
    306e: 2420         	movs	r4, #0x20
    3070: ad06         	add	r5, sp, #0x18
    3072: 2303         	movs	r3, #0x3
    3074: 9504         	str	r5, [sp, #0x10]
    3076: 552b         	strb	r3, [r5, r4]
    3078: 940a         	str	r4, [sp, #0x28]
    307a: 2300         	movs	r3, #0x0
    307c: ac0b         	add	r4, sp, #0x2c
    307e: c40b         	stm	r4!, {r0, r1, r3}
    3080: 9308         	str	r3, [sp, #0x20]
    3082: 9306         	str	r3, [sp, #0x18]
    3084: 6915         	ldr	r5, [r2, #0x10]
    3086: 2d00         	cmp	r5, #0x0
    3088: d05a         	beq	0x3140 <core::fmt::write::h0df8b10c0edc881b+0xd8> @ imm = #0xb4
    308a: 6950         	ldr	r0, [r2, #0x14]
    308c: 2800         	cmp	r0, #0x0
    308e: d07b         	beq	0x3188 <core::fmt::write::h0df8b10c0edc881b+0x120> @ imm = #0xf6
    3090: 9904         	ldr	r1, [sp, #0x10]
    3092: 3120         	adds	r1, #0x20
    3094: 9104         	str	r1, [sp, #0x10]
    3096: 211f         	movs	r1, #0x1f
    3098: 06c9         	lsls	r1, r1, #0x1b
    309a: 1e43         	subs	r3, r0, #0x1
    309c: 438b         	bics	r3, r1
    309e: 1c59         	adds	r1, r3, #0x1
    30a0: 9100         	str	r1, [sp]
    30a2: 0140         	lsls	r0, r0, #0x5
    30a4: 9002         	str	r0, [sp, #0x8]
    30a6: 6890         	ldr	r0, [r2, #0x8]
    30a8: 9005         	str	r0, [sp, #0x14]
    30aa: 9201         	str	r2, [sp, #0x4]
    30ac: 6816         	ldr	r6, [r2]
    30ae: 2400         	movs	r4, #0x0
    30b0: 9503         	str	r5, [sp, #0xc]
    30b2: 6872         	ldr	r2, [r6, #0x4]
    30b4: 2a00         	cmp	r2, #0x0
    30b6: d006         	beq	0x30c6 <core::fmt::write::h0df8b10c0edc881b+0x5e> @ imm = #0xc
    30b8: 980c         	ldr	r0, [sp, #0x30]
    30ba: 68c3         	ldr	r3, [r0, #0xc]
    30bc: 6831         	ldr	r1, [r6]
    30be: 980b         	ldr	r0, [sp, #0x2c]
    30c0: 4798         	blx	r3
    30c2: 2800         	cmp	r0, #0x0
    30c4: d16f         	bne	0x31a6 <core::fmt::write::h0df8b10c0edc881b+0x13e> @ imm = #0xde
    30c6: 1928         	adds	r0, r5, r4
    30c8: 7f01         	ldrb	r1, [r0, #0x1c]
    30ca: 9a04         	ldr	r2, [sp, #0x10]
    30cc: 7011         	strb	r1, [r2]
    30ce: 6901         	ldr	r1, [r0, #0x10]
    30d0: 910a         	str	r1, [sp, #0x28]
    30d2: 6981         	ldr	r1, [r0, #0x18]
    30d4: 910d         	str	r1, [sp, #0x34]
    30d6: 6883         	ldr	r3, [r0, #0x8]
    30d8: 68c2         	ldr	r2, [r0, #0xc]
    30da: 2100         	movs	r1, #0x0
    30dc: 2b00         	cmp	r3, #0x0
    30de: d00a         	beq	0x30f6 <core::fmt::write::h0df8b10c0edc881b+0x8e> @ imm = #0x14
    30e0: 2b01         	cmp	r3, #0x1
    30e2: 460b         	mov	r3, r1
    30e4: d108         	bne	0x30f8 <core::fmt::write::h0df8b10c0edc881b+0x90> @ imm = #0x10
    30e6: 00d2         	lsls	r2, r2, #0x3
    30e8: 9b05         	ldr	r3, [sp, #0x14]
    30ea: 189d         	adds	r5, r3, r2
    30ec: 686a         	ldr	r2, [r5, #0x4]
    30ee: 2a00         	cmp	r2, #0x0
    30f0: 460b         	mov	r3, r1
    30f2: d101         	bne	0x30f8 <core::fmt::write::h0df8b10c0edc881b+0x90> @ imm = #0x2
    30f4: 682a         	ldr	r2, [r5]
    30f6: 2301         	movs	r3, #0x1
    30f8: 9207         	str	r2, [sp, #0x1c]
    30fa: 9306         	str	r3, [sp, #0x18]
    30fc: 9d03         	ldr	r5, [sp, #0xc]
    30fe: 592b         	ldr	r3, [r5, r4]
    3100: 2b02         	cmp	r3, #0x2
    3102: d00b         	beq	0x311c <core::fmt::write::h0df8b10c0edc881b+0xb4> @ imm = #0x16
    3104: 6842         	ldr	r2, [r0, #0x4]
    3106: 2b01         	cmp	r3, #0x1
    3108: d106         	bne	0x3118 <core::fmt::write::h0df8b10c0edc881b+0xb0> @ imm = #0xc
    310a: 00d2         	lsls	r2, r2, #0x3
    310c: 9b05         	ldr	r3, [sp, #0x14]
    310e: 189b         	adds	r3, r3, r2
    3110: 685a         	ldr	r2, [r3, #0x4]
    3112: 2a00         	cmp	r2, #0x0
    3114: d102         	bne	0x311c <core::fmt::write::h0df8b10c0edc881b+0xb4> @ imm = #0x4
    3116: 681a         	ldr	r2, [r3]
    3118: 2101         	movs	r1, #0x1
    311a: e7ff         	b	0x311c <core::fmt::write::h0df8b10c0edc881b+0xb4> @ imm = #-0x2
    311c: 9209         	str	r2, [sp, #0x24]
    311e: 9108         	str	r1, [sp, #0x20]
    3120: 6940         	ldr	r0, [r0, #0x14]
    3122: 00c1         	lsls	r1, r0, #0x3
    3124: 9a05         	ldr	r2, [sp, #0x14]
    3126: 5850         	ldr	r0, [r2, r1]
    3128: 1851         	adds	r1, r2, r1
    312a: 684a         	ldr	r2, [r1, #0x4]
    312c: a906         	add	r1, sp, #0x18
    312e: 4790         	blx	r2
    3130: 2800         	cmp	r0, #0x0
    3132: d138         	bne	0x31a6 <core::fmt::write::h0df8b10c0edc881b+0x13e> @ imm = #0x70
    3134: 3420         	adds	r4, #0x20
    3136: 3608         	adds	r6, #0x8
    3138: 9802         	ldr	r0, [sp, #0x8]
    313a: 42a0         	cmp	r0, r4
    313c: d1b9         	bne	0x30b2 <core::fmt::write::h0df8b10c0edc881b+0x4a> @ imm = #-0x8e
    313e: e021         	b	0x3184 <core::fmt::write::h0df8b10c0edc881b+0x11c> @ imm = #0x42
    3140: 68d0         	ldr	r0, [r2, #0xc]
    3142: 2800         	cmp	r0, #0x0
    3144: d020         	beq	0x3188 <core::fmt::write::h0df8b10c0edc881b+0x120> @ imm = #0x40
    3146: 6894         	ldr	r4, [r2, #0x8]
    3148: 2107         	movs	r1, #0x7
    314a: 0749         	lsls	r1, r1, #0x1d
    314c: 1e43         	subs	r3, r0, #0x1
    314e: 438b         	bics	r3, r1
    3150: 1c59         	adds	r1, r3, #0x1
    3152: 9100         	str	r1, [sp]
    3154: 00c5         	lsls	r5, r0, #0x3
    3156: 9201         	str	r2, [sp, #0x4]
    3158: 6816         	ldr	r6, [r2]
    315a: 6872         	ldr	r2, [r6, #0x4]
    315c: 2a00         	cmp	r2, #0x0
    315e: d006         	beq	0x316e <core::fmt::write::h0df8b10c0edc881b+0x106> @ imm = #0xc
    3160: 980c         	ldr	r0, [sp, #0x30]
    3162: 68c3         	ldr	r3, [r0, #0xc]
    3164: 6831         	ldr	r1, [r6]
    3166: 980b         	ldr	r0, [sp, #0x2c]
    3168: 4798         	blx	r3
    316a: 2800         	cmp	r0, #0x0
    316c: d11b         	bne	0x31a6 <core::fmt::write::h0df8b10c0edc881b+0x13e> @ imm = #0x36
    316e: cc05         	ldm	r4!, {r0, r2}
    3170: a906         	add	r1, sp, #0x18
    3172: 3c08         	subs	r4, #0x8
    3174: 4790         	blx	r2
    3176: 2800         	cmp	r0, #0x0
    3178: d115         	bne	0x31a6 <core::fmt::write::h0df8b10c0edc881b+0x13e> @ imm = #0x2a
    317a: 3408         	adds	r4, #0x8
    317c: 3d08         	subs	r5, #0x8
    317e: 3608         	adds	r6, #0x8
    3180: 2d00         	cmp	r5, #0x0
    3182: d1ea         	bne	0x315a <core::fmt::write::h0df8b10c0edc881b+0xf2> @ imm = #-0x2c
    3184: 9a01         	ldr	r2, [sp, #0x4]
    3186: 9b00         	ldr	r3, [sp]
    3188: 6850         	ldr	r0, [r2, #0x4]
    318a: 4283         	cmp	r3, r0
    318c: d20e         	bhs	0x31ac <core::fmt::write::h0df8b10c0edc881b+0x144> @ imm = #0x1c
    318e: 4611         	mov	r1, r2
    3190: 00d8         	lsls	r0, r3, #0x3
    3192: 680a         	ldr	r2, [r1]
    3194: 5811         	ldr	r1, [r2, r0]
    3196: 1810         	adds	r0, r2, r0
    3198: 6842         	ldr	r2, [r0, #0x4]
    319a: 980c         	ldr	r0, [sp, #0x30]
    319c: 68c3         	ldr	r3, [r0, #0xc]
    319e: 980b         	ldr	r0, [sp, #0x2c]
    31a0: 4798         	blx	r3
    31a2: 2800         	cmp	r0, #0x0
    31a4: d002         	beq	0x31ac <core::fmt::write::h0df8b10c0edc881b+0x144> @ imm = #0x4
    31a6: 2001         	movs	r0, #0x1
    31a8: b00f         	add	sp, #0x3c
    31aa: bdf0         	pop	{r4, r5, r6, r7, pc}
    31ac: 2000         	movs	r0, #0x0
    31ae: b00f         	add	sp, #0x3c
    31b0: bdf0         	pop	{r4, r5, r6, r7, pc}

Disassembly of section .text.core::fmt::Formatter::pad_integral::hd877b7fcc7734582:

000031b4 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582>:
    31b4: b5f0         	push	{r4, r5, r6, r7, lr}
    31b6: af03         	add	r7, sp, #0xc
    31b8: b08b         	sub	sp, #0x2c
    31ba: 9309         	str	r3, [sp, #0x24]
    31bc: 920a         	str	r2, [sp, #0x28]
    31be: 4605         	mov	r5, r0
    31c0: 68fc         	ldr	r4, [r7, #0xc]
    31c2: 2900         	cmp	r1, #0x0
    31c4: d005         	beq	0x31d2 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x1e> @ imm = #0xa
    31c6: 69ea         	ldr	r2, [r5, #0x1c]
    31c8: 2001         	movs	r0, #0x1
    31ca: 4010         	ands	r0, r2
    31cc: d037         	beq	0x323e <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x8a> @ imm = #0x6e
    31ce: 212b         	movs	r1, #0x2b
    31d0: e037         	b	0x3242 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x8e> @ imm = #0x6e
    31d2: 69ea         	ldr	r2, [r5, #0x1c]
    31d4: 1c61         	adds	r1, r4, #0x1
    31d6: 202d         	movs	r0, #0x2d
    31d8: 9007         	str	r0, [sp, #0x1c]
    31da: 0750         	lsls	r0, r2, #0x1d
    31dc: 9406         	str	r4, [sp, #0x18]
    31de: d535         	bpl	0x324c <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x98> @ imm = #0x6a
    31e0: 9108         	str	r1, [sp, #0x20]
    31e2: 9909         	ldr	r1, [sp, #0x24]
    31e4: 2910         	cmp	r1, #0x10
    31e6: 9205         	str	r2, [sp, #0x14]
    31e8: d237         	bhs	0x325a <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xa6> @ imm = #0x6e
    31ea: 2900         	cmp	r1, #0x0
    31ec: d039         	beq	0x3262 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xae> @ imm = #0x72
    31ee: 9504         	str	r5, [sp, #0x10]
    31f0: 2303         	movs	r3, #0x3
    31f2: 4608         	mov	r0, r1
    31f4: 4018         	ands	r0, r3
    31f6: 9003         	str	r0, [sp, #0xc]
    31f8: 2904         	cmp	r1, #0x4
    31fa: d300         	blo	0x31fe <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x4a> @ imm = #0x0
    31fc: e084         	b	0x3308 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x154> @ imm = #0x108
    31fe: 2000         	movs	r0, #0x0
    3200: 4602         	mov	r2, r0
    3202: 9903         	ldr	r1, [sp, #0xc]
    3204: 2900         	cmp	r1, #0x0
    3206: 9d04         	ldr	r5, [sp, #0x10]
    3208: d02c         	beq	0x3264 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xb0> @ imm = #0x58
    320a: 990a         	ldr	r1, [sp, #0x28]
    320c: 568b         	ldrsb	r3, [r1, r2]
    320e: 2140         	movs	r1, #0x40
    3210: 43c9         	mvns	r1, r1
    3212: 428b         	cmp	r3, r1
    3214: dd00         	ble	0x3218 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x64> @ imm = #0x0
    3216: 1c40         	adds	r0, r0, #0x1
    3218: 9b03         	ldr	r3, [sp, #0xc]
    321a: 2b01         	cmp	r3, #0x1
    321c: d022         	beq	0x3264 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xb0> @ imm = #0x44
    321e: 9b0a         	ldr	r3, [sp, #0x28]
    3220: 189a         	adds	r2, r3, r2
    3222: 2301         	movs	r3, #0x1
    3224: 56d3         	ldrsb	r3, [r2, r3]
    3226: 428b         	cmp	r3, r1
    3228: dd00         	ble	0x322c <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x78> @ imm = #0x0
    322a: 1c40         	adds	r0, r0, #0x1
    322c: 9b03         	ldr	r3, [sp, #0xc]
    322e: 2b02         	cmp	r3, #0x2
    3230: d018         	beq	0x3264 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xb0> @ imm = #0x30
    3232: 2302         	movs	r3, #0x2
    3234: 56d2         	ldrsb	r2, [r2, r3]
    3236: 428a         	cmp	r2, r1
    3238: dd14         	ble	0x3264 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xb0> @ imm = #0x28
    323a: 1c40         	adds	r0, r0, #0x1
    323c: e012         	b	0x3264 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xb0> @ imm = #0x24
    323e: 2111         	movs	r1, #0x11
    3240: 0409         	lsls	r1, r1, #0x10
    3242: 9107         	str	r1, [sp, #0x1c]
    3244: 1901         	adds	r1, r0, r4
    3246: 0750         	lsls	r0, r2, #0x1d
    3248: 9406         	str	r4, [sp, #0x18]
    324a: d4c9         	bmi	0x31e0 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x2c> @ imm = #-0x6e
    324c: 2000         	movs	r0, #0x0
    324e: 900a         	str	r0, [sp, #0x28]
    3250: 68bb         	ldr	r3, [r7, #0x8]
    3252: 6828         	ldr	r0, [r5]
    3254: 2800         	cmp	r0, #0x0
    3256: d10c         	bne	0x3272 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xbe> @ imm = #0x18
    3258: e024         	b	0x32a4 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xf0> @ imm = #0x48
    325a: 980a         	ldr	r0, [sp, #0x28]
    325c: f000 fa52    	bl	0x3704 <core::str::count::do_count_chars::h3d51f7a5f3399c30> @ imm = #0x4a4
    3260: e000         	b	0x3264 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xb0> @ imm = #0x0
    3262: 2000         	movs	r0, #0x0
    3264: 9908         	ldr	r1, [sp, #0x20]
    3266: 1841         	adds	r1, r0, r1
    3268: 9a05         	ldr	r2, [sp, #0x14]
    326a: 68bb         	ldr	r3, [r7, #0x8]
    326c: 6828         	ldr	r0, [r5]
    326e: 2800         	cmp	r0, #0x0
    3270: d018         	beq	0x32a4 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xf0> @ imm = #0x30
    3272: 686e         	ldr	r6, [r5, #0x4]
    3274: 428e         	cmp	r6, r1
    3276: d915         	bls	0x32a4 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xf0> @ imm = #0x2a
    3278: 0710         	lsls	r0, r2, #0x1c
    327a: 9303         	str	r3, [sp, #0xc]
    327c: d429         	bmi	0x32d2 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x11e> @ imm = #0x52
    327e: 2020         	movs	r0, #0x20
    3280: 5c28         	ldrb	r0, [r5, r0]
    3282: 1a76         	subs	r6, r6, r1
    3284: 0081         	lsls	r1, r0, #0x2
    3286: a201         	adr	r2, #4 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xd7>
    3288: 5851         	ldr	r1, [r2, r1]
    328a: 468f         	mov	pc, r1
    328c: a1 33 00 00  	.word	0x000033a1
    3290: 9d 32 00 00  	.word	0x0000329d
    3294: 9b 33 00 00  	.word	0x0000339b
    3298: 9d 32 00 00  	.word	0x0000329d
    329c: 2100         	movs	r1, #0x0
    329e: 4630         	mov	r0, r6
    32a0: 460e         	mov	r6, r1
    32a2: e07d         	b	0x33a0 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x1ec> @ imm = #0xfa
    32a4: 461e         	mov	r6, r3
    32a6: 696c         	ldr	r4, [r5, #0x14]
    32a8: 69ad         	ldr	r5, [r5, #0x18]
    32aa: 9809         	ldr	r0, [sp, #0x24]
    32ac: 9000         	str	r0, [sp]
    32ae: 4620         	mov	r0, r4
    32b0: 4629         	mov	r1, r5
    32b2: 9a07         	ldr	r2, [sp, #0x1c]
    32b4: 9b0a         	ldr	r3, [sp, #0x28]
    32b6: f000 f8af    	bl	0x3418 <core::fmt::Formatter::pad_integral::write_prefix::h5196611caa50def1> @ imm = #0x15e
    32ba: 2800         	cmp	r0, #0x0
    32bc: d002         	beq	0x32c4 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x110> @ imm = #0x4
    32be: 2001         	movs	r0, #0x1
    32c0: b00b         	add	sp, #0x2c
    32c2: bdf0         	pop	{r4, r5, r6, r7, pc}
    32c4: 68eb         	ldr	r3, [r5, #0xc]
    32c6: 4620         	mov	r0, r4
    32c8: 4631         	mov	r1, r6
    32ca: 9a06         	ldr	r2, [sp, #0x18]
    32cc: 4798         	blx	r3
    32ce: b00b         	add	sp, #0x2c
    32d0: bdf0         	pop	{r4, r5, r6, r7, pc}
    32d2: 9108         	str	r1, [sp, #0x20]
    32d4: 2020         	movs	r0, #0x20
    32d6: 5c29         	ldrb	r1, [r5, r0]
    32d8: 9102         	str	r1, [sp, #0x8]
    32da: 2101         	movs	r1, #0x1
    32dc: 9105         	str	r1, [sp, #0x14]
    32de: 5429         	strb	r1, [r5, r0]
    32e0: 6928         	ldr	r0, [r5, #0x10]
    32e2: 9001         	str	r0, [sp, #0x4]
    32e4: 2030         	movs	r0, #0x30
    32e6: 6128         	str	r0, [r5, #0x10]
    32e8: 696c         	ldr	r4, [r5, #0x14]
    32ea: 9504         	str	r5, [sp, #0x10]
    32ec: 69ad         	ldr	r5, [r5, #0x18]
    32ee: 9809         	ldr	r0, [sp, #0x24]
    32f0: 9000         	str	r0, [sp]
    32f2: 4620         	mov	r0, r4
    32f4: 4629         	mov	r1, r5
    32f6: 9a07         	ldr	r2, [sp, #0x1c]
    32f8: 9b0a         	ldr	r3, [sp, #0x28]
    32fa: f000 f88d    	bl	0x3418 <core::fmt::Formatter::pad_integral::write_prefix::h5196611caa50def1> @ imm = #0x11a
    32fe: 2800         	cmp	r0, #0x0
    3300: d02b         	beq	0x335a <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x1a6> @ imm = #0x56
    3302: 9805         	ldr	r0, [sp, #0x14]
    3304: b00b         	add	sp, #0x2c
    3306: bdf0         	pop	{r4, r5, r6, r7, pc}
    3308: 250c         	movs	r5, #0xc
    330a: 400d         	ands	r5, r1
    330c: 2000         	movs	r0, #0x0
    330e: 4602         	mov	r2, r0
    3310: e003         	b	0x331a <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x166> @ imm = #0x6
    3312: 1d12         	adds	r2, r2, #0x4
    3314: 4295         	cmp	r5, r2
    3316: d100         	bne	0x331a <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x166> @ imm = #0x0
    3318: e773         	b	0x3202 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x4e> @ imm = #-0x11a
    331a: 990a         	ldr	r1, [sp, #0x28]
    331c: 568e         	ldrsb	r6, [r1, r2]
    331e: 2140         	movs	r1, #0x40
    3320: 43c9         	mvns	r1, r1
    3322: 428e         	cmp	r6, r1
    3324: dd00         	ble	0x3328 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x174> @ imm = #0x0
    3326: 1c40         	adds	r0, r0, #0x1
    3328: 9c0a         	ldr	r4, [sp, #0x28]
    332a: 18a6         	adds	r6, r4, r2
    332c: 2401         	movs	r4, #0x1
    332e: 5734         	ldrsb	r4, [r6, r4]
    3330: 428c         	cmp	r4, r1
    3332: dc07         	bgt	0x3344 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x190> @ imm = #0xe
    3334: 2402         	movs	r4, #0x2
    3336: 5734         	ldrsb	r4, [r6, r4]
    3338: 428c         	cmp	r4, r1
    333a: dc08         	bgt	0x334e <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x19a> @ imm = #0x10
    333c: 56f4         	ldrsb	r4, [r6, r3]
    333e: 428c         	cmp	r4, r1
    3340: dde7         	ble	0x3312 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x15e> @ imm = #-0x32
    3342: e008         	b	0x3356 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x1a2> @ imm = #0x10
    3344: 1c40         	adds	r0, r0, #0x1
    3346: 2402         	movs	r4, #0x2
    3348: 5734         	ldrsb	r4, [r6, r4]
    334a: 428c         	cmp	r4, r1
    334c: ddf6         	ble	0x333c <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x188> @ imm = #-0x14
    334e: 1c40         	adds	r0, r0, #0x1
    3350: 56f4         	ldrsb	r4, [r6, r3]
    3352: 428c         	cmp	r4, r1
    3354: dddd         	ble	0x3312 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x15e> @ imm = #-0x46
    3356: 1c40         	adds	r0, r0, #0x1
    3358: e7db         	b	0x3312 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x15e> @ imm = #-0x4a
    335a: 9804         	ldr	r0, [sp, #0x10]
    335c: 3020         	adds	r0, #0x20
    335e: 900a         	str	r0, [sp, #0x28]
    3360: 9808         	ldr	r0, [sp, #0x20]
    3362: 1a30         	subs	r0, r6, r0
    3364: 1c46         	adds	r6, r0, #0x1
    3366: 1e76         	subs	r6, r6, #0x1
    3368: d008         	beq	0x337c <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x1c8> @ imm = #0x10
    336a: 692a         	ldr	r2, [r5, #0x10]
    336c: 2130         	movs	r1, #0x30
    336e: 4620         	mov	r0, r4
    3370: 4790         	blx	r2
    3372: 2800         	cmp	r0, #0x0
    3374: d0f7         	beq	0x3366 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x1b2> @ imm = #-0x12
    3376: 9805         	ldr	r0, [sp, #0x14]
    3378: b00b         	add	sp, #0x2c
    337a: bdf0         	pop	{r4, r5, r6, r7, pc}
    337c: 68eb         	ldr	r3, [r5, #0xc]
    337e: 4620         	mov	r0, r4
    3380: 9903         	ldr	r1, [sp, #0xc]
    3382: 9a06         	ldr	r2, [sp, #0x18]
    3384: 4798         	blx	r3
    3386: 2800         	cmp	r0, #0x0
    3388: 9805         	ldr	r0, [sp, #0x14]
    338a: d143         	bne	0x3414 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x260> @ imm = #0x86
    338c: 9802         	ldr	r0, [sp, #0x8]
    338e: 990a         	ldr	r1, [sp, #0x28]
    3390: 7008         	strb	r0, [r1]
    3392: 9804         	ldr	r0, [sp, #0x10]
    3394: 9901         	ldr	r1, [sp, #0x4]
    3396: 6101         	str	r1, [r0, #0x10]
    3398: e03b         	b	0x3412 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x25e> @ imm = #0x76
    339a: 0870         	lsrs	r0, r6, #0x1
    339c: 1c71         	adds	r1, r6, #0x1
    339e: 084e         	lsrs	r6, r1, #0x1
    33a0: 9605         	str	r6, [sp, #0x14]
    33a2: 1c44         	adds	r4, r0, #0x1
    33a4: 6928         	ldr	r0, [r5, #0x10]
    33a6: 9008         	str	r0, [sp, #0x20]
    33a8: 4628         	mov	r0, r5
    33aa: 696d         	ldr	r5, [r5, #0x14]
    33ac: 6986         	ldr	r6, [r0, #0x18]
    33ae: 1e64         	subs	r4, r4, #0x1
    33b0: d006         	beq	0x33c0 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x20c> @ imm = #0xc
    33b2: 6932         	ldr	r2, [r6, #0x10]
    33b4: 4628         	mov	r0, r5
    33b6: 9908         	ldr	r1, [sp, #0x20]
    33b8: 4790         	blx	r2
    33ba: 2800         	cmp	r0, #0x0
    33bc: d0f7         	beq	0x33ae <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x1fa> @ imm = #-0x12
    33be: e77e         	b	0x32be <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x10a> @ imm = #-0x104
    33c0: 9809         	ldr	r0, [sp, #0x24]
    33c2: 9000         	str	r0, [sp]
    33c4: 4628         	mov	r0, r5
    33c6: 4631         	mov	r1, r6
    33c8: 9a07         	ldr	r2, [sp, #0x1c]
    33ca: 9b0a         	ldr	r3, [sp, #0x28]
    33cc: f000 f824    	bl	0x3418 <core::fmt::Formatter::pad_integral::write_prefix::h5196611caa50def1> @ imm = #0x48
    33d0: 2401         	movs	r4, #0x1
    33d2: 2800         	cmp	r0, #0x0
    33d4: d002         	beq	0x33dc <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x228> @ imm = #0x4
    33d6: 4620         	mov	r0, r4
    33d8: b00b         	add	sp, #0x2c
    33da: bdf0         	pop	{r4, r5, r6, r7, pc}
    33dc: 68f3         	ldr	r3, [r6, #0xc]
    33de: 4628         	mov	r0, r5
    33e0: 9903         	ldr	r1, [sp, #0xc]
    33e2: 9a06         	ldr	r2, [sp, #0x18]
    33e4: 4798         	blx	r3
    33e6: 2800         	cmp	r0, #0x0
    33e8: 4620         	mov	r0, r4
    33ea: d113         	bne	0x3414 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x260> @ imm = #0x26
    33ec: 2400         	movs	r4, #0x0
    33ee: 9805         	ldr	r0, [sp, #0x14]
    33f0: 42a0         	cmp	r0, r4
    33f2: d009         	beq	0x3408 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x254> @ imm = #0x12
    33f4: 6932         	ldr	r2, [r6, #0x10]
    33f6: 4628         	mov	r0, r5
    33f8: 9908         	ldr	r1, [sp, #0x20]
    33fa: 4790         	blx	r2
    33fc: 1c64         	adds	r4, r4, #0x1
    33fe: 2800         	cmp	r0, #0x0
    3400: d0f5         	beq	0x33ee <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x23a> @ imm = #-0x16
    3402: 1e60         	subs	r0, r4, #0x1
    3404: 9905         	ldr	r1, [sp, #0x14]
    3406: e001         	b	0x340c <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x258> @ imm = #0x2
    3408: 9905         	ldr	r1, [sp, #0x14]
    340a: 4608         	mov	r0, r1
    340c: 4288         	cmp	r0, r1
    340e: d200         	bhs	0x3412 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x25e> @ imm = #0x0
    3410: e755         	b	0x32be <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x10a> @ imm = #-0x156
    3412: 2000         	movs	r0, #0x0
    3414: b00b         	add	sp, #0x2c
    3416: bdf0         	pop	{r4, r5, r6, r7, pc}

Disassembly of section .text.core::fmt::Formatter::pad_integral::write_prefix::h5196611caa50def1:

00003418 <core::fmt::Formatter::pad_integral::write_prefix::h5196611caa50def1>:
    3418: b5f0         	push	{r4, r5, r6, r7, lr}
    341a: af03         	add	r7, sp, #0xc
    341c: b081         	sub	sp, #0x4
    341e: 461c         	mov	r4, r3
    3420: 460d         	mov	r5, r1
    3422: 2111         	movs	r1, #0x11
    3424: 0409         	lsls	r1, r1, #0x10
    3426: 428a         	cmp	r2, r1
    3428: d00a         	beq	0x3440 <core::fmt::Formatter::pad_integral::write_prefix::h5196611caa50def1+0x28> @ imm = #0x14
    342a: 692b         	ldr	r3, [r5, #0x10]
    342c: 4606         	mov	r6, r0
    342e: 4611         	mov	r1, r2
    3430: 4798         	blx	r3
    3432: 4601         	mov	r1, r0
    3434: 4630         	mov	r0, r6
    3436: 2900         	cmp	r1, #0x0
    3438: d002         	beq	0x3440 <core::fmt::Formatter::pad_integral::write_prefix::h5196611caa50def1+0x28> @ imm = #0x4
    343a: 2001         	movs	r0, #0x1
    343c: b001         	add	sp, #0x4
    343e: bdf0         	pop	{r4, r5, r6, r7, pc}
    3440: 2c00         	cmp	r4, #0x0
    3442: d005         	beq	0x3450 <core::fmt::Formatter::pad_integral::write_prefix::h5196611caa50def1+0x38> @ imm = #0xa
    3444: 68ba         	ldr	r2, [r7, #0x8]
    3446: 68eb         	ldr	r3, [r5, #0xc]
    3448: 4621         	mov	r1, r4
    344a: 4798         	blx	r3
    344c: b001         	add	sp, #0x4
    344e: bdf0         	pop	{r4, r5, r6, r7, pc}
    3450: 2000         	movs	r0, #0x0
    3452: b001         	add	sp, #0x4
    3454: bdf0         	pop	{r4, r5, r6, r7, pc}

Disassembly of section .text.core::fmt::Formatter::pad::h3b94c4012190d009:

00003458 <core::fmt::Formatter::pad::h3b94c4012190d009>:
    3458: b5f0         	push	{r4, r5, r6, r7, lr}
    345a: af03         	add	r7, sp, #0xc
    345c: b085         	sub	sp, #0x14
    345e: 9202         	str	r2, [sp, #0x8]
    3460: 460e         	mov	r6, r1
    3462: 6882         	ldr	r2, [r0, #0x8]
    3464: 9003         	str	r0, [sp, #0xc]
    3466: 6801         	ldr	r1, [r0]
    3468: 2900         	cmp	r1, #0x0
    346a: d102         	bne	0x3472 <core::fmt::Formatter::pad::h3b94c4012190d009+0x1a> @ imm = #0x4
    346c: 07d3         	lsls	r3, r2, #0x1f
    346e: d100         	bne	0x3472 <core::fmt::Formatter::pad::h3b94c4012190d009+0x1a> @ imm = #0x0
    3470: e08e         	b	0x3590 <core::fmt::Formatter::pad::h3b94c4012190d009+0x138> @ imm = #0x11c
    3472: 07d2         	lsls	r2, r2, #0x1f
    3474: d040         	beq	0x34f8 <core::fmt::Formatter::pad::h3b94c4012190d009+0xa0> @ imm = #0x80
    3476: 9802         	ldr	r0, [sp, #0x8]
    3478: 1833         	adds	r3, r6, r0
    347a: 9803         	ldr	r0, [sp, #0xc]
    347c: 68c4         	ldr	r4, [r0, #0xc]
    347e: 2200         	movs	r2, #0x0
    3480: 4630         	mov	r0, r6
    3482: 2c00         	cmp	r4, #0x0
    3484: d10e         	bne	0x34a4 <core::fmt::Formatter::pad::h3b94c4012190d009+0x4c> @ imm = #0x1c
    3486: 429e         	cmp	r6, r3
    3488: d01e         	beq	0x34c8 <core::fmt::Formatter::pad::h3b94c4012190d009+0x70> @ imm = #0x3c
    348a: 2300         	movs	r3, #0x0
    348c: 56f4         	ldrsb	r4, [r6, r3]
    348e: 2c00         	cmp	r4, #0x0
    3490: d41c         	bmi	0x34cc <core::fmt::Formatter::pad::h3b94c4012190d009+0x74> @ imm = #0x38
    3492: 2a00         	cmp	r2, #0x0
    3494: 4606         	mov	r6, r0
    3496: d11e         	bne	0x34d6 <core::fmt::Formatter::pad::h3b94c4012190d009+0x7e> @ imm = #0x3c
    3498: e027         	b	0x34ea <core::fmt::Formatter::pad::h3b94c4012190d009+0x92> @ imm = #0x4e
    349a: 1c6e         	adds	r6, r5, #0x1
    349c: 1b75         	subs	r5, r6, r5
    349e: 18aa         	adds	r2, r5, r2
    34a0: 1e64         	subs	r4, r4, #0x1
    34a2: d0f0         	beq	0x3486 <core::fmt::Formatter::pad::h3b94c4012190d009+0x2e> @ imm = #-0x20
    34a4: 429e         	cmp	r6, r3
    34a6: d00f         	beq	0x34c8 <core::fmt::Formatter::pad::h3b94c4012190d009+0x70> @ imm = #0x1e
    34a8: 4635         	mov	r5, r6
    34aa: 2600         	movs	r6, #0x0
    34ac: 57ae         	ldrsb	r6, [r5, r6]
    34ae: 2e00         	cmp	r6, #0x0
    34b0: d5f3         	bpl	0x349a <core::fmt::Formatter::pad::h3b94c4012190d009+0x42> @ imm = #-0x1a
    34b2: b2f6         	uxtb	r6, r6
    34b4: 2ee0         	cmp	r6, #0xe0
    34b6: d303         	blo	0x34c0 <core::fmt::Formatter::pad::h3b94c4012190d009+0x68> @ imm = #0x6
    34b8: 2ef0         	cmp	r6, #0xf0
    34ba: d303         	blo	0x34c4 <core::fmt::Formatter::pad::h3b94c4012190d009+0x6c> @ imm = #0x6
    34bc: 1d2e         	adds	r6, r5, #0x4
    34be: e7ed         	b	0x349c <core::fmt::Formatter::pad::h3b94c4012190d009+0x44> @ imm = #-0x26
    34c0: 1cae         	adds	r6, r5, #0x2
    34c2: e7eb         	b	0x349c <core::fmt::Formatter::pad::h3b94c4012190d009+0x44> @ imm = #-0x2a
    34c4: 1cee         	adds	r6, r5, #0x3
    34c6: e7e9         	b	0x349c <core::fmt::Formatter::pad::h3b94c4012190d009+0x44> @ imm = #-0x2e
    34c8: 4606         	mov	r6, r0
    34ca: e015         	b	0x34f8 <core::fmt::Formatter::pad::h3b94c4012190d009+0xa0> @ imm = #0x2a
    34cc: b2e4         	uxtb	r4, r4
    34ce: 2ce0         	cmp	r4, #0xe0
    34d0: 2a00         	cmp	r2, #0x0
    34d2: 4606         	mov	r6, r0
    34d4: d009         	beq	0x34ea <core::fmt::Formatter::pad::h3b94c4012190d009+0x92> @ imm = #0x12
    34d6: 9802         	ldr	r0, [sp, #0x8]
    34d8: 4282         	cmp	r2, r0
    34da: d205         	bhs	0x34e8 <core::fmt::Formatter::pad::h3b94c4012190d009+0x90> @ imm = #0xa
    34dc: 56b4         	ldrsb	r4, [r6, r2]
    34de: 2540         	movs	r5, #0x40
    34e0: 43ed         	mvns	r5, r5
    34e2: 42ac         	cmp	r4, r5
    34e4: dc01         	bgt	0x34ea <core::fmt::Formatter::pad::h3b94c4012190d009+0x92> @ imm = #0x2
    34e6: e001         	b	0x34ec <core::fmt::Formatter::pad::h3b94c4012190d009+0x94> @ imm = #0x2
    34e8: d100         	bne	0x34ec <core::fmt::Formatter::pad::h3b94c4012190d009+0x94> @ imm = #0x0
    34ea: 4633         	mov	r3, r6
    34ec: 2b00         	cmp	r3, #0x0
    34ee: d000         	beq	0x34f2 <core::fmt::Formatter::pad::h3b94c4012190d009+0x9a> @ imm = #0x0
    34f0: 9202         	str	r2, [sp, #0x8]
    34f2: 2b00         	cmp	r3, #0x0
    34f4: d000         	beq	0x34f8 <core::fmt::Formatter::pad::h3b94c4012190d009+0xa0> @ imm = #0x0
    34f6: 461e         	mov	r6, r3
    34f8: 2900         	cmp	r1, #0x0
    34fa: d049         	beq	0x3590 <core::fmt::Formatter::pad::h3b94c4012190d009+0x138> @ imm = #0x92
    34fc: 9803         	ldr	r0, [sp, #0xc]
    34fe: 6840         	ldr	r0, [r0, #0x4]
    3500: 9902         	ldr	r1, [sp, #0x8]
    3502: 2910         	cmp	r1, #0x10
    3504: 9001         	str	r0, [sp, #0x4]
    3506: d228         	bhs	0x355a <core::fmt::Formatter::pad::h3b94c4012190d009+0x102> @ imm = #0x50
    3508: 2900         	cmp	r1, #0x0
    350a: d03d         	beq	0x3588 <core::fmt::Formatter::pad::h3b94c4012190d009+0x130> @ imm = #0x7a
    350c: 2203         	movs	r2, #0x3
    350e: 4608         	mov	r0, r1
    3510: 9204         	str	r2, [sp, #0x10]
    3512: 4010         	ands	r0, r2
    3514: 9000         	str	r0, [sp]
    3516: 2904         	cmp	r1, #0x4
    3518: d244         	bhs	0x35a4 <core::fmt::Formatter::pad::h3b94c4012190d009+0x14c> @ imm = #0x88
    351a: 2100         	movs	r1, #0x0
    351c: 460b         	mov	r3, r1
    351e: 9800         	ldr	r0, [sp]
    3520: 2800         	cmp	r0, #0x0
    3522: d01e         	beq	0x3562 <core::fmt::Formatter::pad::h3b94c4012190d009+0x10a> @ imm = #0x3c
    3524: 56f0         	ldrsb	r0, [r6, r3]
    3526: 2240         	movs	r2, #0x40
    3528: 43d2         	mvns	r2, r2
    352a: 4290         	cmp	r0, r2
    352c: dd00         	ble	0x3530 <core::fmt::Formatter::pad::h3b94c4012190d009+0xd8> @ imm = #0x0
    352e: 1c49         	adds	r1, r1, #0x1
    3530: 9800         	ldr	r0, [sp]
    3532: 2801         	cmp	r0, #0x1
    3534: d015         	beq	0x3562 <core::fmt::Formatter::pad::h3b94c4012190d009+0x10a> @ imm = #0x2a
    3536: 199b         	adds	r3, r3, r6
    3538: 2001         	movs	r0, #0x1
    353a: 5618         	ldrsb	r0, [r3, r0]
    353c: 4290         	cmp	r0, r2
    353e: dd00         	ble	0x3542 <core::fmt::Formatter::pad::h3b94c4012190d009+0xea> @ imm = #0x0
    3540: 1c49         	adds	r1, r1, #0x1
    3542: 9800         	ldr	r0, [sp]
    3544: 2802         	cmp	r0, #0x2
    3546: d00c         	beq	0x3562 <core::fmt::Formatter::pad::h3b94c4012190d009+0x10a> @ imm = #0x18
    3548: 2002         	movs	r0, #0x2
    354a: 5618         	ldrsb	r0, [r3, r0]
    354c: 4290         	cmp	r0, r2
    354e: dd08         	ble	0x3562 <core::fmt::Formatter::pad::h3b94c4012190d009+0x10a> @ imm = #0x10
    3550: 1c49         	adds	r1, r1, #0x1
    3552: 9801         	ldr	r0, [sp, #0x4]
    3554: 4288         	cmp	r0, r1
    3556: d807         	bhi	0x3568 <core::fmt::Formatter::pad::h3b94c4012190d009+0x110> @ imm = #0xe
    3558: e01a         	b	0x3590 <core::fmt::Formatter::pad::h3b94c4012190d009+0x138> @ imm = #0x34
    355a: 4630         	mov	r0, r6
    355c: f000 f8d2    	bl	0x3704 <core::str::count::do_count_chars::h3d51f7a5f3399c30> @ imm = #0x1a4
    3560: 4601         	mov	r1, r0
    3562: 9801         	ldr	r0, [sp, #0x4]
    3564: 4288         	cmp	r0, r1
    3566: d913         	bls	0x3590 <core::fmt::Formatter::pad::h3b94c4012190d009+0x138> @ imm = #0x26
    3568: 1a43         	subs	r3, r0, r1
    356a: 2120         	movs	r1, #0x20
    356c: 9803         	ldr	r0, [sp, #0xc]
    356e: 5c42         	ldrb	r2, [r0, r1]
    3570: 2100         	movs	r1, #0x0
    3572: 9600         	str	r6, [sp]
    3574: 447a         	add	r2, pc
    3576: 7912         	ldrb	r2, [r2, #0x4]
    3578: 0052         	lsls	r2, r2, #0x1
    357a: 4497         	add	pc, r2
    357c: 37 01 34 37  	.word	0x37340137
    3580: 2000         	movs	r0, #0x0
    3582: 4619         	mov	r1, r3
    3584: 4603         	mov	r3, r0
    3586: e031         	b	0x35ec <core::fmt::Formatter::pad::h3b94c4012190d009+0x194> @ imm = #0x62
    3588: 2100         	movs	r1, #0x0
    358a: 9801         	ldr	r0, [sp, #0x4]
    358c: 4288         	cmp	r0, r1
    358e: d8eb         	bhi	0x3568 <core::fmt::Formatter::pad::h3b94c4012190d009+0x110> @ imm = #-0x2a
    3590: 9803         	ldr	r0, [sp, #0xc]
    3592: 6941         	ldr	r1, [r0, #0x14]
    3594: 6980         	ldr	r0, [r0, #0x18]
    3596: 68c3         	ldr	r3, [r0, #0xc]
    3598: 4608         	mov	r0, r1
    359a: 4631         	mov	r1, r6
    359c: 9a02         	ldr	r2, [sp, #0x8]
    359e: 4798         	blx	r3
    35a0: b005         	add	sp, #0x14
    35a2: bdf0         	pop	{r4, r5, r6, r7, pc}
    35a4: 220c         	movs	r2, #0xc
    35a6: 400a         	ands	r2, r1
    35a8: 2100         	movs	r1, #0x0
    35aa: 460b         	mov	r3, r1
    35ac: e002         	b	0x35b4 <core::fmt::Formatter::pad::h3b94c4012190d009+0x15c> @ imm = #0x4
    35ae: 1d1b         	adds	r3, r3, #0x4
    35b0: 429a         	cmp	r2, r3
    35b2: d0b4         	beq	0x351e <core::fmt::Formatter::pad::h3b94c4012190d009+0xc6> @ imm = #-0x98
    35b4: 56f4         	ldrsb	r4, [r6, r3]
    35b6: 2540         	movs	r5, #0x40
    35b8: 43ed         	mvns	r5, r5
    35ba: 42ac         	cmp	r4, r5
    35bc: dd00         	ble	0x35c0 <core::fmt::Formatter::pad::h3b94c4012190d009+0x168> @ imm = #0x0
    35be: 1c49         	adds	r1, r1, #0x1
    35c0: 4630         	mov	r0, r6
    35c2: 18f4         	adds	r4, r6, r3
    35c4: 2601         	movs	r6, #0x1
    35c6: 57a6         	ldrsb	r6, [r4, r6]
    35c8: 42ae         	cmp	r6, r5
    35ca: dd00         	ble	0x35ce <core::fmt::Formatter::pad::h3b94c4012190d009+0x176> @ imm = #0x0
    35cc: 1c49         	adds	r1, r1, #0x1
    35ce: 2602         	movs	r6, #0x2
    35d0: 57a6         	ldrsb	r6, [r4, r6]
    35d2: 42ae         	cmp	r6, r5
    35d4: dd00         	ble	0x35d8 <core::fmt::Formatter::pad::h3b94c4012190d009+0x180> @ imm = #0x0
    35d6: 1c49         	adds	r1, r1, #0x1
    35d8: 4606         	mov	r6, r0
    35da: 9804         	ldr	r0, [sp, #0x10]
    35dc: 5624         	ldrsb	r4, [r4, r0]
    35de: 42ac         	cmp	r4, r5
    35e0: dde5         	ble	0x35ae <core::fmt::Formatter::pad::h3b94c4012190d009+0x156> @ imm = #-0x36
    35e2: 1c49         	adds	r1, r1, #0x1
    35e4: e7e3         	b	0x35ae <core::fmt::Formatter::pad::h3b94c4012190d009+0x156> @ imm = #-0x3a
    35e6: 0859         	lsrs	r1, r3, #0x1
    35e8: 1c58         	adds	r0, r3, #0x1
    35ea: 0843         	lsrs	r3, r0, #0x1
    35ec: 9301         	str	r3, [sp, #0x4]
    35ee: 1c4e         	adds	r6, r1, #0x1
    35f0: 9803         	ldr	r0, [sp, #0xc]
    35f2: 6901         	ldr	r1, [r0, #0x10]
    35f4: 9104         	str	r1, [sp, #0x10]
    35f6: 6944         	ldr	r4, [r0, #0x14]
    35f8: 6985         	ldr	r5, [r0, #0x18]
    35fa: 1e76         	subs	r6, r6, #0x1
    35fc: d006         	beq	0x360c <core::fmt::Formatter::pad::h3b94c4012190d009+0x1b4> @ imm = #0xc
    35fe: 692a         	ldr	r2, [r5, #0x10]
    3600: 4620         	mov	r0, r4
    3602: 9904         	ldr	r1, [sp, #0x10]
    3604: 4790         	blx	r2
    3606: 2800         	cmp	r0, #0x0
    3608: d0f7         	beq	0x35fa <core::fmt::Formatter::pad::h3b94c4012190d009+0x1a2> @ imm = #-0x12
    360a: e006         	b	0x361a <core::fmt::Formatter::pad::h3b94c4012190d009+0x1c2> @ imm = #0xc
    360c: 68eb         	ldr	r3, [r5, #0xc]
    360e: 4620         	mov	r0, r4
    3610: 9900         	ldr	r1, [sp]
    3612: 9a02         	ldr	r2, [sp, #0x8]
    3614: 4798         	blx	r3
    3616: 2800         	cmp	r0, #0x0
    3618: d002         	beq	0x3620 <core::fmt::Formatter::pad::h3b94c4012190d009+0x1c8> @ imm = #0x4
    361a: 2001         	movs	r0, #0x1
    361c: b005         	add	sp, #0x14
    361e: bdf0         	pop	{r4, r5, r6, r7, pc}
    3620: 2600         	movs	r6, #0x0
    3622: 9901         	ldr	r1, [sp, #0x4]
    3624: 42b1         	cmp	r1, r6
    3626: d00d         	beq	0x3644 <core::fmt::Formatter::pad::h3b94c4012190d009+0x1ec> @ imm = #0x1a
    3628: 692a         	ldr	r2, [r5, #0x10]
    362a: 4620         	mov	r0, r4
    362c: 9904         	ldr	r1, [sp, #0x10]
    362e: 4790         	blx	r2
    3630: 1c76         	adds	r6, r6, #0x1
    3632: 2800         	cmp	r0, #0x0
    3634: d0f5         	beq	0x3622 <core::fmt::Formatter::pad::h3b94c4012190d009+0x1ca> @ imm = #-0x16
    3636: 1e70         	subs	r0, r6, #0x1
    3638: 9901         	ldr	r1, [sp, #0x4]
    363a: 4288         	cmp	r0, r1
    363c: d205         	bhs	0x364a <core::fmt::Formatter::pad::h3b94c4012190d009+0x1f2> @ imm = #0xa
    363e: 2001         	movs	r0, #0x1
    3640: b005         	add	sp, #0x14
    3642: bdf0         	pop	{r4, r5, r6, r7, pc}
    3644: 4608         	mov	r0, r1
    3646: 4288         	cmp	r0, r1
    3648: d3f9         	blo	0x363e <core::fmt::Formatter::pad::h3b94c4012190d009+0x1e6> @ imm = #-0xe
    364a: 2000         	movs	r0, #0x0
    364c: b005         	add	sp, #0x14
    364e: bdf0         	pop	{r4, r5, r6, r7, pc}

Disassembly of section .text.unlikely.core::slice::index::slice_start_index_len_fail::h0143d39f27fb17b8:

00003650 <core::slice::index::slice_start_index_len_fail::h0143d39f27fb17b8>:
    3650: b580         	push	{r7, lr}
    3652: af00         	add	r7, sp, #0x0
    3654: b08c         	sub	sp, #0x30
    3656: 9000         	str	r0, [sp]
    3658: 9101         	str	r1, [sp, #0x4]
    365a: 2000         	movs	r0, #0x0
    365c: 9006         	str	r0, [sp, #0x18]
    365e: 2002         	movs	r0, #0x2
    3660: 9003         	str	r0, [sp, #0xc]
    3662: 4908         	ldr	r1, [pc, #0x20]         @ 0x3684 <core::slice::index::slice_start_index_len_fail::h0143d39f27fb17b8+0x34>
    3664: 9102         	str	r1, [sp, #0x8]
    3666: 9005         	str	r0, [sp, #0x14]
    3668: a808         	add	r0, sp, #0x20
    366a: 9004         	str	r0, [sp, #0x10]
    366c: 4806         	ldr	r0, [pc, #0x18]         @ 0x3688 <core::slice::index::slice_start_index_len_fail::h0143d39f27fb17b8+0x38>
    366e: 900b         	str	r0, [sp, #0x2c]
    3670: a901         	add	r1, sp, #0x4
    3672: 910a         	str	r1, [sp, #0x28]
    3674: 9009         	str	r0, [sp, #0x24]
    3676: 4668         	mov	r0, sp
    3678: 9008         	str	r0, [sp, #0x20]
    367a: a802         	add	r0, sp, #0x8
    367c: 4611         	mov	r1, r2
    367e: f7ff fcbb    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #-0x68a
    3682: 46c0         	mov	r8, r8
    3684: 44 0e 00 00  	.word	0x00000e44
    3688: 61 3c 00 00  	.word	0x00003c61

Disassembly of section .text.unlikely.core::slice::index::slice_end_index_len_fail::h41051af3283b2672:

0000368c <core::slice::index::slice_end_index_len_fail::h41051af3283b2672>:
    368c: b580         	push	{r7, lr}
    368e: af00         	add	r7, sp, #0x0
    3690: b08c         	sub	sp, #0x30
    3692: 9000         	str	r0, [sp]
    3694: 9101         	str	r1, [sp, #0x4]
    3696: 2000         	movs	r0, #0x0
    3698: 9006         	str	r0, [sp, #0x18]
    369a: 2002         	movs	r0, #0x2
    369c: 9003         	str	r0, [sp, #0xc]
    369e: 4908         	ldr	r1, [pc, #0x20]         @ 0x36c0 <core::slice::index::slice_end_index_len_fail::h41051af3283b2672+0x34>
    36a0: 9102         	str	r1, [sp, #0x8]
    36a2: 9005         	str	r0, [sp, #0x14]
    36a4: a808         	add	r0, sp, #0x20
    36a6: 9004         	str	r0, [sp, #0x10]
    36a8: 4806         	ldr	r0, [pc, #0x18]         @ 0x36c4 <core::slice::index::slice_end_index_len_fail::h41051af3283b2672+0x38>
    36aa: 900b         	str	r0, [sp, #0x2c]
    36ac: a901         	add	r1, sp, #0x4
    36ae: 910a         	str	r1, [sp, #0x28]
    36b0: 9009         	str	r0, [sp, #0x24]
    36b2: 4668         	mov	r0, sp
    36b4: 9008         	str	r0, [sp, #0x20]
    36b6: a802         	add	r0, sp, #0x8
    36b8: 4611         	mov	r1, r2
    36ba: f7ff fc9d    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #-0x6c6
    36be: 46c0         	mov	r8, r8
    36c0: 54 0e 00 00  	.word	0x00000e54
    36c4: 61 3c 00 00  	.word	0x00003c61

Disassembly of section .text.unlikely.core::slice::index::slice_index_order_fail::h312f4443c50dfd13:

000036c8 <core::slice::index::slice_index_order_fail::h312f4443c50dfd13>:
    36c8: b580         	push	{r7, lr}
    36ca: af00         	add	r7, sp, #0x0
    36cc: b08c         	sub	sp, #0x30
    36ce: 9000         	str	r0, [sp]
    36d0: 9101         	str	r1, [sp, #0x4]
    36d2: 2000         	movs	r0, #0x0
    36d4: 9006         	str	r0, [sp, #0x18]
    36d6: 2002         	movs	r0, #0x2
    36d8: 9003         	str	r0, [sp, #0xc]
    36da: 4908         	ldr	r1, [pc, #0x20]         @ 0x36fc <core::slice::index::slice_index_order_fail::h312f4443c50dfd13+0x34>
    36dc: 9102         	str	r1, [sp, #0x8]
    36de: 9005         	str	r0, [sp, #0x14]
    36e0: a808         	add	r0, sp, #0x20
    36e2: 9004         	str	r0, [sp, #0x10]
    36e4: 4806         	ldr	r0, [pc, #0x18]         @ 0x3700 <core::slice::index::slice_index_order_fail::h312f4443c50dfd13+0x38>
    36e6: 900b         	str	r0, [sp, #0x2c]
    36e8: a901         	add	r1, sp, #0x4
    36ea: 910a         	str	r1, [sp, #0x28]
    36ec: 9009         	str	r0, [sp, #0x24]
    36ee: 4668         	mov	r0, sp
    36f0: 9008         	str	r0, [sp, #0x20]
    36f2: a802         	add	r0, sp, #0x8
    36f4: 4611         	mov	r1, r2
    36f6: f7ff fc7f    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #-0x702
    36fa: 46c0         	mov	r8, r8
    36fc: 88 0e 00 00  	.word	0x00000e88
    3700: 61 3c 00 00  	.word	0x00003c61

Disassembly of section .text.core::str::count::do_count_chars::h3d51f7a5f3399c30:

00003704 <core::str::count::do_count_chars::h3d51f7a5f3399c30>:
    3704: b5f0         	push	{r4, r5, r6, r7, lr}
    3706: af03         	add	r7, sp, #0xc
    3708: b088         	sub	sp, #0x20
    370a: 4602         	mov	r2, r0
    370c: 1cc0         	adds	r0, r0, #0x3
    370e: 2403         	movs	r4, #0x3
    3710: 43a0         	bics	r0, r4
    3712: 9006         	str	r0, [sp, #0x18]
    3714: 1a86         	subs	r6, r0, r2
    3716: 42b1         	cmp	r1, r6
    3718: 9407         	str	r4, [sp, #0x1c]
    371a: d200         	bhs	0x371e <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x1a> @ imm = #0x0
    371c: e16b         	b	0x39f6 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x2f2> @ imm = #0x2d6
    371e: 1b8b         	subs	r3, r1, r6
    3720: 0898         	lsrs	r0, r3, #0x2
    3722: 9003         	str	r0, [sp, #0xc]
    3724: d100         	bne	0x3728 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x24> @ imm = #0x0
    3726: e166         	b	0x39f6 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x2f2> @ imm = #0x2cc
    3728: 9302         	str	r3, [sp, #0x8]
    372a: 4618         	mov	r0, r3
    372c: 4020         	ands	r0, r4
    372e: 9004         	str	r0, [sp, #0x10]
    3730: 2300         	movs	r3, #0x0
    3732: 9806         	ldr	r0, [sp, #0x18]
    3734: 4290         	cmp	r0, r2
    3736: 9305         	str	r3, [sp, #0x14]
    3738: d01f         	beq	0x377a <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x76> @ imm = #0x3e
    373a: 1a11         	subs	r1, r2, r0
    373c: 43e3         	mvns	r3, r4
    373e: 4299         	cmp	r1, r3
    3740: d800         	bhi	0x3744 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x40> @ imm = #0x0
    3742: e1db         	b	0x3afc <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x3f8> @ imm = #0x3b6
    3744: 2300         	movs	r3, #0x0
    3746: 4619         	mov	r1, r3
    3748: 9806         	ldr	r0, [sp, #0x18]
    374a: 4290         	cmp	r0, r2
    374c: 9c07         	ldr	r4, [sp, #0x1c]
    374e: d014         	beq	0x377a <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x76> @ imm = #0x28
    3750: 5655         	ldrsb	r5, [r2, r1]
    3752: 2040         	movs	r0, #0x40
    3754: 43c0         	mvns	r0, r0
    3756: 4285         	cmp	r5, r0
    3758: dd00         	ble	0x375c <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x58> @ imm = #0x0
    375a: 1c5b         	adds	r3, r3, #0x1
    375c: 2e01         	cmp	r6, #0x1
    375e: d00c         	beq	0x377a <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x76> @ imm = #0x18
    3760: 1851         	adds	r1, r2, r1
    3762: 2501         	movs	r5, #0x1
    3764: 574d         	ldrsb	r5, [r1, r5]
    3766: 4285         	cmp	r5, r0
    3768: dd00         	ble	0x376c <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x68> @ imm = #0x0
    376a: 1c5b         	adds	r3, r3, #0x1
    376c: 2e02         	cmp	r6, #0x2
    376e: d004         	beq	0x377a <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x76> @ imm = #0x8
    3770: 2502         	movs	r5, #0x2
    3772: 5749         	ldrsb	r1, [r1, r5]
    3774: 4281         	cmp	r1, r0
    3776: dd00         	ble	0x377a <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x76> @ imm = #0x0
    3778: 1c5b         	adds	r3, r3, #0x1
    377a: 1991         	adds	r1, r2, r6
    377c: 9804         	ldr	r0, [sp, #0x10]
    377e: 2800         	cmp	r0, #0x0
    3780: d021         	beq	0x37c6 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xc2> @ imm = #0x42
    3782: 9802         	ldr	r0, [sp, #0x8]
    3784: 43a0         	bics	r0, r4
    3786: 460d         	mov	r5, r1
    3788: 1808         	adds	r0, r1, r0
    378a: 2100         	movs	r1, #0x0
    378c: 9105         	str	r1, [sp, #0x14]
    378e: 5642         	ldrsb	r2, [r0, r1]
    3790: 2140         	movs	r1, #0x40
    3792: 43c9         	mvns	r1, r1
    3794: 428a         	cmp	r2, r1
    3796: dd01         	ble	0x379c <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x98> @ imm = #0x2
    3798: 2201         	movs	r2, #0x1
    379a: 9205         	str	r2, [sp, #0x14]
    379c: 9a04         	ldr	r2, [sp, #0x10]
    379e: 2a01         	cmp	r2, #0x1
    37a0: d010         	beq	0x37c4 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xc0> @ imm = #0x20
    37a2: 2201         	movs	r2, #0x1
    37a4: 5682         	ldrsb	r2, [r0, r2]
    37a6: 428a         	cmp	r2, r1
    37a8: dd02         	ble	0x37b0 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xac> @ imm = #0x4
    37aa: 9a05         	ldr	r2, [sp, #0x14]
    37ac: 1c52         	adds	r2, r2, #0x1
    37ae: 9205         	str	r2, [sp, #0x14]
    37b0: 9a04         	ldr	r2, [sp, #0x10]
    37b2: 2a02         	cmp	r2, #0x2
    37b4: d006         	beq	0x37c4 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xc0> @ imm = #0xc
    37b6: 2202         	movs	r2, #0x2
    37b8: 5680         	ldrsb	r0, [r0, r2]
    37ba: 4288         	cmp	r0, r1
    37bc: dd02         	ble	0x37c4 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xc0> @ imm = #0x4
    37be: 9805         	ldr	r0, [sp, #0x14]
    37c0: 1c40         	adds	r0, r0, #0x1
    37c2: 9005         	str	r0, [sp, #0x14]
    37c4: 4629         	mov	r1, r5
    37c6: 9805         	ldr	r0, [sp, #0x14]
    37c8: 18c0         	adds	r0, r0, r3
    37ca: 9006         	str	r0, [sp, #0x18]
    37cc: 48e9         	ldr	r0, [pc, #0x3a4]        @ 0x3b74 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x470>
    37ce: 9a03         	ldr	r2, [sp, #0xc]
    37d0: e014         	b	0x37fc <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xf8> @ imm = #0x28
    37d2: 2300         	movs	r3, #0x0
    37d4: 1b12         	subs	r2, r2, r4
    37d6: 1869         	adds	r1, r5, r1
    37d8: 9104         	str	r1, [sp, #0x10]
    37da: 0a19         	lsrs	r1, r3, #0x8
    37dc: 462e         	mov	r6, r5
    37de: 4de4         	ldr	r5, [pc, #0x390]        @ 0x3b70 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x46c>
    37e0: 402b         	ands	r3, r5
    37e2: 4029         	ands	r1, r5
    37e4: 18c9         	adds	r1, r1, r3
    37e6: 4be1         	ldr	r3, [pc, #0x384]        @ 0x3b6c <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x468>
    37e8: 4359         	muls	r1, r3, r1
    37ea: 0c09         	lsrs	r1, r1, #0x10
    37ec: 9b06         	ldr	r3, [sp, #0x18]
    37ee: 18cb         	adds	r3, r1, r3
    37f0: 9904         	ldr	r1, [sp, #0x10]
    37f2: 9306         	str	r3, [sp, #0x18]
    37f4: 9d05         	ldr	r5, [sp, #0x14]
    37f6: 2d00         	cmp	r5, #0x0
    37f8: d000         	beq	0x37fc <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xf8> @ imm = #0x0
    37fa: e147         	b	0x3a8c <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x388> @ imm = #0x28e
    37fc: 2a00         	cmp	r2, #0x0
    37fe: d100         	bne	0x3802 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xfe> @ imm = #0x0
    3800: e141         	b	0x3a86 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x382> @ imm = #0x282
    3802: 460d         	mov	r5, r1
    3804: 2ac0         	cmp	r2, #0xc0
    3806: 4614         	mov	r4, r2
    3808: d300         	blo	0x380c <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x108> @ imm = #0x0
    380a: 24c0         	movs	r4, #0xc0
    380c: 4621         	mov	r1, r4
    380e: 9b07         	ldr	r3, [sp, #0x1c]
    3810: 4019         	ands	r1, r3
    3812: 9105         	str	r1, [sp, #0x14]
    3814: 00a1         	lsls	r1, r4, #0x2
    3816: 2a04         	cmp	r2, #0x4
    3818: d3db         	blo	0x37d2 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xce> @ imm = #-0x4a
    381a: 9402         	str	r4, [sp, #0x8]
    381c: 9203         	str	r2, [sp, #0xc]
    381e: 9101         	str	r1, [sp, #0x4]
    3820: 3910         	subs	r1, #0x10
    3822: 090b         	lsrs	r3, r1, #0x4
    3824: 1c5a         	adds	r2, r3, #0x1
    3826: 2930         	cmp	r1, #0x30
    3828: 9500         	str	r5, [sp]
    382a: 9204         	str	r2, [sp, #0x10]
    382c: d202         	bhs	0x3834 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x130> @ imm = #0x4
    382e: 2300         	movs	r3, #0x0
    3830: 462e         	mov	r6, r5
    3832: e078         	b	0x3926 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x222> @ imm = #0xf0
    3834: 4611         	mov	r1, r2
    3836: 9a07         	ldr	r2, [sp, #0x1c]
    3838: 4391         	bics	r1, r2
    383a: 2300         	movs	r3, #0x0
    383c: 462e         	mov	r6, r5
    383e: 6872         	ldr	r2, [r6, #0x4]
    3840: 0994         	lsrs	r4, r2, #0x6
    3842: 43d2         	mvns	r2, r2
    3844: 09d2         	lsrs	r2, r2, #0x7
    3846: 4322         	orrs	r2, r4
    3848: 4002         	ands	r2, r0
    384a: 6834         	ldr	r4, [r6]
    384c: 09a5         	lsrs	r5, r4, #0x6
    384e: 43e4         	mvns	r4, r4
    3850: 09e4         	lsrs	r4, r4, #0x7
    3852: 432c         	orrs	r4, r5
    3854: 4004         	ands	r4, r0
    3856: 18e3         	adds	r3, r4, r3
    3858: 18d2         	adds	r2, r2, r3
    385a: 68b3         	ldr	r3, [r6, #0x8]
    385c: 099c         	lsrs	r4, r3, #0x6
    385e: 43db         	mvns	r3, r3
    3860: 09db         	lsrs	r3, r3, #0x7
    3862: 4323         	orrs	r3, r4
    3864: 4003         	ands	r3, r0
    3866: 189a         	adds	r2, r3, r2
    3868: 68f3         	ldr	r3, [r6, #0xc]
    386a: 099c         	lsrs	r4, r3, #0x6
    386c: 43db         	mvns	r3, r3
    386e: 09db         	lsrs	r3, r3, #0x7
    3870: 4323         	orrs	r3, r4
    3872: 4003         	ands	r3, r0
    3874: 189a         	adds	r2, r3, r2
    3876: 6933         	ldr	r3, [r6, #0x10]
    3878: 099c         	lsrs	r4, r3, #0x6
    387a: 43db         	mvns	r3, r3
    387c: 09db         	lsrs	r3, r3, #0x7
    387e: 4323         	orrs	r3, r4
    3880: 4003         	ands	r3, r0
    3882: 189a         	adds	r2, r3, r2
    3884: 6973         	ldr	r3, [r6, #0x14]
    3886: 099c         	lsrs	r4, r3, #0x6
    3888: 43db         	mvns	r3, r3
    388a: 09db         	lsrs	r3, r3, #0x7
    388c: 4323         	orrs	r3, r4
    388e: 4003         	ands	r3, r0
    3890: 189a         	adds	r2, r3, r2
    3892: 69b3         	ldr	r3, [r6, #0x18]
    3894: 099c         	lsrs	r4, r3, #0x6
    3896: 43db         	mvns	r3, r3
    3898: 09db         	lsrs	r3, r3, #0x7
    389a: 4323         	orrs	r3, r4
    389c: 4003         	ands	r3, r0
    389e: 189a         	adds	r2, r3, r2
    38a0: 69f3         	ldr	r3, [r6, #0x1c]
    38a2: 099c         	lsrs	r4, r3, #0x6
    38a4: 43db         	mvns	r3, r3
    38a6: 09db         	lsrs	r3, r3, #0x7
    38a8: 4323         	orrs	r3, r4
    38aa: 4003         	ands	r3, r0
    38ac: 189a         	adds	r2, r3, r2
    38ae: 6a33         	ldr	r3, [r6, #0x20]
    38b0: 099c         	lsrs	r4, r3, #0x6
    38b2: 43db         	mvns	r3, r3
    38b4: 09db         	lsrs	r3, r3, #0x7
    38b6: 4323         	orrs	r3, r4
    38b8: 4003         	ands	r3, r0
    38ba: 189a         	adds	r2, r3, r2
    38bc: 6a73         	ldr	r3, [r6, #0x24]
    38be: 099c         	lsrs	r4, r3, #0x6
    38c0: 43db         	mvns	r3, r3
    38c2: 09db         	lsrs	r3, r3, #0x7
    38c4: 4323         	orrs	r3, r4
    38c6: 4003         	ands	r3, r0
    38c8: 189a         	adds	r2, r3, r2
    38ca: 6ab3         	ldr	r3, [r6, #0x28]
    38cc: 099c         	lsrs	r4, r3, #0x6
    38ce: 43db         	mvns	r3, r3
    38d0: 09db         	lsrs	r3, r3, #0x7
    38d2: 4323         	orrs	r3, r4
    38d4: 4003         	ands	r3, r0
    38d6: 189a         	adds	r2, r3, r2
    38d8: 6af3         	ldr	r3, [r6, #0x2c]
    38da: 099c         	lsrs	r4, r3, #0x6
    38dc: 43db         	mvns	r3, r3
    38de: 09db         	lsrs	r3, r3, #0x7
    38e0: 4323         	orrs	r3, r4
    38e2: 4003         	ands	r3, r0
    38e4: 189a         	adds	r2, r3, r2
    38e6: 6b33         	ldr	r3, [r6, #0x30]
    38e8: 099c         	lsrs	r4, r3, #0x6
    38ea: 43db         	mvns	r3, r3
    38ec: 09db         	lsrs	r3, r3, #0x7
    38ee: 4323         	orrs	r3, r4
    38f0: 4003         	ands	r3, r0
    38f2: 189a         	adds	r2, r3, r2
    38f4: 6b73         	ldr	r3, [r6, #0x34]
    38f6: 099c         	lsrs	r4, r3, #0x6
    38f8: 43db         	mvns	r3, r3
    38fa: 09db         	lsrs	r3, r3, #0x7
    38fc: 4323         	orrs	r3, r4
    38fe: 4003         	ands	r3, r0
    3900: 189a         	adds	r2, r3, r2
    3902: 6bb3         	ldr	r3, [r6, #0x38]
    3904: 099c         	lsrs	r4, r3, #0x6
    3906: 43db         	mvns	r3, r3
    3908: 09db         	lsrs	r3, r3, #0x7
    390a: 4323         	orrs	r3, r4
    390c: 4003         	ands	r3, r0
    390e: 189a         	adds	r2, r3, r2
    3910: 6bf3         	ldr	r3, [r6, #0x3c]
    3912: 099c         	lsrs	r4, r3, #0x6
    3914: 43db         	mvns	r3, r3
    3916: 09db         	lsrs	r3, r3, #0x7
    3918: 4323         	orrs	r3, r4
    391a: 4003         	ands	r3, r0
    391c: 189b         	adds	r3, r3, r2
    391e: 1f09         	subs	r1, r1, #0x4
    3920: 3640         	adds	r6, #0x40
    3922: 2900         	cmp	r1, #0x0
    3924: d18b         	bne	0x383e <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x13a> @ imm = #-0xea
    3926: 9907         	ldr	r1, [sp, #0x1c]
    3928: 9a04         	ldr	r2, [sp, #0x10]
    392a: 400a         	ands	r2, r1
    392c: 9204         	str	r2, [sp, #0x10]
    392e: 9a03         	ldr	r2, [sp, #0xc]
    3930: 9d00         	ldr	r5, [sp]
    3932: 9c02         	ldr	r4, [sp, #0x8]
    3934: 9901         	ldr	r1, [sp, #0x4]
    3936: d100         	bne	0x393a <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x236> @ imm = #0x0
    3938: e74c         	b	0x37d4 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xd0> @ imm = #-0x168
    393a: 6871         	ldr	r1, [r6, #0x4]
    393c: 098a         	lsrs	r2, r1, #0x6
    393e: 43c9         	mvns	r1, r1
    3940: 09c9         	lsrs	r1, r1, #0x7
    3942: 4311         	orrs	r1, r2
    3944: 4001         	ands	r1, r0
    3946: 6832         	ldr	r2, [r6]
    3948: 0994         	lsrs	r4, r2, #0x6
    394a: 43d2         	mvns	r2, r2
    394c: 09d2         	lsrs	r2, r2, #0x7
    394e: 4322         	orrs	r2, r4
    3950: 4002         	ands	r2, r0
    3952: 18d2         	adds	r2, r2, r3
    3954: 1889         	adds	r1, r1, r2
    3956: 68b2         	ldr	r2, [r6, #0x8]
    3958: 0993         	lsrs	r3, r2, #0x6
    395a: 43d2         	mvns	r2, r2
    395c: 09d2         	lsrs	r2, r2, #0x7
    395e: 431a         	orrs	r2, r3
    3960: 4002         	ands	r2, r0
    3962: 1851         	adds	r1, r2, r1
    3964: 68f2         	ldr	r2, [r6, #0xc]
    3966: 0993         	lsrs	r3, r2, #0x6
    3968: 43d2         	mvns	r2, r2
    396a: 09d2         	lsrs	r2, r2, #0x7
    396c: 431a         	orrs	r2, r3
    396e: 4002         	ands	r2, r0
    3970: 1853         	adds	r3, r2, r1
    3972: 9a04         	ldr	r2, [sp, #0x10]
    3974: 2a01         	cmp	r2, #0x1
    3976: d03a         	beq	0x39ee <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x2ea> @ imm = #0x74
    3978: 6971         	ldr	r1, [r6, #0x14]
    397a: 098a         	lsrs	r2, r1, #0x6
    397c: 43c9         	mvns	r1, r1
    397e: 09c9         	lsrs	r1, r1, #0x7
    3980: 4311         	orrs	r1, r2
    3982: 4001         	ands	r1, r0
    3984: 6932         	ldr	r2, [r6, #0x10]
    3986: 0994         	lsrs	r4, r2, #0x6
    3988: 43d2         	mvns	r2, r2
    398a: 09d2         	lsrs	r2, r2, #0x7
    398c: 4322         	orrs	r2, r4
    398e: 4002         	ands	r2, r0
    3990: 18d2         	adds	r2, r2, r3
    3992: 1889         	adds	r1, r1, r2
    3994: 69b2         	ldr	r2, [r6, #0x18]
    3996: 0993         	lsrs	r3, r2, #0x6
    3998: 43d2         	mvns	r2, r2
    399a: 09d2         	lsrs	r2, r2, #0x7
    399c: 431a         	orrs	r2, r3
    399e: 4002         	ands	r2, r0
    39a0: 1851         	adds	r1, r2, r1
    39a2: 69f2         	ldr	r2, [r6, #0x1c]
    39a4: 0993         	lsrs	r3, r2, #0x6
    39a6: 43d2         	mvns	r2, r2
    39a8: 09d2         	lsrs	r2, r2, #0x7
    39aa: 431a         	orrs	r2, r3
    39ac: 4002         	ands	r2, r0
    39ae: 1853         	adds	r3, r2, r1
    39b0: 9904         	ldr	r1, [sp, #0x10]
    39b2: 2902         	cmp	r1, #0x2
    39b4: d01b         	beq	0x39ee <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x2ea> @ imm = #0x36
    39b6: 6a71         	ldr	r1, [r6, #0x24]
    39b8: 098a         	lsrs	r2, r1, #0x6
    39ba: 43c9         	mvns	r1, r1
    39bc: 09c9         	lsrs	r1, r1, #0x7
    39be: 4311         	orrs	r1, r2
    39c0: 4001         	ands	r1, r0
    39c2: 6a32         	ldr	r2, [r6, #0x20]
    39c4: 0994         	lsrs	r4, r2, #0x6
    39c6: 43d2         	mvns	r2, r2
    39c8: 09d2         	lsrs	r2, r2, #0x7
    39ca: 4322         	orrs	r2, r4
    39cc: 4002         	ands	r2, r0
    39ce: 18d2         	adds	r2, r2, r3
    39d0: 1889         	adds	r1, r1, r2
    39d2: 6ab2         	ldr	r2, [r6, #0x28]
    39d4: 0993         	lsrs	r3, r2, #0x6
    39d6: 43d2         	mvns	r2, r2
    39d8: 09d2         	lsrs	r2, r2, #0x7
    39da: 431a         	orrs	r2, r3
    39dc: 4002         	ands	r2, r0
    39de: 1851         	adds	r1, r2, r1
    39e0: 6af2         	ldr	r2, [r6, #0x2c]
    39e2: 0993         	lsrs	r3, r2, #0x6
    39e4: 43d2         	mvns	r2, r2
    39e6: 09d2         	lsrs	r2, r2, #0x7
    39e8: 431a         	orrs	r2, r3
    39ea: 4002         	ands	r2, r0
    39ec: 1853         	adds	r3, r2, r1
    39ee: 9a03         	ldr	r2, [sp, #0xc]
    39f0: 9c02         	ldr	r4, [sp, #0x8]
    39f2: 9901         	ldr	r1, [sp, #0x4]
    39f4: e6ee         	b	0x37d4 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xd0> @ imm = #-0x224
    39f6: 2900         	cmp	r1, #0x0
    39f8: d008         	beq	0x3a0c <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x308> @ imm = #0x10
    39fa: 4608         	mov	r0, r1
    39fc: 4020         	ands	r0, r4
    39fe: 9005         	str	r0, [sp, #0x14]
    3a00: 2904         	cmp	r1, #0x4
    3a02: 9206         	str	r2, [sp, #0x18]
    3a04: d205         	bhs	0x3a12 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x30e> @ imm = #0xa
    3a06: 2000         	movs	r0, #0x0
    3a08: 4604         	mov	r4, r0
    3a0a: e02b         	b	0x3a64 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x360> @ imm = #0x56
    3a0c: 2000         	movs	r0, #0x0
    3a0e: b008         	add	sp, #0x20
    3a10: bdf0         	pop	{r4, r5, r6, r7, pc}
    3a12: 43a1         	bics	r1, r4
    3a14: 2000         	movs	r0, #0x0
    3a16: 4604         	mov	r4, r0
    3a18: e004         	b	0x3a24 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x320> @ imm = #0x8
    3a1a: 4610         	mov	r0, r2
    3a1c: 1d24         	adds	r4, r4, #0x4
    3a1e: 42a1         	cmp	r1, r4
    3a20: 9a06         	ldr	r2, [sp, #0x18]
    3a22: d01f         	beq	0x3a64 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x360> @ imm = #0x3e
    3a24: 5716         	ldrsb	r6, [r2, r4]
    3a26: 2540         	movs	r5, #0x40
    3a28: 43ed         	mvns	r5, r5
    3a2a: 42ae         	cmp	r6, r5
    3a2c: dd00         	ble	0x3a30 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x32c> @ imm = #0x0
    3a2e: 1c40         	adds	r0, r0, #0x1
    3a30: 1916         	adds	r6, r2, r4
    3a32: 2301         	movs	r3, #0x1
    3a34: 56f3         	ldrsb	r3, [r6, r3]
    3a36: 42ab         	cmp	r3, r5
    3a38: dd00         	ble	0x3a3c <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x338> @ imm = #0x0
    3a3a: 1c40         	adds	r0, r0, #0x1
    3a3c: 2302         	movs	r3, #0x2
    3a3e: 56f3         	ldrsb	r3, [r6, r3]
    3a40: 42ab         	cmp	r3, r5
    3a42: dc05         	bgt	0x3a50 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x34c> @ imm = #0xa
    3a44: 4602         	mov	r2, r0
    3a46: 9807         	ldr	r0, [sp, #0x1c]
    3a48: 5633         	ldrsb	r3, [r6, r0]
    3a4a: 42ab         	cmp	r3, r5
    3a4c: dde5         	ble	0x3a1a <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x316> @ imm = #-0x36
    3a4e: e004         	b	0x3a5a <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x356> @ imm = #0x8
    3a50: 1c42         	adds	r2, r0, #0x1
    3a52: 9807         	ldr	r0, [sp, #0x1c]
    3a54: 5633         	ldrsb	r3, [r6, r0]
    3a56: 42ab         	cmp	r3, r5
    3a58: dddf         	ble	0x3a1a <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x316> @ imm = #-0x42
    3a5a: 1c50         	adds	r0, r2, #0x1
    3a5c: 1d24         	adds	r4, r4, #0x4
    3a5e: 42a1         	cmp	r1, r4
    3a60: 9a06         	ldr	r2, [sp, #0x18]
    3a62: d1df         	bne	0x3a24 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x320> @ imm = #-0x42
    3a64: 9905         	ldr	r1, [sp, #0x14]
    3a66: 2900         	cmp	r1, #0x0
    3a68: d00b         	beq	0x3a82 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x37e> @ imm = #0x16
    3a6a: 4611         	mov	r1, r2
    3a6c: 4602         	mov	r2, r0
    3a6e: 5708         	ldrsb	r0, [r1, r4]
    3a70: 2140         	movs	r1, #0x40
    3a72: 43c9         	mvns	r1, r1
    3a74: 4288         	cmp	r0, r1
    3a76: dc31         	bgt	0x3adc <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x3d8> @ imm = #0x62
    3a78: 4610         	mov	r0, r2
    3a7a: 9a05         	ldr	r2, [sp, #0x14]
    3a7c: 2a01         	cmp	r2, #0x1
    3a7e: 9a06         	ldr	r2, [sp, #0x18]
    3a80: d131         	bne	0x3ae6 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x3e2> @ imm = #0x62
    3a82: b008         	add	sp, #0x20
    3a84: bdf0         	pop	{r4, r5, r6, r7, pc}
    3a86: 9806         	ldr	r0, [sp, #0x18]
    3a88: b008         	add	sp, #0x20
    3a8a: bdf0         	pop	{r4, r5, r6, r7, pc}
    3a8c: 21fc         	movs	r1, #0xfc
    3a8e: 400c         	ands	r4, r1
    3a90: 00a2         	lsls	r2, r4, #0x2
    3a92: 58b1         	ldr	r1, [r6, r2]
    3a94: 098b         	lsrs	r3, r1, #0x6
    3a96: 43c9         	mvns	r1, r1
    3a98: 09c9         	lsrs	r1, r1, #0x7
    3a9a: 4319         	orrs	r1, r3
    3a9c: 4001         	ands	r1, r0
    3a9e: 2d01         	cmp	r5, #0x1
    3aa0: d010         	beq	0x3ac4 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x3c0> @ imm = #0x20
    3aa2: 18b2         	adds	r2, r6, r2
    3aa4: 6853         	ldr	r3, [r2, #0x4]
    3aa6: 099c         	lsrs	r4, r3, #0x6
    3aa8: 43db         	mvns	r3, r3
    3aaa: 09db         	lsrs	r3, r3, #0x7
    3aac: 4323         	orrs	r3, r4
    3aae: 4003         	ands	r3, r0
    3ab0: 1859         	adds	r1, r3, r1
    3ab2: 2d02         	cmp	r5, #0x2
    3ab4: d006         	beq	0x3ac4 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x3c0> @ imm = #0xc
    3ab6: 6892         	ldr	r2, [r2, #0x8]
    3ab8: 0993         	lsrs	r3, r2, #0x6
    3aba: 43d2         	mvns	r2, r2
    3abc: 09d2         	lsrs	r2, r2, #0x7
    3abe: 431a         	orrs	r2, r3
    3ac0: 4002         	ands	r2, r0
    3ac2: 1851         	adds	r1, r2, r1
    3ac4: 0a08         	lsrs	r0, r1, #0x8
    3ac6: 4a2a         	ldr	r2, [pc, #0xa8]         @ 0x3b70 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x46c>
    3ac8: 4011         	ands	r1, r2
    3aca: 4010         	ands	r0, r2
    3acc: 1840         	adds	r0, r0, r1
    3ace: 4927         	ldr	r1, [pc, #0x9c]         @ 0x3b6c <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x468>
    3ad0: 4341         	muls	r1, r0, r1
    3ad2: 0c08         	lsrs	r0, r1, #0x10
    3ad4: 9906         	ldr	r1, [sp, #0x18]
    3ad6: 1840         	adds	r0, r0, r1
    3ad8: b008         	add	sp, #0x20
    3ada: bdf0         	pop	{r4, r5, r6, r7, pc}
    3adc: 1c50         	adds	r0, r2, #0x1
    3ade: 9a05         	ldr	r2, [sp, #0x14]
    3ae0: 2a01         	cmp	r2, #0x1
    3ae2: 9a06         	ldr	r2, [sp, #0x18]
    3ae4: d0cd         	beq	0x3a82 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x37e> @ imm = #-0x66
    3ae6: 4603         	mov	r3, r0
    3ae8: 1912         	adds	r2, r2, r4
    3aea: 2001         	movs	r0, #0x1
    3aec: 5610         	ldrsb	r0, [r2, r0]
    3aee: 4288         	cmp	r0, r1
    3af0: dc2c         	bgt	0x3b4c <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x448> @ imm = #0x58
    3af2: 4618         	mov	r0, r3
    3af4: 9b05         	ldr	r3, [sp, #0x14]
    3af6: 2b02         	cmp	r3, #0x2
    3af8: d0c3         	beq	0x3a82 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x37e> @ imm = #-0x7a
    3afa: e02b         	b	0x3b54 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x450> @ imm = #0x56
    3afc: 2300         	movs	r3, #0x0
    3afe: 4619         	mov	r1, r3
    3b00: e003         	b	0x3b0a <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x406> @ imm = #0x6
    3b02: 4626         	mov	r6, r4
    3b04: 1d09         	adds	r1, r1, #0x4
    3b06: d100         	bne	0x3b0a <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x406> @ imm = #0x0
    3b08: e61e         	b	0x3748 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x44> @ imm = #-0x3c4
    3b0a: 4634         	mov	r4, r6
    3b0c: 5656         	ldrsb	r6, [r2, r1]
    3b0e: 2540         	movs	r5, #0x40
    3b10: 43ed         	mvns	r5, r5
    3b12: 42ae         	cmp	r6, r5
    3b14: dd00         	ble	0x3b18 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x414> @ imm = #0x0
    3b16: 1c5b         	adds	r3, r3, #0x1
    3b18: 1856         	adds	r6, r2, r1
    3b1a: 2001         	movs	r0, #0x1
    3b1c: 5630         	ldrsb	r0, [r6, r0]
    3b1e: 42a8         	cmp	r0, r5
    3b20: dc08         	bgt	0x3b34 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x430> @ imm = #0x10
    3b22: 2002         	movs	r0, #0x2
    3b24: 5630         	ldrsb	r0, [r6, r0]
    3b26: 42a8         	cmp	r0, r5
    3b28: dc09         	bgt	0x3b3e <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x43a> @ imm = #0x12
    3b2a: 9807         	ldr	r0, [sp, #0x1c]
    3b2c: 5630         	ldrsb	r0, [r6, r0]
    3b2e: 42a8         	cmp	r0, r5
    3b30: dde7         	ble	0x3b02 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x3fe> @ imm = #-0x32
    3b32: e009         	b	0x3b48 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x444> @ imm = #0x12
    3b34: 1c5b         	adds	r3, r3, #0x1
    3b36: 2002         	movs	r0, #0x2
    3b38: 5630         	ldrsb	r0, [r6, r0]
    3b3a: 42a8         	cmp	r0, r5
    3b3c: ddf5         	ble	0x3b2a <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x426> @ imm = #-0x16
    3b3e: 1c5b         	adds	r3, r3, #0x1
    3b40: 9807         	ldr	r0, [sp, #0x1c]
    3b42: 5630         	ldrsb	r0, [r6, r0]
    3b44: 42a8         	cmp	r0, r5
    3b46: dddc         	ble	0x3b02 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x3fe> @ imm = #-0x48
    3b48: 1c5b         	adds	r3, r3, #0x1
    3b4a: e7da         	b	0x3b02 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x3fe> @ imm = #-0x4c
    3b4c: 1c58         	adds	r0, r3, #0x1
    3b4e: 9b05         	ldr	r3, [sp, #0x14]
    3b50: 2b02         	cmp	r3, #0x2
    3b52: d096         	beq	0x3a82 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x37e> @ imm = #-0xd4
    3b54: 4603         	mov	r3, r0
    3b56: 2002         	movs	r0, #0x2
    3b58: 5610         	ldrsb	r0, [r2, r0]
    3b5a: 4288         	cmp	r0, r1
    3b5c: dc02         	bgt	0x3b64 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x460> @ imm = #0x4
    3b5e: 4618         	mov	r0, r3
    3b60: b008         	add	sp, #0x20
    3b62: bdf0         	pop	{r4, r5, r6, r7, pc}
    3b64: 1c58         	adds	r0, r3, #0x1
    3b66: b008         	add	sp, #0x20
    3b68: bdf0         	pop	{r4, r5, r6, r7, pc}
    3b6a: 46c0         	mov	r8, r8
    3b6c: 01 00 01 00  	.word	0x00010001
    3b70: ff 00 ff 00  	.word	0x00ff00ff
    3b74: 01 01 01 01  	.word	0x01010101

Disassembly of section .text.unlikely.core::panicking::panic_const::panic_const_add_overflow::hf5cb0614de41d6eb:

00003b78 <core::panicking::panic_const::panic_const_add_overflow::hf5cb0614de41d6eb>:
    3b78: b580         	push	{r7, lr}
    3b7a: af00         	add	r7, sp, #0x0
    3b7c: b086         	sub	sp, #0x18
    3b7e: 4601         	mov	r1, r0
    3b80: 2000         	movs	r0, #0x0
    3b82: 9004         	str	r0, [sp, #0x10]
    3b84: 2201         	movs	r2, #0x1
    3b86: 9201         	str	r2, [sp, #0x4]
    3b88: 4a03         	ldr	r2, [pc, #0xc]          @ 0x3b98 <core::panicking::panic_const::panic_const_add_overflow::hf5cb0614de41d6eb+0x20>
    3b8a: 9200         	str	r2, [sp]
    3b8c: 9003         	str	r0, [sp, #0xc]
    3b8e: 2004         	movs	r0, #0x4
    3b90: 9002         	str	r0, [sp, #0x8]
    3b92: 4668         	mov	r0, sp
    3b94: f7ff fa30    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #-0xba0
    3b98: 60 0c 00 00  	.word	0x00000c60

Disassembly of section .text.unlikely.core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0:

00003b9c <core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0>:
    3b9c: b580         	push	{r7, lr}
    3b9e: af00         	add	r7, sp, #0x0
    3ba0: b086         	sub	sp, #0x18
    3ba2: 4601         	mov	r1, r0
    3ba4: 2000         	movs	r0, #0x0
    3ba6: 9004         	str	r0, [sp, #0x10]
    3ba8: 2201         	movs	r2, #0x1
    3baa: 9201         	str	r2, [sp, #0x4]
    3bac: 4a03         	ldr	r2, [pc, #0xc]          @ 0x3bbc <core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0+0x20>
    3bae: 9200         	str	r2, [sp]
    3bb0: 9003         	str	r0, [sp, #0xc]
    3bb2: 2004         	movs	r0, #0x4
    3bb4: 9002         	str	r0, [sp, #0x8]
    3bb6: 4668         	mov	r0, sp
    3bb8: f7ff fa1e    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #-0xbc4
    3bbc: 8c 0c 00 00  	.word	0x00000c8c

Disassembly of section .text.unlikely.core::panicking::panic_const::panic_const_shl_overflow::h8a4a13f35df0c52c:

00003bc0 <core::panicking::panic_const::panic_const_shl_overflow::h8a4a13f35df0c52c>:
    3bc0: b580         	push	{r7, lr}
    3bc2: af00         	add	r7, sp, #0x0
    3bc4: b086         	sub	sp, #0x18
    3bc6: 4601         	mov	r1, r0
    3bc8: 2000         	movs	r0, #0x0
    3bca: 9004         	str	r0, [sp, #0x10]
    3bcc: 2201         	movs	r2, #0x1
    3bce: 9201         	str	r2, [sp, #0x4]
    3bd0: 4a03         	ldr	r2, [pc, #0xc]          @ 0x3be0 <core::panicking::panic_const::panic_const_shl_overflow::h8a4a13f35df0c52c+0x20>
    3bd2: 9200         	str	r2, [sp]
    3bd4: 9003         	str	r0, [sp, #0xc]
    3bd6: 2004         	movs	r0, #0x4
    3bd8: 9002         	str	r0, [sp, #0x8]
    3bda: 4668         	mov	r0, sp
    3bdc: f7ff fa0c    	bl	0x2ff8 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #-0xbe8
    3be0: b8 0c 00 00  	.word	0x00000cb8

Disassembly of section .text.core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt::h93c7d15ae691b324:

00003be4 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::hbd91d18094b0cbcc>:
    3be4: b5b0         	push	{r4, r5, r7, lr}
    3be6: af02         	add	r7, sp, #0x8
    3be8: b0a2         	sub	sp, #0x88
    3bea: 6800         	ldr	r0, [r0]
    3bec: 2281         	movs	r2, #0x81
    3bee: e007         	b	0x3c00 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::hbd91d18094b0cbcc+0x1c> @ imm = #0xe
    3bf0: 3437         	adds	r4, #0x37
    3bf2: ab02         	add	r3, sp, #0x8
    3bf4: 189b         	adds	r3, r3, r2
    3bf6: 1edb         	subs	r3, r3, #0x3
    3bf8: 701c         	strb	r4, [r3]
    3bfa: 1e92         	subs	r2, r2, #0x2
    3bfc: 0a00         	lsrs	r0, r0, #0x8
    3bfe: d015         	beq	0x3c2c <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::hbd91d18094b0cbcc+0x48> @ imm = #0x2a
    3c00: 230f         	movs	r3, #0xf
    3c02: 4604         	mov	r4, r0
    3c04: 401c         	ands	r4, r3
    3c06: 2c0a         	cmp	r4, #0xa
    3c08: d301         	blo	0x3c0e <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::hbd91d18094b0cbcc+0x2a> @ imm = #0x2
    3c0a: 3437         	adds	r4, #0x37
    3c0c: e000         	b	0x3c10 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::hbd91d18094b0cbcc+0x2c> @ imm = #0x0
    3c0e: 3430         	adds	r4, #0x30
    3c10: ad02         	add	r5, sp, #0x8
    3c12: 18ad         	adds	r5, r5, r2
    3c14: 1ead         	subs	r5, r5, #0x2
    3c16: 702c         	strb	r4, [r5]
    3c18: 0904         	lsrs	r4, r0, #0x4
    3c1a: d004         	beq	0x3c26 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::hbd91d18094b0cbcc+0x42> @ imm = #0x8
    3c1c: 401c         	ands	r4, r3
    3c1e: 2c0a         	cmp	r4, #0xa
    3c20: d2e6         	bhs	0x3bf0 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::hbd91d18094b0cbcc+0xc> @ imm = #-0x34
    3c22: 3430         	adds	r4, #0x30
    3c24: e7e5         	b	0x3bf2 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::hbd91d18094b0cbcc+0xe> @ imm = #-0x36
    3c26: 1e90         	subs	r0, r2, #0x2
    3c28: 1e52         	subs	r2, r2, #0x1
    3c2a: e000         	b	0x3c2e <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::hbd91d18094b0cbcc+0x4a> @ imm = #0x0
    3c2c: 1e50         	subs	r0, r2, #0x1
    3c2e: 2881         	cmp	r0, #0x81
    3c30: d20e         	bhs	0x3c50 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::hbd91d18094b0cbcc+0x6c> @ imm = #0x1c
    3c32: 2381         	movs	r3, #0x81
    3c34: 1a9a         	subs	r2, r3, r2
    3c36: 9201         	str	r2, [sp, #0x4]
    3c38: aa02         	add	r2, sp, #0x8
    3c3a: 1810         	adds	r0, r2, r0
    3c3c: 9000         	str	r0, [sp]
    3c3e: 2401         	movs	r4, #0x1
    3c40: 4a05         	ldr	r2, [pc, #0x14]         @ 0x3c58 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::hbd91d18094b0cbcc+0x74>
    3c42: 2302         	movs	r3, #0x2
    3c44: 4608         	mov	r0, r1
    3c46: 4621         	mov	r1, r4
    3c48: f7ff fab4    	bl	0x31b4 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582> @ imm = #-0xa98
    3c4c: b022         	add	sp, #0x88
    3c4e: bdb0         	pop	{r4, r5, r7, pc}
    3c50: 2180         	movs	r1, #0x80
    3c52: 4a02         	ldr	r2, [pc, #0x8]          @ 0x3c5c <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::hbd91d18094b0cbcc+0x78>
    3c54: f7ff fcfc    	bl	0x3650 <core::slice::index::slice_start_index_len_fail::h0143d39f27fb17b8> @ imm = #-0x608
    3c58: 44 0d 00 00  	.word	0x00000d44
    3c5c: 34 0d 00 00  	.word	0x00000d34

Disassembly of section .text.core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h011b359b062d43d4:

00003c60 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c>:
    3c60: b5f0         	push	{r4, r5, r6, r7, lr}
    3c62: af03         	add	r7, sp, #0xc
    3c64: b08f         	sub	sp, #0x3c
    3c66: 9102         	str	r1, [sp, #0x8]
    3c68: 6802         	ldr	r2, [r0]
    3c6a: 4c35         	ldr	r4, [pc, #0xd4]         @ 0x3d40 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xe0>
    3c6c: 2627         	movs	r6, #0x27
    3c6e: 42a2         	cmp	r2, r4
    3c70: d92e         	bls	0x3cd0 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0x70> @ imm = #0x5c
    3c72: 4615         	mov	r5, r2
    3c74: 9604         	str	r6, [sp, #0x10]
    3c76: 4628         	mov	r0, r5
    3c78: 4932         	ldr	r1, [pc, #0xc8]         @ 0x3d44 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xe4>
    3c7a: f7fe f99d    	bl	0x1fb8 <_rphal_unsigned_divmod> @ imm = #-0x1cc6
    3c7e: 9003         	str	r0, [sp, #0xc]
    3c80: 1c61         	adds	r1, r4, #0x1
    3c82: 4341         	muls	r1, r0, r1
    3c84: 1a69         	subs	r1, r5, r1
    3c86: b28a         	uxth	r2, r1
    3c88: 0892         	lsrs	r2, r2, #0x2
    3c8a: 482f         	ldr	r0, [pc, #0xbc]         @ 0x3d48 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xe8>
    3c8c: 4342         	muls	r2, r0, r2
    3c8e: 0c52         	lsrs	r2, r2, #0x11
    3c90: 0053         	lsls	r3, r2, #0x1
    3c92: 482e         	ldr	r0, [pc, #0xb8]         @ 0x3d4c <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xec>
    3c94: 5cc0         	ldrb	r0, [r0, r3]
    3c96: ac05         	add	r4, sp, #0x14
    3c98: 19a4         	adds	r4, r4, r6
    3c9a: 1f26         	subs	r6, r4, #0x4
    3c9c: 7030         	strb	r0, [r6]
    3c9e: 482b         	ldr	r0, [pc, #0xac]         @ 0x3d4c <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xec>
    3ca0: 18c0         	adds	r0, r0, r3
    3ca2: 7840         	ldrb	r0, [r0, #0x1]
    3ca4: 7070         	strb	r0, [r6, #0x1]
    3ca6: 9e04         	ldr	r6, [sp, #0x10]
    3ca8: 2064         	movs	r0, #0x64
    3caa: 4350         	muls	r0, r2, r0
    3cac: 1a08         	subs	r0, r1, r0
    3cae: b280         	uxth	r0, r0
    3cb0: 0040         	lsls	r0, r0, #0x1
    3cb2: 4a26         	ldr	r2, [pc, #0x98]         @ 0x3d4c <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xec>
    3cb4: 5c11         	ldrb	r1, [r2, r0]
    3cb6: 4613         	mov	r3, r2
    3cb8: 1ea2         	subs	r2, r4, #0x2
    3cba: 4c21         	ldr	r4, [pc, #0x84]         @ 0x3d40 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xe0>
    3cbc: 7011         	strb	r1, [r2]
    3cbe: 1818         	adds	r0, r3, r0
    3cc0: 7840         	ldrb	r0, [r0, #0x1]
    3cc2: 7050         	strb	r0, [r2, #0x1]
    3cc4: 9a03         	ldr	r2, [sp, #0xc]
    3cc6: 1f36         	subs	r6, r6, #0x4
    3cc8: 4821         	ldr	r0, [pc, #0x84]         @ 0x3d50 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xf0>
    3cca: 4285         	cmp	r5, r0
    3ccc: 4615         	mov	r5, r2
    3cce: d8d1         	bhi	0x3c74 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0x14> @ imm = #-0x5e
    3cd0: 2a63         	cmp	r2, #0x63
    3cd2: d91f         	bls	0x3d14 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xb4> @ imm = #0x3e
    3cd4: b290         	uxth	r0, r2
    3cd6: 0880         	lsrs	r0, r0, #0x2
    3cd8: 491b         	ldr	r1, [pc, #0x6c]         @ 0x3d48 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xe8>
    3cda: 4341         	muls	r1, r0, r1
    3cdc: 0c49         	lsrs	r1, r1, #0x11
    3cde: 2064         	movs	r0, #0x64
    3ce0: 4348         	muls	r0, r1, r0
    3ce2: 1a10         	subs	r0, r2, r0
    3ce4: b280         	uxth	r0, r0
    3ce6: 0040         	lsls	r0, r0, #0x1
    3ce8: 4a18         	ldr	r2, [pc, #0x60]         @ 0x3d4c <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xec>
    3cea: 5c13         	ldrb	r3, [r2, r0]
    3cec: 1eb6         	subs	r6, r6, #0x2
    3cee: ac05         	add	r4, sp, #0x14
    3cf0: 55a3         	strb	r3, [r4, r6]
    3cf2: 19a3         	adds	r3, r4, r6
    3cf4: 1810         	adds	r0, r2, r0
    3cf6: 7840         	ldrb	r0, [r0, #0x1]
    3cf8: 7058         	strb	r0, [r3, #0x1]
    3cfa: 290a         	cmp	r1, #0xa
    3cfc: d30d         	blo	0x3d1a <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xba> @ imm = #0x1a
    3cfe: 0049         	lsls	r1, r1, #0x1
    3d00: 4a12         	ldr	r2, [pc, #0x48]         @ 0x3d4c <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xec>
    3d02: 5c53         	ldrb	r3, [r2, r1]
    3d04: 1eb0         	subs	r0, r6, #0x2
    3d06: ac05         	add	r4, sp, #0x14
    3d08: 5423         	strb	r3, [r4, r0]
    3d0a: 1823         	adds	r3, r4, r0
    3d0c: 1851         	adds	r1, r2, r1
    3d0e: 7849         	ldrb	r1, [r1, #0x1]
    3d10: 7059         	strb	r1, [r3, #0x1]
    3d12: e007         	b	0x3d24 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xc4> @ imm = #0xe
    3d14: 4611         	mov	r1, r2
    3d16: 290a         	cmp	r1, #0xa
    3d18: d2f1         	bhs	0x3cfe <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0x9e> @ imm = #-0x1e
    3d1a: 2030         	movs	r0, #0x30
    3d1c: 4301         	orrs	r1, r0
    3d1e: 1e70         	subs	r0, r6, #0x1
    3d20: aa05         	add	r2, sp, #0x14
    3d22: 5411         	strb	r1, [r2, r0]
    3d24: 2127         	movs	r1, #0x27
    3d26: 1a09         	subs	r1, r1, r0
    3d28: 9101         	str	r1, [sp, #0x4]
    3d2a: a905         	add	r1, sp, #0x14
    3d2c: 1808         	adds	r0, r1, r0
    3d2e: 9000         	str	r0, [sp]
    3d30: 2101         	movs	r1, #0x1
    3d32: 2300         	movs	r3, #0x0
    3d34: 9802         	ldr	r0, [sp, #0x8]
    3d36: 460a         	mov	r2, r1
    3d38: f7ff fa3c    	bl	0x31b4 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582> @ imm = #-0xb88
    3d3c: b00f         	add	sp, #0x3c
    3d3e: bdf0         	pop	{r4, r5, r6, r7, pc}
    3d40: 0f 27 00 00  	.word	0x0000270f
    3d44: 10 27 00 00  	.word	0x00002710
    3d48: 7b 14 00 00  	.word	0x0000147b
    3d4c: 46 0d 00 00  	.word	0x00000d46
    3d50: ff e0 f5 05  	.word	0x05f5e0ff

Disassembly of section .text.<&T as core::fmt::Display>::fmt::hd311180cd7649c1c:

00003d54 <<&T as core::fmt::Display>::fmt::hd311180cd7649c1c>:
    3d54: b580         	push	{r7, lr}
    3d56: af00         	add	r7, sp, #0x0
    3d58: 460b         	mov	r3, r1
    3d5a: c806         	ldm	r0!, {r1, r2}
    3d5c: 4618         	mov	r0, r3
    3d5e: f7ff fb7b    	bl	0x3458 <core::fmt::Formatter::pad::h3b94c4012190d009> @ imm = #-0x90a
    3d62: bd80         	pop	{r7, pc}

Disassembly of section .text.__aeabi_lmul:

00003d64 <__aeabi_lmul>:
    3d64: b5f0         	push	{r4, r5, r6, r7, lr}
    3d66: af03         	add	r7, sp, #0xc
    3d68: b084         	sub	sp, #0x10
    3d6a: 9303         	str	r3, [sp, #0xc]
    3d6c: 4614         	mov	r4, r2
    3d6e: 9102         	str	r1, [sp, #0x8]
    3d70: 9001         	str	r0, [sp, #0x4]
    3d72: 0c05         	lsrs	r5, r0, #0x10
    3d74: b292         	uxth	r2, r2
    3d76: 9200         	str	r2, [sp]
    3d78: 4629         	mov	r1, r5
    3d7a: 4351         	muls	r1, r2, r1
    3d7c: b282         	uxth	r2, r0
    3d7e: 0c23         	lsrs	r3, r4, #0x10
    3d80: 4616         	mov	r6, r2
    3d82: 435e         	muls	r6, r3, r6
    3d84: 2000         	movs	r0, #0x0
    3d86: 1871         	adds	r1, r6, r1
    3d88: 4140         	adcs	r0, r0
    3d8a: 0c0e         	lsrs	r6, r1, #0x10
    3d8c: 0400         	lsls	r0, r0, #0x10
    3d8e: 1986         	adds	r6, r0, r6
    3d90: 0408         	lsls	r0, r1, #0x10
    3d92: 435d         	muls	r5, r3, r5
    3d94: 9900         	ldr	r1, [sp]
    3d96: 434a         	muls	r2, r1, r2
    3d98: 1810         	adds	r0, r2, r0
    3d9a: 4175         	adcs	r5, r6
    3d9c: 9a02         	ldr	r2, [sp, #0x8]
    3d9e: 4362         	muls	r2, r4, r2
    3da0: 9903         	ldr	r1, [sp, #0xc]
    3da2: 9b01         	ldr	r3, [sp, #0x4]
    3da4: 4359         	muls	r1, r3, r1
    3da6: 1889         	adds	r1, r1, r2
    3da8: 1869         	adds	r1, r5, r1
    3daa: b004         	add	sp, #0x10
    3dac: bdf0         	pop	{r4, r5, r6, r7, pc}
