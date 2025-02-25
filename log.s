warning: the feature `specialization` is incomplete and may not be safe to use and/or cause compiler crashes
 --> examples/simple_rtic.rs:3:35
  |
3 | #![feature(type_alias_impl_trait, specialization)]
  |                                   ^^^^^^^^^^^^^^
  |
  = note: see issue #31844 <https://github.com/rust-lang/rust/issues/31844> for more information
  = help: consider using `min_specialization` instead, which is more stable and complete
  = note: `#[warn(incomplete_features)]` on by default

warning: unused import: `arch::asm`
  --> examples/simple_rtic.rs:90:16
   |
90 |     use core::{arch::asm, hint::black_box};
   |                ^^^^^^^^^
   |
   = note: `#[warn(unused_imports)]` on by default

warning: unused import: `fugit::Duration`
  --> examples/simple_rtic.rs:92:9
   |
92 |     use fugit::Duration;
   |         ^^^^^^^^^^^^^^^

warning: unused import: `mwu::region::start`
  --> examples/simple_rtic.rs:96:15
   |
96 |         pac::{mwu::region::start, RTC0},
   |               ^^^^^^^^^^^^^^^^^^

warning: variable does not need to be mutable
   --> examples/simple_rtic.rs:122:13
    |
122 |     fn init(mut cx: init::Context) -> (Shared, Local, init::Monotonics) {
    |             ----^^
    |             |
    |             help: remove this `mut`
    |
    = note: `#[warn(unused_mut)]` on by default

warning: constant `FLASH_START` is never used
  --> examples/simple_rtic.rs:10:7
   |
10 | const FLASH_START: u32 = 0;
   |       ^^^^^^^^^^^
   |
   = note: `#[warn(dead_code)]` on by default

warning: constant `FLASH_END` is never used
  --> examples/simple_rtic.rs:11:7
   |
11 | const FLASH_END: u32 = 0;
   |       ^^^^^^^^^


simple_rtic:	file format elf32-littlearm

Disassembly of section .text:

00810000 <__stext>:
  810000: f000 f9f8    	bl	0x8103f4 <__pre_init>   @ imm = #0x3f0
  810004: 480e         	ldr	r0, [pc, #0x38]         @ 0x810040 <__stext+0x40>
  810006: 490f         	ldr	r1, [pc, #0x3c]         @ 0x810044 <__stext+0x44>
  810008: 2200         	movs	r2, #0x0
  81000a: 4281         	cmp	r1, r0
  81000c: d001         	beq	0x810012 <__stext+0x12> @ imm = #0x2
  81000e: c004         	stm	r0!, {r2}
  810010: e7fb         	b	0x81000a <__stext+0xa>  @ imm = #-0xa
  810012: 480d         	ldr	r0, [pc, #0x34]         @ 0x810048 <__stext+0x48>
  810014: 490d         	ldr	r1, [pc, #0x34]         @ 0x81004c <__stext+0x4c>
  810016: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x810050 <__stext+0x50>
  810018: 4281         	cmp	r1, r0
  81001a: d002         	beq	0x810022 <__stext+0x22> @ imm = #0x4
  81001c: ca08         	ldm	r2!, {r3}
  81001e: c008         	stm	r0!, {r3}
  810020: e7fa         	b	0x810018 <__stext+0x18> @ imm = #-0xc
  810022: 480c         	ldr	r0, [pc, #0x30]         @ 0x810054 <__stext+0x54>
  810024: f44f 0170    	mov.w	r1, #0xf00000
  810028: 6802         	ldr	r2, [r0]
  81002a: ea42 0201    	orr.w	r2, r2, r1
  81002e: 6002         	str	r2, [r0]
  810030: f3bf 8f4f    	dsb	sy
  810034: f3bf 8f6f    	isb	sy
  810038: f000 f8f9    	bl	0x81022e <main>         @ imm = #0x1f2
  81003c: de00         	udf	#0x0
  81003e: 0000         	movs	r0, r0
  810040: e8 ff 00 20  	.word	0x2000ffe8
  810044: ec ff 00 20  	.word	0x2000ffec
  810048: 24 05 81 00  	.word	0x00810524
  81004c: 24 05 81 00  	.word	0x00810524
  810050: f4 01 00 00  	.word	0x000001f4
  810054: 88 ed 00 e0  	.word	0xe000ed88

00810058 <core::hint::unreachable_unchecked::precondition_check::h23198cdb9b3c2147>:
  810058: b580         	push	{r7, lr}
  81005a: 466f         	mov	r7, sp
  81005c: f240 1000    	movw	r0, #0x100
  810060: 21c7         	movs	r1, #0xc7
  810062: f2c0 0000    	movt	r0, #0x0
  810066: f000 f9ec    	bl	0x810442 <core::panicking::panic_nounwind::he3c9001e38c1540a> @ imm = #0x3d8

0081006a <symex_lib::symbolic_size::h531315fccf7581ad>:
  81006a: b580         	push	{r7, lr}
  81006c: 466f         	mov	r7, sp
  81006e: b081         	sub	sp, #0x4
  810070: 6800         	ldr	r0, [r0]
  810072: 2004         	movs	r0, #0x4
  810074: 9000         	str	r0, [sp]
  810076: 9800         	ldr	r0, [sp]
  810078: b001         	add	sp, #0x4
  81007a: bd80         	pop	{r7, pc}

0081007c <symex_lib::symbolic::h29ecb6f892ecd26f>:
  81007c: b580         	push	{r7, lr}
  81007e: 466f         	mov	r7, sp
  810080: b081         	sub	sp, #0x4
  810082: 2104         	movs	r1, #0x4
  810084: 9100         	str	r1, [sp]
  810086: 9900         	ldr	r1, [sp]
  810088: b001         	add	sp, #0x4
  81008a: e8bd 4080    	pop.w	{r7, lr}
  81008e: f7ff bfec    	b.w	0x81006a <symex_lib::symbolic_size::h531315fccf7581ad> @ imm = #-0x28

00810092 <alloc>:
  810092: 2800         	cmp	r0, #0x0
  810094: bf18         	it	ne
  810096: f000 b814    	bne.w	0x8100c2 <simple_rtic::app::alloc_large::hc0a76a0bbf4b67ea> @ imm = #0x28
  81009a: 2900         	cmp	r1, #0x0
  81009c: bf08         	it	eq
  81009e: 4770         	bxeq	lr
  8100a0: b5d0         	push	{r4, r6, r7, lr}
  8100a2: af02         	add	r7, sp, #0x8
  8100a4: f5ad 7d02    	sub.w	sp, sp, #0x208
  8100a8: ac01         	add	r4, sp, #0x4
  8100aa: f44f 7100    	mov.w	r1, #0x200
  8100ae: 4620         	mov	r0, r4
  8100b0: f000 f9dd    	bl	0x81046e <__aeabi_memclr4> @ imm = #0x3ba
  8100b4: 9481         	str	r4, [sp, #0x204]
  8100b6: a881         	add	r0, sp, #0x204
  8100b8: f50d 7d02    	add.w	sp, sp, #0x208
  8100bc: e8bd 40d0    	pop.w	{r4, r6, r7, lr}
  8100c0: 4770         	bx	lr

008100c2 <simple_rtic::app::alloc_large::hc0a76a0bbf4b67ea>:
  8100c2: b5d0         	push	{r4, r6, r7, lr}
  8100c4: af02         	add	r7, sp, #0x8
  8100c6: f6ad 0d08    	subw	sp, sp, #0x808
  8100ca: ac01         	add	r4, sp, #0x4
  8100cc: f44f 6100    	mov.w	r1, #0x800
  8100d0: 4620         	mov	r0, r4
  8100d2: f000 f9cc    	bl	0x81046e <__aeabi_memclr4> @ imm = #0x398
  8100d6: f847 4c0c    	str	r4, [r7, #-12]
  8100da: f1a7 000c    	sub.w	r0, r7, #0xc
  8100de: f60d 0d08    	addw	sp, sp, #0x808
  8100e2: bdd0         	pop	{r4, r6, r7, pc}

008100e4 <TIMER0>:
  8100e4: b5d0         	push	{r4, r6, r7, lr}
  8100e6: af02         	add	r7, sp, #0x8
  8100e8: b082         	sub	sp, #0x8
  8100ea: f000 f98f    	bl	0x81040c <__basepri_r>  @ imm = #0x31e
  8100ee: 4604         	mov	r4, r0
  8100f0: 20a0         	movs	r0, #0xa0
  8100f2: f000 f98f    	bl	0x810414 <__basepri_w>  @ imm = #0x31e
  8100f6: f64f 70f0    	movw	r0, #0xfff0
  8100fa: f2c2 0000    	movt	r0, #0x2000
  8100fe: 9001         	str	r0, [sp, #0x4]
  810100: a801         	add	r0, sp, #0x4
  810102: 20c0         	movs	r0, #0xc0
  810104: f000 f986    	bl	0x810414 <__basepri_w>  @ imm = #0x30c
  810108: 4620         	mov	r0, r4
  81010a: f000 f983    	bl	0x810414 <__basepri_w>  @ imm = #0x306
  81010e: b002         	add	sp, #0x8
  810110: bdd0         	pop	{r4, r6, r7, pc}

00810112 <RTC1>:
  810112: b5b0         	push	{r4, r5, r7, lr}
  810114: af02         	add	r7, sp, #0x8
  810116: 20a0         	movs	r0, #0xa0
  810118: f000 f97c    	bl	0x810414 <__basepri_w>  @ imm = #0x2f8
  81011c: f64f 74f0    	movw	r4, #0xfff0
  810120: 20e0         	movs	r0, #0xe0
  810122: f2c2 0400    	movt	r4, #0x2000
  810126: 7825         	ldrb	r5, [r4]
  810128: f000 f974    	bl	0x810414 <__basepri_w>  @ imm = #0x2e8
  81012c: b985         	cbnz	r5, 0x810150 <RTC1+0x3e> @ imm = #0x20
  81012e: 20a0         	movs	r0, #0xa0
  810130: f000 f970    	bl	0x810414 <__basepri_w>  @ imm = #0x2e0
  810134: 20e0         	movs	r0, #0xe0
  810136: 7825         	ldrb	r5, [r4]
  810138: f000 f96c    	bl	0x810414 <__basepri_w>  @ imm = #0x2d8
  81013c: b945         	cbnz	r5, 0x810150 <RTC1+0x3e> @ imm = #0x10
  81013e: 20a0         	movs	r0, #0xa0
  810140: f000 f968    	bl	0x810414 <__basepri_w>  @ imm = #0x2d0
  810144: 20e0         	movs	r0, #0xe0
  810146: 7825         	ldrb	r5, [r4]
  810148: f000 f964    	bl	0x810414 <__basepri_w>  @ imm = #0x2c8
  81014c: 2d01         	cmp	r5, #0x1
  81014e: d10e         	bne	0x81016e <RTC1+0x5c>    @ imm = #0x1c
  810150: 20a0         	movs	r0, #0xa0
  810152: f000 f95f    	bl	0x810414 <__basepri_w>  @ imm = #0x2be
  810156: 2000         	movs	r0, #0x0
  810158: 7020         	strb	r0, [r4]
  81015a: 20e0         	movs	r0, #0xe0
  81015c: f000 f95a    	bl	0x810414 <__basepri_w>  @ imm = #0x2b4
  810160: f240 500c    	movw	r0, #0x50c
  810164: f44f 3100    	mov.w	r1, #0x20000
  810168: f2c5 0000    	movt	r0, #0x5000
  81016c: 6001         	str	r1, [r0]
  81016e: 2000         	movs	r0, #0x0
  810170: e8bd 40b0    	pop.w	{r4, r5, r7, lr}
  810174: f000 b94e    	b.w	0x810414 <__basepri_w>  @ imm = #0x29c

00810178 <GPIOTE>:
  810178: b5b0         	push	{r4, r5, r7, lr}
  81017a: af02         	add	r7, sp, #0x8
  81017c: b086         	sub	sp, #0x18
  81017e: f000 f945    	bl	0x81040c <__basepri_r>  @ imm = #0x28a
  810182: 4604         	mov	r4, r0
  810184: f24e 0018    	movw	r0, #0xe018
  810188: f2ce 0000    	movt	r0, #0xe000
  81018c: ad04         	add	r5, sp, #0x10
  81018e: 6800         	ldr	r0, [r0]
  810190: 9003         	str	r0, [sp, #0xc]
  810192: 9803         	ldr	r0, [sp, #0xc]
  810194: 9004         	str	r0, [sp, #0x10]
  810196: 4628         	mov	r0, r5
  810198: f7ff ff70    	bl	0x81007c <symex_lib::symbolic::h29ecb6f892ecd26f> @ imm = #-0x120
  81019c: 9500         	str	r5, [sp]
  81019e: 4668         	mov	r0, sp
  8101a0: f64f 70f0    	movw	r0, #0xfff0
  8101a4: 2200         	movs	r2, #0x0
  8101a6: f2c2 0000    	movt	r0, #0x2000
  8101aa: 7801         	ldrb	r1, [r0]
  8101ac: 7002         	strb	r2, [r0]
  8101ae: 2901         	cmp	r1, #0x1
  8101b0: d10f         	bne	0x8101d2 <GPIOTE+0x5a>  @ imm = #0x1e
  8101b2: f64f 70f8    	movw	r0, #0xfff8
  8101b6: a903         	add	r1, sp, #0xc
  8101b8: f2c2 0000    	movt	r0, #0x2000
  8101bc: 9100         	str	r1, [sp]
  8101be: 9003         	str	r0, [sp, #0xc]
  8101c0: 4669         	mov	r1, sp
  8101c2: 9000         	str	r0, [sp]
  8101c4: 4669         	mov	r1, sp
  8101c6: 9104         	str	r1, [sp, #0x10]
  8101c8: e9d0 0200    	ldrd	r0, r2, [r0]
  8101cc: e9cd 0200    	strd	r0, r2, [sp]
  8101d0: a804         	add	r0, sp, #0x10
  8101d2: 2001         	movs	r0, #0x1
  8101d4: 2100         	movs	r1, #0x0
  8101d6: f7ff ff5c    	bl	0x810092 <alloc>        @ imm = #-0x148
  8101da: 4620         	mov	r0, r4
  8101dc: f000 f91a    	bl	0x810414 <__basepri_w>  @ imm = #0x234
  8101e0: b006         	add	sp, #0x18
  8101e2: bdb0         	pop	{r4, r5, r7, pc}

008101e4 <RTC0>:
  8101e4: b5d0         	push	{r4, r6, r7, lr}
  8101e6: af02         	add	r7, sp, #0x8
  8101e8: f000 f90d    	bl	0x810406 <__primask_r>  @ imm = #0x21a
  8101ec: 4604         	mov	r4, r0
  8101ee: f000 f904    	bl	0x8103fa <__cpsid>      @ imm = #0x208
  8101f2: f64f 70e8    	movw	r0, #0xffe8
  8101f6: f2c2 0000    	movt	r0, #0x2000
  8101fa: 7800         	ldrb	r0, [r0]
  8101fc: b1a8         	cbz	r0, 0x81022a <RTC0+0x46> @ imm = #0x2a
  8101fe: f24b 1040    	movw	r0, #0xb140
  810202: 2100         	movs	r1, #0x0
  810204: f2c4 0000    	movt	r0, #0x4000
  810208: 6001         	str	r1, [r0]
  81020a: 07e0         	lsls	r0, r4, #0x1f
  81020c: bf08         	it	eq
  81020e: f000 f8f6    	bleq	0x8103fe <__cpsie>      @ imm = #0x1ec
  810212: f000 f8f8    	bl	0x810406 <__primask_r>  @ imm = #0x1f0
  810216: 4604         	mov	r4, r0
  810218: f000 f8ef    	bl	0x8103fa <__cpsid>      @ imm = #0x1de
  81021c: 07e0         	lsls	r0, r4, #0x1f
  81021e: bf18         	it	ne
  810220: bdd0         	popne	{r4, r6, r7, pc}
  810222: e8bd 40d0    	pop.w	{r4, r6, r7, lr}
  810226: f000 b8ea    	b.w	0x8103fe <__cpsie>      @ imm = #0x1d4
  81022a: f7ff ff15    	bl	0x810058 <core::hint::unreachable_unchecked::precondition_check::h23198cdb9b3c2147> @ imm = #-0x1d6

0081022e <main>:
  81022e: b580         	push	{r7, lr}
  810230: 466f         	mov	r7, sp
  810232: f000 f8e2    	bl	0x8103fa <__cpsid>      @ imm = #0x1c4
  810236: f64f 70ea    	movw	r0, #0xffea
  81023a: 2101         	movs	r1, #0x1
  81023c: f2c2 0000    	movt	r0, #0x2000
  810240: f44f 7280    	mov.w	r2, #0x100
  810244: 7001         	strb	r1, [r0]
  810246: f24e 4006    	movw	r0, #0xe406
  81024a: f2ce 0000    	movt	r0, #0xe000
  81024e: 21c0         	movs	r1, #0xc0
  810250: 7081         	strb	r1, [r0, #0x2]
  810252: f24e 1100    	movw	r1, #0xe100
  810256: f2ce 0100    	movt	r1, #0xe000
  81025a: 600a         	str	r2, [r1]
  81025c: 22e0         	movs	r2, #0xe0
  81025e: 72c2         	strb	r2, [r0, #0xb]
  810260: f44f 3200    	mov.w	r2, #0x20000
  810264: 600a         	str	r2, [r1]
  810266: 22a0         	movs	r2, #0xa0
  810268: 7002         	strb	r2, [r0]
  81026a: 2240         	movs	r2, #0x40
  81026c: 600a         	str	r2, [r1]
  81026e: 2200         	movs	r2, #0x0
  810270: 7142         	strb	r2, [r0, #0x5]
  810272: f44f 6000    	mov.w	r0, #0x800
  810276: 6008         	str	r0, [r1]
  810278: f000 f803    	bl	0x810282 <simple_rtic::app::rtic_ext::main::__rtic_init_resources::h48bccf5cee709e52> @ imm = #0x6
  81027c: f000 f8c1    	bl	0x810402 <__nop>        @ imm = #0x182
  810280: e7fc         	b	0x81027c <main+0x4e>    @ imm = #-0x8

00810282 <simple_rtic::app::rtic_ext::main::__rtic_init_resources::h48bccf5cee709e52>:
  810282: b5f0         	push	{r4, r5, r6, r7, lr}
  810284: af03         	add	r7, sp, #0xc
  810286: f84d bd04    	str	r11, [sp, #-4]!
  81028a: b086         	sub	sp, #0x18
  81028c: f64f 70e9    	movw	r0, #0xffe9
  810290: 2101         	movs	r1, #0x1
  810292: f2c2 0000    	movt	r0, #0x2000
  810296: 7001         	strb	r1, [r0]
  810298: f04f 4080    	mov.w	r0, #0x40000000
  81029c: 6001         	str	r1, [r0]
  81029e: f240 1000    	movw	r0, #0x100
  8102a2: f2c4 0000    	movt	r0, #0x4000
  8102a6: 6801         	ldr	r1, [r0]
  8102a8: 2901         	cmp	r1, #0x1
  8102aa: d008         	beq	0x8102be <simple_rtic::app::rtic_ext::main::__rtic_init_resources::h48bccf5cee709e52+0x3c> @ imm = #0x10
  8102ac: 6801         	ldr	r1, [r0]
  8102ae: 2901         	cmp	r1, #0x1
  8102b0: bf1c         	itt	ne
  8102b2: 6801         	ldrne	r1, [r0]
  8102b4: 2901         	cmpne	r1, #0x1
  8102b6: d002         	beq	0x8102be <simple_rtic::app::rtic_ext::main::__rtic_init_resources::h48bccf5cee709e52+0x3c> @ imm = #0x4
  8102b8: 6801         	ldr	r1, [r0]
  8102ba: 2901         	cmp	r1, #0x1
  8102bc: d1f3         	bne	0x8102a6 <simple_rtic::app::rtic_ext::main::__rtic_init_resources::h48bccf5cee709e52+0x24> @ imm = #-0x1a
  8102be: 2100         	movs	r1, #0x0
  8102c0: 6001         	str	r1, [r0]
  8102c2: 2101         	movs	r1, #0x1
  8102c4: f840 1cf8    	str	r1, [r0, #-248]
  8102c8: 6841         	ldr	r1, [r0, #0x4]
  8102ca: 2901         	cmp	r1, #0x1
  8102cc: d008         	beq	0x8102e0 <simple_rtic::app::rtic_ext::main::__rtic_init_resources::h48bccf5cee709e52+0x5e> @ imm = #0x10
  8102ce: 6841         	ldr	r1, [r0, #0x4]
  8102d0: 2901         	cmp	r1, #0x1
  8102d2: bf1c         	itt	ne
  8102d4: 6841         	ldrne	r1, [r0, #0x4]
  8102d6: 2901         	cmpne	r1, #0x1
  8102d8: d002         	beq	0x8102e0 <simple_rtic::app::rtic_ext::main::__rtic_init_resources::h48bccf5cee709e52+0x5e> @ imm = #0x4
  8102da: 6841         	ldr	r1, [r0, #0x4]
  8102dc: 2901         	cmp	r1, #0x1
  8102de: d1f3         	bne	0x8102c8 <simple_rtic::app::rtic_ext::main::__rtic_init_resources::h48bccf5cee709e52+0x46> @ imm = #-0x1a
  8102e0: 2500         	movs	r5, #0x0
  8102e2: f24b 0400    	movw	r4, #0xb000
  8102e6: 6045         	str	r5, [r0, #0x4]
  8102e8: f240 500c    	movw	r0, #0x50c
  8102ec: f2c4 0400    	movt	r4, #0x4000
  8102f0: f2c5 0000    	movt	r0, #0x5000
  8102f4: 210c         	movs	r1, #0xc
  8102f6: f8c4 5508    	str.w	r5, [r4, #0x508]
  8102fa: f8c0 1228    	str.w	r1, [r0, #0x228]
  8102fe: 210d         	movs	r1, #0xd
  810300: f807 1c22    	strb	r1, [r7, #-34]
  810304: f44f 3100    	mov.w	r1, #0x20000
  810308: 6001         	str	r1, [r0]
  81030a: 2103         	movs	r1, #0x3
  81030c: f8c0 1238    	str.w	r1, [r0, #0x238]
  810310: 2111         	movs	r1, #0x11
  810312: f807 1c21    	strb	r1, [r7, #-33]
  810316: f1a7 0121    	sub.w	r1, r7, #0x21
  81031a: 9103         	str	r1, [sp, #0xc]
  81031c: a903         	add	r1, sp, #0xc
  81031e: f1a7 0122    	sub.w	r1, r7, #0x22
  810322: 9104         	str	r1, [sp, #0x10]
  810324: a904         	add	r1, sp, #0x10
  810326: 2301         	movs	r3, #0x1
  810328: f817 1c22    	ldrb	r1, [r7, #-34]
  81032c: f2c0 0302    	movt	r3, #0x2
  810330: 2601         	movs	r6, #0x1
  810332: f001 023f    	and	r2, r1, #0x3f
  810336: ea43 2202    	orr.w	r2, r3, r2, lsl #8
  81033a: f246 3304    	movw	r3, #0x6304
  81033e: f2c4 0300    	movt	r3, #0x4000
  810342: f8c3 220c    	str.w	r2, [r3, #0x20c]
  810346: 068a         	lsls	r2, r1, #0x1a
  810348: f640 2200    	movw	r2, #0xa00
  81034c: 601e         	str	r6, [r3]
  81034e: f2c5 0200    	movt	r2, #0x5000
  810352: bf58         	it	pl
  810354: f500 72fa    	addpl.w	r2, r0, #0x1f4
  810358: f001 001f    	and	r0, r1, #0x1f
  81035c: ea42 0080    	orr.w	r0, r2, r0, lsl #2
  810360: 6801         	ldr	r1, [r0]
  810362: f441 3140    	orr	r1, r1, #0x30000
  810366: 6001         	str	r1, [r0]
  810368: f1a7 0011    	sub.w	r0, r7, #0x11
  81036c: 9002         	str	r0, [sp, #0x8]
  81036e: a802         	add	r0, sp, #0x8
  810370: f000 f833    	bl	0x8103da <nrf_hal_common::gpiote::GpiotePort::enable_interrupt::heb263600c8fcba4e> @ imm = #0x66
  810374: f241 3004    	movw	r0, #0x1304
  810378: f44f 3180    	mov.w	r1, #0x10000
  81037c: f2c4 0001    	movt	r0, #0x4001
  810380: f8c0 5204    	str.w	r5, [r0, #0x204]
  810384: 6001         	str	r1, [r0]
  810386: f44f 4100    	mov.w	r1, #0x8000
  81038a: f8c0 123c    	str.w	r1, [r0, #0x23c]
  81038e: f64f 70f8    	movw	r0, #0xfff8
  810392: f64b 61ef    	movw	r1, #0xbeef
  810396: f2c2 0000    	movt	r0, #0x2000
  81039a: f6cd 61ad    	movt	r1, #0xdead
  81039e: e9c0 1500    	strd	r1, r5, [r0]
  8103a2: 2002         	movs	r0, #0x2
  8103a4: f2c0 0001    	movt	r0, #0x1
  8103a8: f8c4 0304    	str.w	r0, [r4, #0x304]
  8103ac: f8c4 0344    	str.w	r0, [r4, #0x344]
  8103b0: f64f 70f0    	movw	r0, #0xfff0
  8103b4: f2c2 0000    	movt	r0, #0x2000
  8103b8: 7005         	strb	r5, [r0]
  8103ba: f64f 70e8    	movw	r0, #0xffe8
  8103be: f2c2 0000    	movt	r0, #0x2000
  8103c2: 60a6         	str	r6, [r4, #0x8]
  8103c4: 7006         	strb	r6, [r0]
  8103c6: 6026         	str	r6, [r4]
  8103c8: f000 f819    	bl	0x8103fe <__cpsie>      @ imm = #0x32
  8103cc: b006         	add	sp, #0x18
  8103ce: f85d bb04    	ldr	r11, [sp], #4
  8103d2: bdf0         	pop	{r4, r5, r6, r7, pc}

008103d4 <rust_begin_unwind>:
  8103d4: b580         	push	{r7, lr}
  8103d6: 466f         	mov	r7, sp
  8103d8: e7fe         	b	0x8103d8 <rust_begin_unwind+0x4> @ imm = #-0x4

008103da <nrf_hal_common::gpiote::GpiotePort::enable_interrupt::heb263600c8fcba4e>:
  8103da: b580         	push	{r7, lr}
  8103dc: 466f         	mov	r7, sp
  8103de: f246 3004    	movw	r0, #0x6304
  8103e2: f04f 4100    	mov.w	r1, #0x80000000
  8103e6: f2c4 0000    	movt	r0, #0x4000
  8103ea: 6001         	str	r1, [r0]
  8103ec: bd80         	pop	{r7, pc}

008103ee <WDT>:
  8103ee: b580         	push	{r7, lr}
  8103f0: 466f         	mov	r7, sp
  8103f2: e7fe         	b	0x8103f2 <WDT+0x4>      @ imm = #-0x4

008103f4 <__pre_init>:
  8103f4: b580         	push	{r7, lr}
  8103f6: 466f         	mov	r7, sp
  8103f8: bd80         	pop	{r7, pc}

008103fa <__cpsid>:
  8103fa: b672         	cpsid i
  8103fc: 4770         	bx	lr

008103fe <__cpsie>:
  8103fe: b662         	cpsie i
  810400: 4770         	bx	lr

00810402 <__nop>:
  810402: bf00         	nop
  810404: 4770         	bx	lr

00810406 <__primask_r>:
  810406: f3ef 8010    	mrs	r0, primask
  81040a: 4770         	bx	lr

0081040c <__basepri_r>:
  81040c: f3ef 8011    	mrs	r0, basepri
  810410: b2c0         	uxtb	r0, r0
  810412: 4770         	bx	lr

00810414 <__basepri_w>:
  810414: f380 8811    	msr	basepri, r0
  810418: 4770         	bx	lr

0081041a <core::panicking::panic_nounwind_fmt::hd0203095a875bf8c>:
  81041a: b580         	push	{r7, lr}
  81041c: 466f         	mov	r7, sp
  81041e: b08a         	sub	sp, #0x28
  810420: f10d 0c04    	add.w	r12, sp, #0x4
  810424: e890 4370    	ldm.w	r0, {r4, r5, r6, r8, r9, lr}
  810428: 2000         	movs	r0, #0x0
  81042a: 4663         	mov	r3, r12
  81042c: e883 4370    	stm.w	r3, {r4, r5, r6, r8, r9, lr}
  810430: f88d 0024    	strb.w	r0, [sp, #0x24]
  810434: a807         	add	r0, sp, #0x1c
  810436: f88d 1025    	strb.w	r1, [sp, #0x25]
  81043a: e9cd c207    	strd	r12, r2, [sp, #28]
  81043e: f7ff ffc9    	bl	0x8103d4 <rust_begin_unwind> @ imm = #-0x6e

00810442 <core::panicking::panic_nounwind::he3c9001e38c1540a>:
  810442: b580         	push	{r7, lr}
  810444: 466f         	mov	r7, sp
  810446: b088         	sub	sp, #0x20
  810448: 2200         	movs	r2, #0x0
  81044a: e9cd 0106    	strd	r0, r1, [sp, #24]
  81044e: 9204         	str	r2, [sp, #0x10]
  810450: 2301         	movs	r3, #0x1
  810452: 9203         	str	r2, [sp, #0xc]
  810454: 2204         	movs	r2, #0x4
  810456: 9202         	str	r2, [sp, #0x8]
  810458: f240 12e4    	movw	r2, #0x1e4
  81045c: f2c0 0200    	movt	r2, #0x0
  810460: 4668         	mov	r0, sp
  810462: 2100         	movs	r1, #0x0
  810464: 9301         	str	r3, [sp, #0x4]
  810466: ab06         	add	r3, sp, #0x18
  810468: 9300         	str	r3, [sp]
  81046a: f7ff ffd6    	bl	0x81041a <core::panicking::panic_nounwind_fmt::hd0203095a875bf8c> @ imm = #-0x54

0081046e <__aeabi_memclr4>:
  81046e: b580         	push	{r7, lr}
  810470: 466f         	mov	r7, sp
  810472: 2904         	cmp	r1, #0x4
  810474: d306         	blo	0x810484 <__aeabi_memclr4+0x16> @ imm = #0xc
  810476: f1a1 0c04    	sub.w	r12, r1, #0x4
  81047a: f00c 030c    	and	r3, r12, #0xc
  81047e: 2b0c         	cmp	r3, #0xc
  810480: d102         	bne	0x810488 <__aeabi_memclr4+0x1a> @ imm = #0x4
  810482: e018         	b	0x8104b6 <__aeabi_memclr4+0x48> @ imm = #0x30
  810484: 4602         	mov	r2, r0
  810486: e023         	b	0x8104d0 <__aeabi_memclr4+0x62> @ imm = #0x46
  810488: f04f 0e00    	mov.w	lr, #0x0
  81048c: 4602         	mov	r2, r0
  81048e: f842 eb04    	str	lr, [r2], #4
  810492: f01c 0f0c    	tst.w	r12, #0xc
  810496: d006         	beq	0x8104a6 <__aeabi_memclr4+0x38> @ imm = #0xc
  810498: 2b04         	cmp	r3, #0x4
  81049a: f8c0 e004    	str.w	lr, [r0, #0x4]
  81049e: d105         	bne	0x8104ac <__aeabi_memclr4+0x3e> @ imm = #0xa
  8104a0: 3908         	subs	r1, #0x8
  8104a2: 3008         	adds	r0, #0x8
  8104a4: e006         	b	0x8104b4 <__aeabi_memclr4+0x46> @ imm = #0xc
  8104a6: 4610         	mov	r0, r2
  8104a8: 4661         	mov	r1, r12
  8104aa: e004         	b	0x8104b6 <__aeabi_memclr4+0x48> @ imm = #0x8
  8104ac: 2200         	movs	r2, #0x0
  8104ae: 390c         	subs	r1, #0xc
  8104b0: 6082         	str	r2, [r0, #0x8]
  8104b2: 300c         	adds	r0, #0xc
  8104b4: 4602         	mov	r2, r0
  8104b6: f1bc 0f0c    	cmp.w	r12, #0xc
  8104ba: d309         	blo	0x8104d0 <__aeabi_memclr4+0x62> @ imm = #0x12
  8104bc: 2300         	movs	r3, #0x0
  8104be: 4602         	mov	r2, r0
  8104c0: 3910         	subs	r1, #0x10
  8104c2: e9c2 3300    	strd	r3, r3, [r2]
  8104c6: e9c2 3302    	strd	r3, r3, [r2, #8]
  8104ca: 3210         	adds	r2, #0x10
  8104cc: 2903         	cmp	r1, #0x3
  8104ce: d8f7         	bhi	0x8104c0 <__aeabi_memclr4+0x52> @ imm = #-0x12
  8104d0: 1850         	adds	r0, r2, r1
  8104d2: 4282         	cmp	r2, r0
  8104d4: d221         	bhs	0x81051a <__aeabi_memclr4+0xac> @ imm = #0x42
  8104d6: f1a1 0c01    	sub.w	r12, r1, #0x1
  8104da: f011 0303    	ands	r3, r1, #0x3
  8104de: d00c         	beq	0x8104fa <__aeabi_memclr4+0x8c> @ imm = #0x18
  8104e0: f04f 0e00    	mov.w	lr, #0x0
  8104e4: 4611         	mov	r1, r2
  8104e6: f801 eb01    	strb	lr, [r1], #1
  8104ea: 2b01         	cmp	r3, #0x1
  8104ec: d00a         	beq	0x810504 <__aeabi_memclr4+0x96> @ imm = #0x14
  8104ee: 2b02         	cmp	r3, #0x2
  8104f0: f882 e001    	strb.w	lr, [r2, #0x1]
  8104f4: d103         	bne	0x8104fe <__aeabi_memclr4+0x90> @ imm = #0x6
  8104f6: 1c91         	adds	r1, r2, #0x2
  8104f8: e004         	b	0x810504 <__aeabi_memclr4+0x96> @ imm = #0x8
  8104fa: 4611         	mov	r1, r2
  8104fc: e002         	b	0x810504 <__aeabi_memclr4+0x96> @ imm = #0x4
  8104fe: 2100         	movs	r1, #0x0
  810500: 7091         	strb	r1, [r2, #0x2]
  810502: 1cd1         	adds	r1, r2, #0x3
  810504: f1bc 0f03    	cmp.w	r12, #0x3
  810508: bf38         	it	lo
  81050a: bd80         	poplo	{r7, pc}
  81050c: 3904         	subs	r1, #0x4
  81050e: 2200         	movs	r2, #0x0
  810510: f841 2f04    	str	r2, [r1, #4]!
  810514: 1d0b         	adds	r3, r1, #0x4
  810516: 4283         	cmp	r3, r0
  810518: d1fa         	bne	0x810510 <__aeabi_memclr4+0xa2> @ imm = #-0xc
  81051a: bd80         	pop	{r7, pc}

0081051c <HardFault_>:
  81051c: b580         	push	{r7, lr}
  81051e: 466f         	mov	r7, sp
  810520: e7fe         	b	0x810520 <HardFault_+0x4> @ imm = #-0x4
  810522: d4d4         	bmi	0x8104ce <__aeabi_memclr4+0x60> @ imm = #-0x58
