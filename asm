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
   --> examples/simple_rtic.rs:114:23
    |
114 |     fn button_handler(mut ctx: button_handler::Context) {
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
   --> examples/simple_rtic.rs:116:13
    |
116 |             ctx.local.led.set_high();
    |             ^^^^^^^^^^^^^^^^^^^^^^^^
    |
    = note: this `Result` may be an `Err` variant, which should be handled
    = note: `#[warn(unused_must_use)]` on by default
help: use `let _ = ...` to ignore the resulting value
    |
116 |             let _ = ctx.local.led.set_high();
    |             +++++++

warning: unused `Result` that must be used
   --> examples/simple_rtic.rs:118:13
    |
118 |             ctx.local.led.set_low();
    |             ^^^^^^^^^^^^^^^^^^^^^^^
    |
    = note: this `Result` may be an `Err` variant, which should be handled
help: use `let _ = ...` to ignore the resulting value
    |
118 |             let _ = ctx.local.led.set_low();
    |             +++++++

warning: 10 warnings emitted


simple_rtic:	file format elf32-littlearm

Disassembly of section .text.<&T as core::fmt::Display>::fmt::h06238c7cf6be1943:

00000530 <<&T as core::fmt::Display>::fmt::h06238c7cf6be1943>:
     530: b580         	push	{r7, lr}
     532: af00         	add	r7, sp, #0x0
     534: 6800         	ldr	r0, [r0]
     536: f000 fba5    	bl	0xc84 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d> @ imm = #0x74a
     53a: bd80         	pop	{r7, pc}

Disassembly of section .text.rust_begin_unwind:

0000053c <rust_begin_unwind>:
     53c: b580         	push	{r7, lr}
     53e: af00         	add	r7, sp, #0x0
     540: b084         	sub	sp, #0x10
     542: 4604         	mov	r4, r0
     544: f000 fb95    	bl	0xc72 <__cpsid>         @ imm = #0x72a
     548: 480c         	ldr	r0, [pc, #0x30]         @ 0x57c <rust_begin_unwind+0x40>
     54a: 7801         	ldrb	r1, [r0]
     54c: 2900         	cmp	r1, #0x0
     54e: d112         	bne	0x576 <rust_begin_unwind+0x3a> @ imm = #0x24
     550: 2101         	movs	r1, #0x1
     552: 7001         	strb	r1, [r0]
     554: 9401         	str	r4, [sp, #0x4]
     556: a802         	add	r0, sp, #0x8
     558: 4909         	ldr	r1, [pc, #0x24]         @ 0x580 <rust_begin_unwind+0x44>
     55a: 8001         	strh	r1, [r0]
     55c: f000 fb70    	bl	0xc40 <defmt::export::acquire_and_header::h080bb0e499be80ab> @ imm = #0x6e0
     560: a803         	add	r0, sp, #0xc
     562: 4908         	ldr	r1, [pc, #0x20]         @ 0x584 <rust_begin_unwind+0x48>
     564: 8001         	strh	r1, [r0]
     566: f000 fb39    	bl	0xbdc <defmt::export::integers::u16::h07cb8f4119a81b4d> @ imm = #0x672
     56a: a801         	add	r0, sp, #0x4
     56c: 4906         	ldr	r1, [pc, #0x18]         @ 0x588 <rust_begin_unwind+0x4c>
     56e: f000 fb41    	bl	0xbf4 <defmt::export::display::h109791eaa56d2681> @ imm = #0x682
     572: f000 fa15    	bl	0x9a0 <_defmt_release>  @ imm = #0x42a
     576: f000 f809    	bl	0x58c <panic_probe::hard_fault::h1fddc09337beef9a> @ imm = #0x12
     57a: 46c0         	mov	r8, r8
     57c: a4 1d 00 00  	.word	0x00001da4
     580: 02 00 00 00  	.word	0x00000002
     584: 01 00 00 00  	.word	0x00000001
     588: 10 00 00 00  	.word	0x00000010

Disassembly of section .text.panic_probe::hard_fault::h1fddc09337beef9a:

0000058c <panic_probe::hard_fault::h1fddc09337beef9a>:
     58c: b580         	push	{r7, lr}
     58e: af00         	add	r7, sp, #0x0
     590: f000 fb76    	bl	0xc80 <__udf>           @ imm = #0x6ec

Disassembly of section .text.defmt_rtt::channel::Channel::blocking_write::h7c713543f7c1e69f:

00000594 <defmt_rtt::channel::Channel::blocking_write::h7c713543f7c1e69f>:
     594: b5f0         	push	{r4, r5, r6, r7, lr}
     596: af03         	add	r7, sp, #0xc
     598: b081         	sub	sp, #0x4
     59a: 4604         	mov	r4, r0
     59c: 2000         	movs	r0, #0x0
     59e: 2a00         	cmp	r2, #0x0
     5a0: d01c         	beq	0x5dc <defmt_rtt::channel::Channel::blocking_write::h7c713543f7c1e69f+0x48> @ imm = #0x38
     5a2: 6926         	ldr	r6, [r4, #0x10]
     5a4: 68e3         	ldr	r3, [r4, #0xc]
     5a6: f3bf 8f5f    	dmb	sy
     5aa: 429e         	cmp	r6, r3
     5ac: d901         	bls	0x5b2 <defmt_rtt::channel::Channel::blocking_write::h7c713543f7c1e69f+0x1e> @ imm = #0x2
     5ae: 43dd         	mvns	r5, r3
     5b0: e00d         	b	0x5ce <defmt_rtt::channel::Channel::blocking_write::h7c713543f7c1e69f+0x3a> @ imm = #0x1a
     5b2: 2501         	movs	r5, #0x1
     5b4: 02ad         	lsls	r5, r5, #0xa
     5b6: 2e00         	cmp	r6, #0x0
     5b8: d005         	beq	0x5c6 <defmt_rtt::channel::Channel::blocking_write::h7c713543f7c1e69f+0x32> @ imm = #0xa
     5ba: 429d         	cmp	r5, r3
     5bc: d313         	blo	0x5e6 <defmt_rtt::channel::Channel::blocking_write::h7c713543f7c1e69f+0x52> @ imm = #0x26
     5be: 1aed         	subs	r5, r5, r3
     5c0: 2d00         	cmp	r5, #0x0
     5c2: d107         	bne	0x5d4 <defmt_rtt::channel::Channel::blocking_write::h7c713543f7c1e69f+0x40> @ imm = #0xe
     5c4: e00a         	b	0x5dc <defmt_rtt::channel::Channel::blocking_write::h7c713543f7c1e69f+0x48> @ imm = #0x14
     5c6: 429d         	cmp	r5, r3
     5c8: d30a         	blo	0x5e0 <defmt_rtt::channel::Channel::blocking_write::h7c713543f7c1e69f+0x4c> @ imm = #0x14
     5ca: d009         	beq	0x5e0 <defmt_rtt::channel::Channel::blocking_write::h7c713543f7c1e69f+0x4c> @ imm = #0x12
     5cc: 43de         	mvns	r6, r3
     5ce: 1975         	adds	r5, r6, r5
     5d0: 2d00         	cmp	r5, #0x0
     5d2: d003         	beq	0x5dc <defmt_rtt::channel::Channel::blocking_write::h7c713543f7c1e69f+0x48> @ imm = #0x6
     5d4: 9500         	str	r5, [sp]
     5d6: 4620         	mov	r0, r4
     5d8: f000 f81a    	bl	0x610 <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b> @ imm = #0x34
     5dc: b001         	add	sp, #0x4
     5de: bdf0         	pop	{r4, r5, r6, r7, pc}
     5e0: 4803         	ldr	r0, [pc, #0xc]          @ 0x5f0 <defmt_rtt::channel::Channel::blocking_write::h7c713543f7c1e69f+0x5c>
     5e2: f001 f933    	bl	0x184c <core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0> @ imm = #0x1266
     5e6: 4801         	ldr	r0, [pc, #0x4]          @ 0x5ec <defmt_rtt::channel::Channel::blocking_write::h7c713543f7c1e69f+0x58>
     5e8: f001 f930    	bl	0x184c <core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0> @ imm = #0x1260
     5ec: 20 00 00 00  	.word	0x00000020
     5f0: 30 02 00 00  	.word	0x00000230

Disassembly of section .text.defmt_rtt::channel::Channel::nonblocking_write::hd7f796be70218fb8:

000005f4 <defmt_rtt::channel::Channel::nonblocking_write::hd7f796be70218fb8>:
     5f4: b5d0         	push	{r4, r6, r7, lr}
     5f6: af02         	add	r7, sp, #0x8
     5f8: b082         	sub	sp, #0x8
     5fa: 68c3         	ldr	r3, [r0, #0xc]
     5fc: f3bf 8f5f    	dmb	sy
     600: 2401         	movs	r4, #0x1
     602: 02a4         	lsls	r4, r4, #0xa
     604: 9400         	str	r4, [sp]
     606: f000 f803    	bl	0x610 <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b> @ imm = #0x6
     60a: b002         	add	sp, #0x8
     60c: bdd0         	pop	{r4, r6, r7, pc}

Disassembly of section .text.defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b:

00000610 <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b>:
     610: b5f0         	push	{r4, r5, r6, r7, lr}
     612: af03         	add	r7, sp, #0xc
     614: b083         	sub	sp, #0xc
     616: 4614         	mov	r4, r2
     618: 4606         	mov	r6, r0
     61a: 68b8         	ldr	r0, [r7, #0x8]
     61c: 4282         	cmp	r2, r0
     61e: d300         	blo	0x622 <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0x12> @ imm = #0x0
     620: 4604         	mov	r4, r0
     622: 2000         	movs	r0, #0x0
     624: 191d         	adds	r5, r3, r4
     626: 4140         	adcs	r0, r0
     628: 429d         	cmp	r5, r3
     62a: d341         	blo	0x6b0 <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0xa0> @ imm = #0x82
     62c: 2001         	movs	r0, #0x1
     62e: 0280         	lsls	r0, r0, #0xa
     630: 4285         	cmp	r5, r0
     632: 9002         	str	r0, [sp, #0x8]
     634: d923         	bls	0x67e <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0x6e> @ imm = #0x46
     636: 4298         	cmp	r0, r3
     638: d33d         	blo	0x6b6 <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0xa6> @ imm = #0x7a
     63a: 9601         	str	r6, [sp, #0x4]
     63c: 6870         	ldr	r0, [r6, #0x4]
     63e: 2800         	cmp	r0, #0x0
     640: d032         	beq	0x6a8 <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0x98> @ imm = #0x64
     642: 9a02         	ldr	r2, [sp, #0x8]
     644: 1ad6         	subs	r6, r2, r3
     646: 18c0         	adds	r0, r0, r3
     648: 1a0a         	subs	r2, r1, r0
     64a: d200         	bhs	0x64e <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0x3e> @ imm = #0x0
     64c: 1a42         	subs	r2, r0, r1
     64e: 42b2         	cmp	r2, r6
     650: d32a         	blo	0x6a8 <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0x98> @ imm = #0x54
     652: 9100         	str	r1, [sp]
     654: 4632         	mov	r2, r6
     656: f000 fa49    	bl	0xaec <__aeabi_memcpy>  @ imm = #0x492
     65a: 42b4         	cmp	r4, r6
     65c: d32e         	blo	0x6bc <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0xac> @ imm = #0x5c
     65e: 9801         	ldr	r0, [sp, #0x4]
     660: 6840         	ldr	r0, [r0, #0x4]
     662: 2800         	cmp	r0, #0x0
     664: d020         	beq	0x6a8 <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0x98> @ imm = #0x40
     666: 9900         	ldr	r1, [sp]
     668: 1989         	adds	r1, r1, r6
     66a: 1ba2         	subs	r2, r4, r6
     66c: 1a0b         	subs	r3, r1, r0
     66e: d200         	bhs	0x672 <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0x62> @ imm = #0x0
     670: 1a43         	subs	r3, r0, r1
     672: 4293         	cmp	r3, r2
     674: d318         	blo	0x6a8 <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0x98> @ imm = #0x30
     676: f000 fa39    	bl	0xaec <__aeabi_memcpy>  @ imm = #0x472
     67a: 9e01         	ldr	r6, [sp, #0x4]
     67c: e00b         	b	0x696 <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0x86> @ imm = #0x16
     67e: 6870         	ldr	r0, [r6, #0x4]
     680: 2800         	cmp	r0, #0x0
     682: d011         	beq	0x6a8 <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0x98> @ imm = #0x22
     684: 18c0         	adds	r0, r0, r3
     686: 1a0a         	subs	r2, r1, r0
     688: d200         	bhs	0x68c <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0x7c> @ imm = #0x0
     68a: 1a42         	subs	r2, r0, r1
     68c: 42a2         	cmp	r2, r4
     68e: d30b         	blo	0x6a8 <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0x98> @ imm = #0x16
     690: 4622         	mov	r2, r4
     692: f000 fa2b    	bl	0xaec <__aeabi_memcpy>  @ imm = #0x456
     696: 9802         	ldr	r0, [sp, #0x8]
     698: 1e40         	subs	r0, r0, #0x1
     69a: 4005         	ands	r5, r0
     69c: f3bf 8f5f    	dmb	sy
     6a0: 60f5         	str	r5, [r6, #0xc]
     6a2: 4620         	mov	r0, r4
     6a4: b003         	add	sp, #0xc
     6a6: bdf0         	pop	{r4, r5, r6, r7, pc}
     6a8: 4806         	ldr	r0, [pc, #0x18]         @ 0x6c4 <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0xb4>
     6aa: 21a6         	movs	r1, #0xa6
     6ac: f000 fb5a    	bl	0xd64 <core::panicking::panic_nounwind::h8ba64b62f651a9d5> @ imm = #0x6b4
     6b0: 4807         	ldr	r0, [pc, #0x1c]         @ 0x6d0 <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0xc0>
     6b2: f001 f8b9    	bl	0x1828 <core::panicking::panic_const::panic_const_add_overflow::hf5cb0614de41d6eb> @ imm = #0x1172
     6b6: 4805         	ldr	r0, [pc, #0x14]         @ 0x6cc <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0xbc>
     6b8: f001 f8c8    	bl	0x184c <core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0> @ imm = #0x1190
     6bc: 4802         	ldr	r0, [pc, #0x8]          @ 0x6c8 <defmt_rtt::channel::Channel::write_impl::h3f0e6bdbeb47eb5b+0xb8>
     6be: f001 f8c5    	bl	0x184c <core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0> @ imm = #0x118a
     6c2: 46c0         	mov	r8, r8
     6c4: 48 00 00 00  	.word	0x00000048
     6c8: 20 02 00 00  	.word	0x00000220
     6cc: 0c 02 00 00  	.word	0x0000020c
     6d0: fc 01 00 00  	.word	0x000001fc

Disassembly of section .text.<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0:

000006d4 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0>:
     6d4: b5f0         	push	{r4, r5, r6, r7, lr}
     6d6: af03         	add	r7, sp, #0xc
     6d8: b083         	sub	sp, #0xc
     6da: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x78c <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0xb8>
     6dc: 78d0         	ldrb	r0, [r2, #0x3]
     6de: 2800         	cmp	r0, #0x0
     6e0: d032         	beq	0x748 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0x74> @ imm = #0x64
     6e2: 2807         	cmp	r0, #0x7
     6e4: d210         	bhs	0x708 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0x34> @ imm = #0x20
     6e6: 2100         	movs	r1, #0x0
     6e8: 43c9         	mvns	r1, r1
     6ea: 4081         	lsls	r1, r0
     6ec: 7910         	ldrb	r0, [r2, #0x4]
     6ee: 4308         	orrs	r0, r1
     6f0: 217f         	movs	r1, #0x7f
     6f2: 4001         	ands	r1, r0
     6f4: 4668         	mov	r0, sp
     6f6: 7001         	strb	r1, [r0]
     6f8: 4c25         	ldr	r4, [pc, #0x94]         @ 0x790 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0xbc>
     6fa: 6ae0         	ldr	r0, [r4, #0x2c]
     6fc: 2103         	movs	r1, #0x3
     6fe: 4001         	ands	r1, r0
     700: 2902         	cmp	r1, #0x2
     702: d00e         	beq	0x722 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0x4e> @ imm = #0x1c
     704: 4d24         	ldr	r5, [pc, #0x90]         @ 0x798 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0xc4>
     706: e00d         	b	0x724 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0x50> @ imm = #0x1a
     708: 3079         	adds	r0, #0x79
     70a: 2180         	movs	r1, #0x80
     70c: 4301         	orrs	r1, r0
     70e: a801         	add	r0, sp, #0x4
     710: 7001         	strb	r1, [r0]
     712: 4c1f         	ldr	r4, [pc, #0x7c]         @ 0x790 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0xbc>
     714: 6ae0         	ldr	r0, [r4, #0x2c]
     716: 2103         	movs	r1, #0x3
     718: 4001         	ands	r1, r0
     71a: 2902         	cmp	r1, #0x2
     71c: d00a         	beq	0x734 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0x60> @ imm = #0x14
     71e: 4d1e         	ldr	r5, [pc, #0x78]         @ 0x798 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0xc4>
     720: e009         	b	0x736 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0x62> @ imm = #0x12
     722: 4d1c         	ldr	r5, [pc, #0x70]         @ 0x794 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0xc0>
     724: 3418         	adds	r4, #0x18
     726: 4669         	mov	r1, sp
     728: 2201         	movs	r2, #0x1
     72a: 4620         	mov	r0, r4
     72c: 47a8         	blx	r5
     72e: 2800         	cmp	r0, #0x0
     730: d0f9         	beq	0x726 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0x52> @ imm = #-0xe
     732: e007         	b	0x744 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0x70> @ imm = #0xe
     734: 4d17         	ldr	r5, [pc, #0x5c]         @ 0x794 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0xc0>
     736: 3418         	adds	r4, #0x18
     738: a901         	add	r1, sp, #0x4
     73a: 2201         	movs	r2, #0x1
     73c: 4620         	mov	r0, r4
     73e: 47a8         	blx	r5
     740: 2800         	cmp	r0, #0x0
     742: d0f9         	beq	0x738 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0x64> @ imm = #-0xe
     744: 2801         	cmp	r0, #0x1
     746: d11d         	bne	0x784 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0xb0> @ imm = #0x3a
     748: a802         	add	r0, sp, #0x8
     74a: 2600         	movs	r6, #0x0
     74c: 7006         	strb	r6, [r0]
     74e: 4c10         	ldr	r4, [pc, #0x40]         @ 0x790 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0xbc>
     750: 6ae0         	ldr	r0, [r4, #0x2c]
     752: 2103         	movs	r1, #0x3
     754: 4001         	ands	r1, r0
     756: 2902         	cmp	r1, #0x2
     758: d001         	beq	0x75e <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0x8a> @ imm = #0x2
     75a: 4d0f         	ldr	r5, [pc, #0x3c]         @ 0x798 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0xc4>
     75c: e000         	b	0x760 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0x8c> @ imm = #0x0
     75e: 4d0d         	ldr	r5, [pc, #0x34]         @ 0x794 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0xc0>
     760: 3418         	adds	r4, #0x18
     762: a902         	add	r1, sp, #0x8
     764: 2201         	movs	r2, #0x1
     766: 4620         	mov	r0, r4
     768: 47a8         	blx	r5
     76a: 2800         	cmp	r0, #0x0
     76c: d0f9         	beq	0x762 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0x8e> @ imm = #-0xe
     76e: 2801         	cmp	r0, #0x1
     770: d108         	bne	0x784 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0xb0> @ imm = #0x10
     772: 4806         	ldr	r0, [pc, #0x18]         @ 0x78c <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0xb8>
     774: 7106         	strb	r6, [r0, #0x4]
     776: 70c6         	strb	r6, [r0, #0x3]
     778: 7006         	strb	r6, [r0]
     77a: 7840         	ldrb	r0, [r0, #0x1]
     77c: f000 f99c    	bl	0xab8 <_critical_section_1_0_release> @ imm = #0x338
     780: b003         	add	sp, #0xc
     782: bdf0         	pop	{r4, r5, r6, r7, pc}
     784: 2101         	movs	r1, #0x1
     786: 4a05         	ldr	r2, [pc, #0x14]         @ 0x79c <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0+0xc8>
     788: f000 fdf6    	bl	0x1378 <core::slice::index::slice_start_index_len_fail::h0143d39f27fb17b8> @ imm = #0xbec
     78c: a5 1d 00 00  	.word	0x00001da5
     790: 74 19 00 00  	.word	0x00001974
     794: 95 05 00 00  	.word	0x00000595
     798: f5 05 00 00  	.word	0x000005f5
     79c: e4 01 00 00  	.word	0x000001e4

Disassembly of section .text.<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661:

000007a0 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661>:
     7a0: b5f0         	push	{r4, r5, r6, r7, lr}
     7a2: af03         	add	r7, sp, #0xc
     7a4: b089         	sub	sp, #0x24
     7a6: 2900         	cmp	r1, #0x0
     7a8: d100         	bne	0x7ac <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0xc> @ imm = #0x0
     7aa: e099         	b	0x8e0 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x140> @ imm = #0x132
     7ac: 4605         	mov	r5, r0
     7ae: 1840         	adds	r0, r0, r1
     7b0: 9002         	str	r0, [sp, #0x8]
     7b2: 4c51         	ldr	r4, [pc, #0x144]        @ 0x8f8 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x158>
     7b4: 78e0         	ldrb	r0, [r4, #0x3]
     7b6: 4e51         	ldr	r6, [pc, #0x144]        @ 0x8fc <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x15c>
     7b8: e005         	b	0x7c6 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x26> @ imm = #0xa
     7ba: 9d03         	ldr	r5, [sp, #0xc]
     7bc: 1c6d         	adds	r5, r5, #0x1
     7be: 9902         	ldr	r1, [sp, #0x8]
     7c0: 428d         	cmp	r5, r1
     7c2: d100         	bne	0x7c6 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x26> @ imm = #0x0
     7c4: e08c         	b	0x8e0 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x140> @ imm = #0x118
     7c6: 7829         	ldrb	r1, [r5]
     7c8: b2c2         	uxtb	r2, r0
     7ca: 2a07         	cmp	r2, #0x7
     7cc: 9503         	str	r5, [sp, #0xc]
     7ce: d216         	bhs	0x7fe <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x5e> @ imm = #0x2c
     7d0: 2900         	cmp	r1, #0x0
     7d2: d047         	beq	0x864 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0xc4> @ imm = #0x8e
     7d4: a804         	add	r0, sp, #0x10
     7d6: 7001         	strb	r1, [r0]
     7d8: 6af0         	ldr	r0, [r6, #0x2c]
     7da: 2103         	movs	r1, #0x3
     7dc: 4001         	ands	r1, r0
     7de: 2902         	cmp	r1, #0x2
     7e0: 4c47         	ldr	r4, [pc, #0x11c]        @ 0x900 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x160>
     7e2: d000         	beq	0x7e6 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x46> @ imm = #0x0
     7e4: 4c47         	ldr	r4, [pc, #0x11c]        @ 0x904 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x164>
     7e6: 4630         	mov	r0, r6
     7e8: 3018         	adds	r0, #0x18
     7ea: a904         	add	r1, sp, #0x10
     7ec: 2201         	movs	r2, #0x1
     7ee: 47a0         	blx	r4
     7f0: 2800         	cmp	r0, #0x0
     7f2: d0f8         	beq	0x7e6 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x46> @ imm = #-0x10
     7f4: 2801         	cmp	r0, #0x1
     7f6: d175         	bne	0x8e4 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x144> @ imm = #0xea
     7f8: 4c3f         	ldr	r4, [pc, #0xfc]         @ 0x8f8 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x158>
     7fa: 78e0         	ldrb	r0, [r4, #0x3]
     7fc: e037         	b	0x86e <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0xce> @ imm = #0x6e
     7fe: 2900         	cmp	r1, #0x0
     800: d054         	beq	0x8ac <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x10c> @ imm = #0xa8
     802: a807         	add	r0, sp, #0x1c
     804: 7001         	strb	r1, [r0]
     806: 6af0         	ldr	r0, [r6, #0x2c]
     808: 2103         	movs	r1, #0x3
     80a: 9101         	str	r1, [sp, #0x4]
     80c: 4008         	ands	r0, r1
     80e: 2802         	cmp	r0, #0x2
     810: 4c3b         	ldr	r4, [pc, #0xec]         @ 0x900 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x160>
     812: d000         	beq	0x816 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x76> @ imm = #0x0
     814: 4c3b         	ldr	r4, [pc, #0xec]         @ 0x904 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x164>
     816: 4635         	mov	r5, r6
     818: 3518         	adds	r5, #0x18
     81a: a907         	add	r1, sp, #0x1c
     81c: 2201         	movs	r2, #0x1
     81e: 4628         	mov	r0, r5
     820: 47a0         	blx	r4
     822: 2800         	cmp	r0, #0x0
     824: d0f7         	beq	0x816 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x76> @ imm = #-0x12
     826: 2801         	cmp	r0, #0x1
     828: d15c         	bne	0x8e4 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x144> @ imm = #0xb8
     82a: 4c33         	ldr	r4, [pc, #0xcc]         @ 0x8f8 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x158>
     82c: 78e0         	ldrb	r0, [r4, #0x3]
     82e: 1c40         	adds	r0, r0, #0x1
     830: b2c1         	uxtb	r1, r0
     832: 1a0a         	subs	r2, r1, r0
     834: 1e53         	subs	r3, r2, #0x1
     836: 419a         	sbcs	r2, r3
     838: 4281         	cmp	r1, r0
     83a: d15a         	bne	0x8f2 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x152> @ imm = #0xb4
     83c: 70e0         	strb	r0, [r4, #0x3]
     83e: 2986         	cmp	r1, #0x86
     840: d1bb         	bne	0x7ba <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x1a> @ imm = #-0x8a
     842: a808         	add	r0, sp, #0x20
     844: 21ff         	movs	r1, #0xff
     846: 7001         	strb	r1, [r0]
     848: 6af0         	ldr	r0, [r6, #0x2c]
     84a: 9901         	ldr	r1, [sp, #0x4]
     84c: 4008         	ands	r0, r1
     84e: 2802         	cmp	r0, #0x2
     850: 4c2b         	ldr	r4, [pc, #0xac]         @ 0x900 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x160>
     852: d000         	beq	0x856 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0xb6> @ imm = #0x0
     854: 4c2b         	ldr	r4, [pc, #0xac]         @ 0x904 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x164>
     856: a908         	add	r1, sp, #0x20
     858: 2201         	movs	r2, #0x1
     85a: 4628         	mov	r0, r5
     85c: 47a0         	blx	r4
     85e: 2800         	cmp	r0, #0x0
     860: d0f9         	beq	0x856 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0xb6> @ imm = #-0xe
     862: e036         	b	0x8d2 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x132> @ imm = #0x6c
     864: 2101         	movs	r1, #0x1
     866: 4091         	lsls	r1, r2
     868: 7922         	ldrb	r2, [r4, #0x4]
     86a: 430a         	orrs	r2, r1
     86c: 7122         	strb	r2, [r4, #0x4]
     86e: b2c0         	uxtb	r0, r0
     870: 1c40         	adds	r0, r0, #0x1
     872: b2c1         	uxtb	r1, r0
     874: 1a0a         	subs	r2, r1, r0
     876: 1e53         	subs	r3, r2, #0x1
     878: 419a         	sbcs	r2, r3
     87a: 4281         	cmp	r1, r0
     87c: d136         	bne	0x8ec <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x14c> @ imm = #0x6c
     87e: 70e0         	strb	r0, [r4, #0x3]
     880: 2907         	cmp	r1, #0x7
     882: d19a         	bne	0x7ba <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x1a> @ imm = #-0xcc
     884: 7921         	ldrb	r1, [r4, #0x4]
     886: 2900         	cmp	r1, #0x0
     888: d097         	beq	0x7ba <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x1a> @ imm = #-0xd2
     88a: a805         	add	r0, sp, #0x14
     88c: 7001         	strb	r1, [r0]
     88e: 6af0         	ldr	r0, [r6, #0x2c]
     890: 2103         	movs	r1, #0x3
     892: 4001         	ands	r1, r0
     894: 2902         	cmp	r1, #0x2
     896: 4c1a         	ldr	r4, [pc, #0x68]         @ 0x900 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x160>
     898: d000         	beq	0x89c <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0xfc> @ imm = #0x0
     89a: 4c1a         	ldr	r4, [pc, #0x68]         @ 0x904 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x164>
     89c: 4630         	mov	r0, r6
     89e: 3018         	adds	r0, #0x18
     8a0: a905         	add	r1, sp, #0x14
     8a2: 2201         	movs	r2, #0x1
     8a4: 47a0         	blx	r4
     8a6: 2800         	cmp	r0, #0x0
     8a8: d0f8         	beq	0x89c <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0xfc> @ imm = #-0x10
     8aa: e012         	b	0x8d2 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x132> @ imm = #0x24
     8ac: 3079         	adds	r0, #0x79
     8ae: 2180         	movs	r1, #0x80
     8b0: 4301         	orrs	r1, r0
     8b2: a806         	add	r0, sp, #0x18
     8b4: 7001         	strb	r1, [r0]
     8b6: 6af0         	ldr	r0, [r6, #0x2c]
     8b8: 2103         	movs	r1, #0x3
     8ba: 4001         	ands	r1, r0
     8bc: 2902         	cmp	r1, #0x2
     8be: 4c10         	ldr	r4, [pc, #0x40]         @ 0x900 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x160>
     8c0: d000         	beq	0x8c4 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x124> @ imm = #0x0
     8c2: 4c10         	ldr	r4, [pc, #0x40]         @ 0x904 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x164>
     8c4: 4630         	mov	r0, r6
     8c6: 3018         	adds	r0, #0x18
     8c8: a906         	add	r1, sp, #0x18
     8ca: 2201         	movs	r2, #0x1
     8cc: 47a0         	blx	r4
     8ce: 2800         	cmp	r0, #0x0
     8d0: d0f8         	beq	0x8c4 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x124> @ imm = #-0x10
     8d2: 2801         	cmp	r0, #0x1
     8d4: d106         	bne	0x8e4 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x144> @ imm = #0xc
     8d6: 4c08         	ldr	r4, [pc, #0x20]         @ 0x8f8 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x158>
     8d8: 2000         	movs	r0, #0x0
     8da: 7120         	strb	r0, [r4, #0x4]
     8dc: 70e0         	strb	r0, [r4, #0x3]
     8de: e76c         	b	0x7ba <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x1a> @ imm = #-0x128
     8e0: b009         	add	sp, #0x24
     8e2: bdf0         	pop	{r4, r5, r6, r7, pc}
     8e4: 2101         	movs	r1, #0x1
     8e6: 4a08         	ldr	r2, [pc, #0x20]         @ 0x908 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x168>
     8e8: f000 fd46    	bl	0x1378 <core::slice::index::slice_start_index_len_fail::h0143d39f27fb17b8> @ imm = #0xa8c
     8ec: 4808         	ldr	r0, [pc, #0x20]         @ 0x910 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x170>
     8ee: f000 ff9b    	bl	0x1828 <core::panicking::panic_const::panic_const_add_overflow::hf5cb0614de41d6eb> @ imm = #0xf36
     8f2: 4806         	ldr	r0, [pc, #0x18]         @ 0x90c <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661+0x16c>
     8f4: f000 ff98    	bl	0x1828 <core::panicking::panic_const::panic_const_add_overflow::hf5cb0614de41d6eb> @ imm = #0xf30
     8f8: a5 1d 00 00  	.word	0x00001da5
     8fc: 74 19 00 00  	.word	0x00001974
     900: 95 05 00 00  	.word	0x00000595
     904: f5 05 00 00  	.word	0x000005f5
     908: e4 01 00 00  	.word	0x000001e4
     90c: 54 01 00 00  	.word	0x00000154
     910: 74 01 00 00  	.word	0x00000174

Disassembly of section .text._defmt_acquire:

00000914 <_defmt_acquire>:
     914: b5b0         	push	{r4, r5, r7, lr}
     916: af02         	add	r7, sp, #0x8
     918: b086         	sub	sp, #0x18
     91a: f000 f8e1    	bl	0xae0 <_critical_section_1_0_acquire> @ imm = #0x1c2
     91e: 4919         	ldr	r1, [pc, #0x64]         @ 0x984 <_defmt_acquire+0x70>
     920: 780a         	ldrb	r2, [r1]
     922: 2a00         	cmp	r2, #0x0
     924: d121         	bne	0x96a <_defmt_acquire+0x56> @ imm = #0x42
     926: 2201         	movs	r2, #0x1
     928: 700a         	strb	r2, [r1]
     92a: 7048         	strb	r0, [r1, #0x1]
     92c: 7888         	ldrb	r0, [r1, #0x2]
     92e: 2800         	cmp	r0, #0x0
     930: d115         	bne	0x95e <_defmt_acquire+0x4a> @ imm = #0x2a
     932: 708a         	strb	r2, [r1, #0x2]
     934: 4668         	mov	r0, sp
     936: 2100         	movs	r1, #0x0
     938: 7001         	strb	r1, [r0]
     93a: 4c15         	ldr	r4, [pc, #0x54]         @ 0x990 <_defmt_acquire+0x7c>
     93c: 6ae0         	ldr	r0, [r4, #0x2c]
     93e: 2103         	movs	r1, #0x3
     940: 4001         	ands	r1, r0
     942: 2902         	cmp	r1, #0x2
     944: d001         	beq	0x94a <_defmt_acquire+0x36> @ imm = #0x2
     946: 4d14         	ldr	r5, [pc, #0x50]         @ 0x998 <_defmt_acquire+0x84>
     948: e000         	b	0x94c <_defmt_acquire+0x38> @ imm = #0x0
     94a: 4d12         	ldr	r5, [pc, #0x48]         @ 0x994 <_defmt_acquire+0x80>
     94c: 3418         	adds	r4, #0x18
     94e: 4669         	mov	r1, sp
     950: 2201         	movs	r2, #0x1
     952: 4620         	mov	r0, r4
     954: 47a8         	blx	r5
     956: 2800         	cmp	r0, #0x0
     958: d0f9         	beq	0x94e <_defmt_acquire+0x3a> @ imm = #-0xe
     95a: 2801         	cmp	r0, #0x1
     95c: d101         	bne	0x962 <_defmt_acquire+0x4e> @ imm = #0x2
     95e: b006         	add	sp, #0x18
     960: bdb0         	pop	{r4, r5, r7, pc}
     962: 2101         	movs	r1, #0x1
     964: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x99c <_defmt_acquire+0x88>
     966: f000 fd07    	bl	0x1378 <core::slice::index::slice_start_index_len_fail::h0143d39f27fb17b8> @ imm = #0xa0e
     96a: 2000         	movs	r0, #0x0
     96c: 9004         	str	r0, [sp, #0x10]
     96e: 2101         	movs	r1, #0x1
     970: 9101         	str	r1, [sp, #0x4]
     972: 4905         	ldr	r1, [pc, #0x14]         @ 0x988 <_defmt_acquire+0x74>
     974: 9100         	str	r1, [sp]
     976: 9003         	str	r0, [sp, #0xc]
     978: 2004         	movs	r0, #0x4
     97a: 9002         	str	r0, [sp, #0x8]
     97c: 4668         	mov	r0, sp
     97e: 4903         	ldr	r1, [pc, #0xc]          @ 0x98c <_defmt_acquire+0x78>
     980: f000 f9ce    	bl	0xd20 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x39c
     984: a5 1d 00 00  	.word	0x00001da5
     988: 60 02 00 00  	.word	0x00000260
     98c: c4 02 00 00  	.word	0x000002c4
     990: 74 19 00 00  	.word	0x00001974
     994: 95 05 00 00  	.word	0x00000595
     998: f5 05 00 00  	.word	0x000005f5
     99c: e4 01 00 00  	.word	0x000001e4

Disassembly of section .text._defmt_release:

000009a0 <_defmt_release>:
     9a0: b580         	push	{r7, lr}
     9a2: af00         	add	r7, sp, #0x0
     9a4: f7ff fe96    	bl	0x6d4 <<defmt_rtt::Logger as defmt::traits::Logger>::release::hc692aed4a85f5fd0> @ imm = #-0x2d4
     9a8: bd80         	pop	{r7, pc}

Disassembly of section .text._defmt_write:

000009aa <_defmt_write>:
     9aa: b580         	push	{r7, lr}
     9ac: af00         	add	r7, sp, #0x0
     9ae: f7ff fef7    	bl	0x7a0 <<defmt_rtt::Logger as defmt::traits::Logger>::write::h85c8acb1f5c45661> @ imm = #-0x212
     9b2: bd80         	pop	{r7, pc}

Disassembly of section .text:

000009b4 <_rphal_unsigned_divmod>:
     9b4: 4a19         	ldr	r2, [pc, #0x64]         @ 0xa1c <_rphal_signed_divmod+0x34>
     9b6: 6f93         	ldr	r3, [r2, #0x78]
     9b8: 089b         	lsrs	r3, r3, #0x2
     9ba: d208         	bhs	0x9ce <_rphal_unsigned_divmod+0x1a> @ imm = #0x10
     9bc: 6610         	str	r0, [r2, #0x60]
     9be: 6651         	str	r1, [r2, #0x64]
     9c0: e7ff         	b	0x9c2 <_rphal_unsigned_divmod+0xe> @ imm = #-0x2
     9c2: e7ff         	b	0x9c4 <_rphal_unsigned_divmod+0x10> @ imm = #-0x2
     9c4: e7ff         	b	0x9c6 <_rphal_unsigned_divmod+0x12> @ imm = #-0x2
     9c6: e7ff         	b	0x9c8 <_rphal_unsigned_divmod+0x14> @ imm = #-0x2
     9c8: 6f51         	ldr	r1, [r2, #0x74]
     9ca: 6f10         	ldr	r0, [r2, #0x70]
     9cc: 4770         	bx	lr
     9ce: b570         	push	{r4, r5, r6, lr}
     9d0: 6e13         	ldr	r3, [r2, #0x60]
     9d2: 6e54         	ldr	r4, [r2, #0x64]
     9d4: 6f55         	ldr	r5, [r2, #0x74]
     9d6: 6f16         	ldr	r6, [r2, #0x70]
     9d8: f7ff fff0    	bl	0x9bc <_rphal_unsigned_divmod+0x8> @ imm = #-0x20
     9dc: 6613         	str	r3, [r2, #0x60]
     9de: 6654         	str	r4, [r2, #0x64]
     9e0: 6755         	str	r5, [r2, #0x74]
     9e2: 6716         	str	r6, [r2, #0x70]
     9e4: bd70         	pop	{r4, r5, r6, pc}
     9e6: 46c0         	mov	r8, r8

000009e8 <_rphal_signed_divmod>:
     9e8: 4a0c         	ldr	r2, [pc, #0x30]         @ 0xa1c <_rphal_signed_divmod+0x34>
     9ea: 6f93         	ldr	r3, [r2, #0x78]
     9ec: 089b         	lsrs	r3, r3, #0x2
     9ee: d208         	bhs	0xa02 <_rphal_signed_divmod+0x1a> @ imm = #0x10
     9f0: 6690         	str	r0, [r2, #0x68]
     9f2: 66d1         	str	r1, [r2, #0x6c]
     9f4: e7ff         	b	0x9f6 <_rphal_signed_divmod+0xe> @ imm = #-0x2
     9f6: e7ff         	b	0x9f8 <_rphal_signed_divmod+0x10> @ imm = #-0x2
     9f8: e7ff         	b	0x9fa <_rphal_signed_divmod+0x12> @ imm = #-0x2
     9fa: e7ff         	b	0x9fc <_rphal_signed_divmod+0x14> @ imm = #-0x2
     9fc: 6f51         	ldr	r1, [r2, #0x74]
     9fe: 6f10         	ldr	r0, [r2, #0x70]
     a00: 4770         	bx	lr
     a02: b570         	push	{r4, r5, r6, lr}
     a04: 6e13         	ldr	r3, [r2, #0x60]
     a06: 6e54         	ldr	r4, [r2, #0x64]
     a08: 6f55         	ldr	r5, [r2, #0x74]
     a0a: 6f16         	ldr	r6, [r2, #0x70]
     a0c: f7ff fff0    	bl	0x9f0 <_rphal_signed_divmod+0x8> @ imm = #-0x20
     a10: 6613         	str	r3, [r2, #0x60]
     a12: 6654         	str	r4, [r2, #0x64]
     a14: 6755         	str	r5, [r2, #0x74]
     a16: 6716         	str	r6, [r2, #0x70]
     a18: bd70         	pop	{r4, r5, r6, pc}
     a1a: 0000         	movs	r0, r0
     a1c: 00 00 00 d0  	.word	0xd0000000

Disassembly of section .text.<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::ha7fb6e5d51899487:

00000a20 <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::ha7fb6e5d51899487>:
     a20: b5f0         	push	{r4, r5, r6, r7, lr}
     a22: af03         	add	r7, sp, #0xc
     a24: b089         	sub	sp, #0x24
     a26: f000 f928    	bl	0xc7a <__primask_r>     @ imm = #0x250
     a2a: 2401         	movs	r4, #0x1
     a2c: 210d         	movs	r1, #0xd
     a2e: 0709         	lsls	r1, r1, #0x1c
     a30: 6809         	ldr	r1, [r1]
     a32: b2c9         	uxtb	r1, r1
     a34: 2900         	cmp	r1, #0x0
     a36: d003         	beq	0xa40 <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::ha7fb6e5d51899487+0x20> @ imm = #0x6
     a38: 2901         	cmp	r1, #0x1
     a3a: d129         	bne	0xa90 <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::ha7fb6e5d51899487+0x70> @ imm = #0x52
     a3c: 2502         	movs	r5, #0x2
     a3e: e000         	b	0xa42 <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::ha7fb6e5d51899487+0x22> @ imm = #0x0
     a40: 4625         	mov	r5, r4
     a42: 4919         	ldr	r1, [pc, #0x64]         @ 0xaa8 <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::ha7fb6e5d51899487+0x88>
     a44: 7809         	ldrb	r1, [r1]
     a46: f3bf 8f5f    	dmb	sy
     a4a: 42a9         	cmp	r1, r5
     a4c: d102         	bne	0xa54 <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::ha7fb6e5d51899487+0x34> @ imm = #0x4
     a4e: 2002         	movs	r0, #0x2
     a50: b009         	add	sp, #0x24
     a52: bdf0         	pop	{r4, r5, r6, r7, pc}
     a54: 4020         	ands	r0, r4
     a56: 9001         	str	r0, [sp, #0x4]
     a58: f000 f90b    	bl	0xc72 <__cpsid>         @ imm = #0x216
     a5c: 4e13         	ldr	r6, [pc, #0x4c]         @ 0xaac <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::ha7fb6e5d51899487+0x8c>
     a5e: 6830         	ldr	r0, [r6]
     a60: 2800         	cmp	r0, #0x0
     a62: d10f         	bne	0xa84 <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::ha7fb6e5d51899487+0x64> @ imm = #0x1e
     a64: 9801         	ldr	r0, [sp, #0x4]
     a66: 2800         	cmp	r0, #0x0
     a68: d107         	bne	0xa7a <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::ha7fb6e5d51899487+0x5a> @ imm = #0xe
     a6a: f000 f904    	bl	0xc76 <__cpsie>         @ imm = #0x208
     a6e: f000 f900    	bl	0xc72 <__cpsid>         @ imm = #0x200
     a72: 6830         	ldr	r0, [r6]
     a74: 2800         	cmp	r0, #0x0
     a76: d0f8         	beq	0xa6a <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::ha7fb6e5d51899487+0x4a> @ imm = #-0x10
     a78: e004         	b	0xa84 <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::ha7fb6e5d51899487+0x64> @ imm = #0x8
     a7a: f000 f8fa    	bl	0xc72 <__cpsid>         @ imm = #0x1f4
     a7e: 6830         	ldr	r0, [r6]
     a80: 2800         	cmp	r0, #0x0
     a82: d0fa         	beq	0xa7a <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::ha7fb6e5d51899487+0x5a> @ imm = #-0xc
     a84: 4808         	ldr	r0, [pc, #0x20]         @ 0xaa8 <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::ha7fb6e5d51899487+0x88>
     a86: 7005         	strb	r5, [r0]
     a88: 9801         	ldr	r0, [sp, #0x4]
     a8a: 4060         	eors	r0, r4
     a8c: b009         	add	sp, #0x24
     a8e: bdf0         	pop	{r4, r5, r6, r7, pc}
     a90: 2000         	movs	r0, #0x0
     a92: 9006         	str	r0, [sp, #0x18]
     a94: 9403         	str	r4, [sp, #0xc]
     a96: 4906         	ldr	r1, [pc, #0x18]         @ 0xab0 <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::ha7fb6e5d51899487+0x90>
     a98: 9102         	str	r1, [sp, #0x8]
     a9a: 9005         	str	r0, [sp, #0x14]
     a9c: a808         	add	r0, sp, #0x20
     a9e: 9004         	str	r0, [sp, #0x10]
     aa0: a802         	add	r0, sp, #0x8
     aa2: 4904         	ldr	r1, [pc, #0x10]         @ 0xab4 <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::ha7fb6e5d51899487+0x94>
     aa4: f000 f93c    	bl	0xd20 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #0x278
     aa8: aa 1d 00 00  	.word	0x00001daa
     aac: 7c 01 00 d0  	.word	0xd000017c
     ab0: f4 01 00 00  	.word	0x000001f4
     ab4: 64 01 00 00  	.word	0x00000164

Disassembly of section .text.<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::release::h3b15316920fac147:

00000ab8 <_critical_section_1_0_release>:
     ab8: b580         	push	{r7, lr}
     aba: af00         	add	r7, sp, #0x0
     abc: b2c1         	uxtb	r1, r0
     abe: 2902         	cmp	r1, #0x2
     ac0: d009         	beq	0xad6 <_critical_section_1_0_release+0x1e> @ imm = #0x12
     ac2: 4905         	ldr	r1, [pc, #0x14]         @ 0xad8 <_critical_section_1_0_release+0x20>
     ac4: 2200         	movs	r2, #0x0
     ac6: 700a         	strb	r2, [r1]
     ac8: 4904         	ldr	r1, [pc, #0x10]         @ 0xadc <_critical_section_1_0_release+0x24>
     aca: 2201         	movs	r2, #0x1
     acc: 600a         	str	r2, [r1]
     ace: 0600         	lsls	r0, r0, #0x18
     ad0: d001         	beq	0xad6 <_critical_section_1_0_release+0x1e> @ imm = #0x2
     ad2: f000 f8d0    	bl	0xc76 <__cpsie>         @ imm = #0x1a0
     ad6: bd80         	pop	{r7, pc}
     ad8: aa 1d 00 00  	.word	0x00001daa
     adc: 7c 01 00 d0  	.word	0xd000017c

Disassembly of section .text._critical_section_1_0_acquire:

00000ae0 <_critical_section_1_0_acquire>:
     ae0: b580         	push	{r7, lr}
     ae2: af00         	add	r7, sp, #0x0
     ae4: f7ff ff9c    	bl	0xa20 <<rp2040_hal::critical_section_impl::RpSpinlockCs as critical_section::Impl>::acquire::ha7fb6e5d51899487> @ imm = #-0xc8
     ae8: b2c0         	uxtb	r0, r0
     aea: bd80         	pop	{r7, pc}

Disassembly of section .text.__aeabi_memcpy:

00000aec <__aeabi_memcpy>:
     aec: b5f0         	push	{r4, r5, r6, r7, lr}
     aee: af03         	add	r7, sp, #0xc
     af0: b083         	sub	sp, #0xc
     af2: 4d0e         	ldr	r5, [pc, #0x38]         @ 0xb2c <__aeabi_memcpy+0x40>
     af4: 882b         	ldrh	r3, [r5]
     af6: 2b00         	cmp	r3, #0x0
     af8: d002         	beq	0xb00 <__aeabi_memcpy+0x14> @ imm = #0x4
     afa: 4798         	blx	r3
     afc: b003         	add	sp, #0xc
     afe: bdf0         	pop	{r4, r5, r6, r7, pc}
     b00: 2314         	movs	r3, #0x14
     b02: 881b         	ldrh	r3, [r3]
     b04: 2418         	movs	r4, #0x18
     b06: 8824         	ldrh	r4, [r4]
     b08: 9401         	str	r4, [sp, #0x4]
     b0a: 4e09         	ldr	r6, [pc, #0x24]         @ 0xb30 <__aeabi_memcpy+0x44>
     b0c: 9002         	str	r0, [sp, #0x8]
     b0e: 4618         	mov	r0, r3
     b10: 460c         	mov	r4, r1
     b12: 4631         	mov	r1, r6
     b14: 4616         	mov	r6, r2
     b16: 9a01         	ldr	r2, [sp, #0x4]
     b18: 4790         	blx	r2
     b1a: 4621         	mov	r1, r4
     b1c: 4632         	mov	r2, r6
     b1e: 4603         	mov	r3, r0
     b20: 9802         	ldr	r0, [sp, #0x8]
     b22: 802b         	strh	r3, [r5]
     b24: 4798         	blx	r3
     b26: b003         	add	sp, #0xc
     b28: bdf0         	pop	{r4, r5, r6, r7, pc}
     b2a: 46c0         	mov	r8, r8
     b2c: ac 1d 00 00  	.word	0x00001dac
     b30: 4d 43 00 00  	.word	0x0000434d

Disassembly of section .text.<&T as core::fmt::Debug>::fmt::h07b16ad9cfa88cf7:

00000b34 <<&T as core::fmt::Debug>::fmt::h07b16ad9cfa88cf7>:
     b34: b580         	push	{r7, lr}
     b36: af00         	add	r7, sp, #0x0
     b38: 6802         	ldr	r2, [r0]
     b3a: 6840         	ldr	r0, [r0, #0x4]
     b3c: 68c3         	ldr	r3, [r0, #0xc]
     b3e: 4610         	mov	r0, r2
     b40: 4798         	blx	r3
     b42: bd80         	pop	{r7, pc}

Disassembly of section .text.core::fmt::Write::write_char::h248172e08ab15df9:

00000b44 <core::fmt::Write::write_char::h248172e08ab15df9>:
     b44: b580         	push	{r7, lr}
     b46: af00         	add	r7, sp, #0x0
     b48: b082         	sub	sp, #0x8
     b4a: 2000         	movs	r0, #0x0
     b4c: 9001         	str	r0, [sp, #0x4]
     b4e: 2980         	cmp	r1, #0x80
     b50: d203         	bhs	0xb5a <core::fmt::Write::write_char::h248172e08ab15df9+0x16> @ imm = #0x6
     b52: a801         	add	r0, sp, #0x4
     b54: 7001         	strb	r1, [r0]
     b56: 2101         	movs	r1, #0x1
     b58: e02f         	b	0xbba <core::fmt::Write::write_char::h248172e08ab15df9+0x76> @ imm = #0x5e
     b5a: 0ac8         	lsrs	r0, r1, #0xb
     b5c: d10a         	bne	0xb74 <core::fmt::Write::write_char::h248172e08ab15df9+0x30> @ imm = #0x14
     b5e: 203f         	movs	r0, #0x3f
     b60: 4008         	ands	r0, r1
     b62: 3080         	adds	r0, #0x80
     b64: aa01         	add	r2, sp, #0x4
     b66: 7050         	strb	r0, [r2, #0x1]
     b68: 0988         	lsrs	r0, r1, #0x6
     b6a: 21c0         	movs	r1, #0xc0
     b6c: 4301         	orrs	r1, r0
     b6e: 7011         	strb	r1, [r2]
     b70: 2102         	movs	r1, #0x2
     b72: e022         	b	0xbba <core::fmt::Write::write_char::h248172e08ab15df9+0x76> @ imm = #0x44
     b74: 0c08         	lsrs	r0, r1, #0x10
     b76: d10e         	bne	0xb96 <core::fmt::Write::write_char::h248172e08ab15df9+0x52> @ imm = #0x1c
     b78: 203f         	movs	r0, #0x3f
     b7a: 4008         	ands	r0, r1
     b7c: 3080         	adds	r0, #0x80
     b7e: aa01         	add	r2, sp, #0x4
     b80: 7090         	strb	r0, [r2, #0x2]
     b82: 0b08         	lsrs	r0, r1, #0xc
     b84: 23e0         	movs	r3, #0xe0
     b86: 4303         	orrs	r3, r0
     b88: 7013         	strb	r3, [r2]
     b8a: 0508         	lsls	r0, r1, #0x14
     b8c: 0e80         	lsrs	r0, r0, #0x1a
     b8e: 3080         	adds	r0, #0x80
     b90: 7050         	strb	r0, [r2, #0x1]
     b92: 2103         	movs	r1, #0x3
     b94: e011         	b	0xbba <core::fmt::Write::write_char::h248172e08ab15df9+0x76> @ imm = #0x22
     b96: 223f         	movs	r2, #0x3f
     b98: 400a         	ands	r2, r1
     b9a: 3280         	adds	r2, #0x80
     b9c: a801         	add	r0, sp, #0x4
     b9e: 70c2         	strb	r2, [r0, #0x3]
     ba0: 0c8a         	lsrs	r2, r1, #0x12
     ba2: 23f0         	movs	r3, #0xf0
     ba4: 4313         	orrs	r3, r2
     ba6: 7003         	strb	r3, [r0]
     ba8: 050a         	lsls	r2, r1, #0x14
     baa: 0e92         	lsrs	r2, r2, #0x1a
     bac: 3280         	adds	r2, #0x80
     bae: 7082         	strb	r2, [r0, #0x2]
     bb0: 0389         	lsls	r1, r1, #0xe
     bb2: 0e89         	lsrs	r1, r1, #0x1a
     bb4: 3180         	adds	r1, #0x80
     bb6: 7041         	strb	r1, [r0, #0x1]
     bb8: 2104         	movs	r1, #0x4
     bba: a801         	add	r0, sp, #0x4
     bbc: f7ff fef5    	bl	0x9aa <_defmt_write>    @ imm = #-0x216
     bc0: 2000         	movs	r0, #0x0
     bc2: b002         	add	sp, #0x8
     bc4: bd80         	pop	{r7, pc}

Disassembly of section .text.core::fmt::Write::write_fmt::h3cbac2df90a8cfe1:

00000bc8 <core::fmt::Write::write_fmt::h3cbac2df90a8cfe1>:
     bc8: b580         	push	{r7, lr}
     bca: af00         	add	r7, sp, #0x0
     bcc: 460a         	mov	r2, r1
     bce: 4902         	ldr	r1, [pc, #0x8]          @ 0xbd8 <core::fmt::Write::write_fmt::h3cbac2df90a8cfe1+0x10>
     bd0: f000 f8de    	bl	0xd90 <core::fmt::write::h0df8b10c0edc881b> @ imm = #0x1bc
     bd4: bd80         	pop	{r7, pc}
     bd6: 46c0         	mov	r8, r8
     bd8: 30 00 00 00  	.word	0x00000030

Disassembly of section .text.defmt::export::istr::hc13176d560b40c9b:

00000bdc <defmt::export::integers::u16::h07cb8f4119a81b4d>:
     bdc: b580         	push	{r7, lr}
     bde: af00         	add	r7, sp, #0x0
     be0: b082         	sub	sp, #0x8
     be2: 8801         	ldrh	r1, [r0]
     be4: a801         	add	r0, sp, #0x4
     be6: 8001         	strh	r1, [r0]
     be8: 2102         	movs	r1, #0x2
     bea: f7ff fede    	bl	0x9aa <_defmt_write>    @ imm = #-0x244
     bee: b002         	add	sp, #0x8
     bf0: bd80         	pop	{r7, pc}

Disassembly of section .text.defmt::export::debug::h7972ae1a8fde9c06:

00000bf4 <defmt::export::display::h109791eaa56d2681>:
     bf4: b5d0         	push	{r4, r6, r7, lr}
     bf6: af02         	add	r7, sp, #0x8
     bf8: b08c         	sub	sp, #0x30
     bfa: 9102         	str	r1, [sp, #0x8]
     bfc: 9001         	str	r0, [sp, #0x4]
     bfe: 2000         	movs	r0, #0x0
     c00: 9007         	str	r0, [sp, #0x1c]
     c02: 2401         	movs	r4, #0x1
     c04: 9404         	str	r4, [sp, #0x10]
     c06: 480a         	ldr	r0, [pc, #0x28]         @ 0xc30 <defmt::export::display::h109791eaa56d2681+0x3c>
     c08: 9003         	str	r0, [sp, #0xc]
     c0a: 9406         	str	r4, [sp, #0x18]
     c0c: a809         	add	r0, sp, #0x24
     c0e: 9005         	str	r0, [sp, #0x14]
     c10: 4808         	ldr	r0, [pc, #0x20]         @ 0xc34 <defmt::export::display::h109791eaa56d2681+0x40>
     c12: 900a         	str	r0, [sp, #0x28]
     c14: a801         	add	r0, sp, #0x4
     c16: 9009         	str	r0, [sp, #0x24]
     c18: a80b         	add	r0, sp, #0x2c
     c1a: 4907         	ldr	r1, [pc, #0x1c]         @ 0xc38 <defmt::export::display::h109791eaa56d2681+0x44>
     c1c: aa03         	add	r2, sp, #0xc
     c1e: f000 f8b7    	bl	0xd90 <core::fmt::write::h0df8b10c0edc881b> @ imm = #0x16e
     c22: 4806         	ldr	r0, [pc, #0x18]         @ 0xc3c <defmt::export::display::h109791eaa56d2681+0x48>
     c24: 4621         	mov	r1, r4
     c26: f7ff fec0    	bl	0x9aa <_defmt_write>    @ imm = #-0x280
     c2a: b00c         	add	sp, #0x30
     c2c: bdd0         	pop	{r4, r6, r7, pc}
     c2e: 46c0         	mov	r8, r8
     c30: 7c 03 00 00  	.word	0x0000037c
     c34: 35 0b 00 00  	.word	0x00000b35
     c38: 30 00 00 00  	.word	0x00000030
     c3c: 1c 02 00 00  	.word	0x0000021c

Disassembly of section .text.defmt::export::acquire_and_header::h080bb0e499be80ab:

00000c40 <defmt::export::acquire_and_header::h080bb0e499be80ab>:
     c40: b5d0         	push	{r4, r6, r7, lr}
     c42: af02         	add	r7, sp, #0x8
     c44: b082         	sub	sp, #0x8
     c46: 4604         	mov	r4, r0
     c48: f7ff fe64    	bl	0x914 <_defmt_acquire>  @ imm = #-0x338
     c4c: 8821         	ldrh	r1, [r4]
     c4e: a801         	add	r0, sp, #0x4
     c50: 8001         	strh	r1, [r0]
     c52: 2102         	movs	r1, #0x2
     c54: f7ff fea9    	bl	0x9aa <_defmt_write>    @ imm = #-0x2ae
     c58: f000 f80a    	bl	0xc70 <_defmt_timestamp> @ imm = #0x14
     c5c: b002         	add	sp, #0x8
     c5e: bdd0         	pop	{r4, r6, r7, pc}

Disassembly of section .text.<defmt::export::FmtWrite as core::fmt::Write>::write_str::hc516e735742bfc21:

00000c60 <<defmt::export::FmtWrite as core::fmt::Write>::write_str::hc516e735742bfc21>:
     c60: b580         	push	{r7, lr}
     c62: af00         	add	r7, sp, #0x0
     c64: 4608         	mov	r0, r1
     c66: 4611         	mov	r1, r2
     c68: f7ff fe9f    	bl	0x9aa <_defmt_write>    @ imm = #-0x2c2
     c6c: 2000         	movs	r0, #0x0
     c6e: bd80         	pop	{r7, pc}

Disassembly of section .text.__defmt_default_timestamp:

00000c70 <_defmt_timestamp>:
     c70: 4770         	bx	lr

Disassembly of section .text.__cpsid:

00000c72 <__cpsid>:
     c72: b672         	cpsid i
     c74: 4770         	bx	lr

Disassembly of section .text.__cpsie:

00000c76 <__cpsie>:
     c76: b662         	cpsie i
     c78: 4770         	bx	lr

Disassembly of section .text.__primask_r:

00000c7a <__primask_r>:
     c7a: f3ef 8010    	mrs	r0, primask
     c7e: 4770         	bx	lr

Disassembly of section .text.__udf:

00000c80 <__udf>:
     c80: de00         	udf	#0x0
     c82: defe         	trap

Disassembly of section .text.<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d:

00000c84 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d>:
     c84: b5f0         	push	{r4, r5, r6, r7, lr}
     c86: af03         	add	r7, sp, #0xc
     c88: b08f         	sub	sp, #0x3c
     c8a: 4604         	mov	r4, r0
     c8c: 694d         	ldr	r5, [r1, #0x14]
     c8e: 698e         	ldr	r6, [r1, #0x18]
     c90: 68f3         	ldr	r3, [r6, #0xc]
     c92: 491e         	ldr	r1, [pc, #0x78]         @ 0xd0c <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d+0x88>
     c94: 220c         	movs	r2, #0xc
     c96: 4628         	mov	r0, r5
     c98: 9302         	str	r3, [sp, #0x8]
     c9a: 4798         	blx	r3
     c9c: 2101         	movs	r1, #0x1
     c9e: 2800         	cmp	r0, #0x0
     ca0: d11f         	bne	0xce2 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d+0x5e> @ imm = #0x3e
     ca2: 9101         	str	r1, [sp, #0x4]
     ca4: 9400         	str	r4, [sp]
     ca6: 69a0         	ldr	r0, [r4, #0x18]
     ca8: 2100         	movs	r1, #0x0
     caa: 9107         	str	r1, [sp, #0x1c]
     cac: 2103         	movs	r1, #0x3
     cae: 9104         	str	r1, [sp, #0x10]
     cb0: 4a17         	ldr	r2, [pc, #0x5c]         @ 0xd10 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d+0x8c>
     cb2: 9203         	str	r2, [sp, #0xc]
     cb4: 9106         	str	r1, [sp, #0x18]
     cb6: a909         	add	r1, sp, #0x24
     cb8: 9105         	str	r1, [sp, #0x14]
     cba: 4916         	ldr	r1, [pc, #0x58]         @ 0xd14 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d+0x90>
     cbc: 910e         	str	r1, [sp, #0x38]
     cbe: 4602         	mov	r2, r0
     cc0: 320c         	adds	r2, #0xc
     cc2: 920d         	str	r2, [sp, #0x34]
     cc4: 910c         	str	r1, [sp, #0x30]
     cc6: 4601         	mov	r1, r0
     cc8: 3108         	adds	r1, #0x8
     cca: 910b         	str	r1, [sp, #0x2c]
     ccc: 4912         	ldr	r1, [pc, #0x48]         @ 0xd18 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d+0x94>
     cce: 910a         	str	r1, [sp, #0x28]
     cd0: 9009         	str	r0, [sp, #0x24]
     cd2: aa03         	add	r2, sp, #0xc
     cd4: 4628         	mov	r0, r5
     cd6: 4631         	mov	r1, r6
     cd8: f000 f85a    	bl	0xd90 <core::fmt::write::h0df8b10c0edc881b> @ imm = #0xb4
     cdc: 2800         	cmp	r0, #0x0
     cde: d003         	beq	0xce8 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d+0x64> @ imm = #0x6
     ce0: 9901         	ldr	r1, [sp, #0x4]
     ce2: 4608         	mov	r0, r1
     ce4: b00f         	add	sp, #0x3c
     ce6: bdf0         	pop	{r4, r5, r6, r7, pc}
     ce8: 490c         	ldr	r1, [pc, #0x30]         @ 0xd1c <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d+0x98>
     cea: 2202         	movs	r2, #0x2
     cec: 4628         	mov	r0, r5
     cee: 9b02         	ldr	r3, [sp, #0x8]
     cf0: 4798         	blx	r3
     cf2: 2800         	cmp	r0, #0x0
     cf4: 9901         	ldr	r1, [sp, #0x4]
     cf6: d1f4         	bne	0xce2 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::h51462d60f828290d+0x5e> @ imm = #-0x18
     cf8: 4628         	mov	r0, r5
     cfa: 4631         	mov	r1, r6
     cfc: 9a00         	ldr	r2, [sp]
     cfe: f000 f847    	bl	0xd90 <core::fmt::write::h0df8b10c0edc881b> @ imm = #0x8e
     d02: 4601         	mov	r1, r0
     d04: 4608         	mov	r0, r1
     d06: b00f         	add	sp, #0x3c
     d08: bdf0         	pop	{r4, r5, r6, r7, pc}
     d0a: 46c0         	mov	r8, r8
     d0c: f0 03 00 00  	.word	0x000003f0
     d10: d8 03 00 00  	.word	0x000003d8
     d14: 71 18 00 00  	.word	0x00001871
     d18: 65 19 00 00  	.word	0x00001965
     d1c: fc 03 00 00  	.word	0x000003fc

Disassembly of section .text.unlikely.core::panicking::panic_fmt::h756aba86a6a1830d:

00000d20 <core::panicking::panic_fmt::h756aba86a6a1830d>:
     d20: b580         	push	{r7, lr}
     d22: af00         	add	r7, sp, #0x0
     d24: b088         	sub	sp, #0x20
     d26: 466a         	mov	r2, sp
     d28: 4613         	mov	r3, r2
     d2a: c870         	ldm	r0!, {r4, r5, r6}
     d2c: c370         	stm	r3!, {r4, r5, r6}
     d2e: c870         	ldm	r0!, {r4, r5, r6}
     d30: c370         	stm	r3!, {r4, r5, r6}
     d32: 2001         	movs	r0, #0x1
     d34: 8390         	strh	r0, [r2, #0x1c]
     d36: 9106         	str	r1, [sp, #0x18]
     d38: 4610         	mov	r0, r2
     d3a: f7ff fbff    	bl	0x53c <rust_begin_unwind> @ imm = #-0x802

Disassembly of section .text.unlikely.core::panicking::panic_nounwind_fmt::h4094459c57d84e6d:

00000d3e <core::panicking::panic_nounwind_fmt::h4094459c57d84e6d>:
     d3e: b580         	push	{r7, lr}
     d40: af00         	add	r7, sp, #0x0
     d42: b08a         	sub	sp, #0x28
     d44: 9201         	str	r2, [sp, #0x4]
     d46: 460a         	mov	r2, r1
     d48: a902         	add	r1, sp, #0x8
     d4a: 460c         	mov	r4, r1
     d4c: c868         	ldm	r0!, {r3, r5, r6}
     d4e: c468         	stm	r4!, {r3, r5, r6}
     d50: c868         	ldm	r0!, {r3, r5, r6}
     d52: c468         	stm	r4!, {r3, r5, r6}
     d54: 774a         	strb	r2, [r1, #0x1d]
     d56: 2000         	movs	r0, #0x0
     d58: 7708         	strb	r0, [r1, #0x1c]
     d5a: 9801         	ldr	r0, [sp, #0x4]
     d5c: 9008         	str	r0, [sp, #0x20]
     d5e: 4608         	mov	r0, r1
     d60: f7ff fbec    	bl	0x53c <rust_begin_unwind> @ imm = #-0x828

Disassembly of section .text.unlikely.core::panicking::panic_nounwind::h8ba64b62f651a9d5:

00000d64 <core::panicking::panic_nounwind::h8ba64b62f651a9d5>:
     d64: b580         	push	{r7, lr}
     d66: af00         	add	r7, sp, #0x0
     d68: b088         	sub	sp, #0x20
     d6a: 460a         	mov	r2, r1
     d6c: 2100         	movs	r1, #0x0
     d6e: 9104         	str	r1, [sp, #0x10]
     d70: 2301         	movs	r3, #0x1
     d72: 9301         	str	r3, [sp, #0x4]
     d74: ab06         	add	r3, sp, #0x18
     d76: 9300         	str	r3, [sp]
     d78: 9103         	str	r1, [sp, #0xc]
     d7a: 2304         	movs	r3, #0x4
     d7c: 9302         	str	r3, [sp, #0x8]
     d7e: 9207         	str	r2, [sp, #0x1c]
     d80: 9006         	str	r0, [sp, #0x18]
     d82: 4668         	mov	r0, sp
     d84: 4a01         	ldr	r2, [pc, #0x4]          @ 0xd8c <core::panicking::panic_nounwind::h8ba64b62f651a9d5+0x28>
     d86: f7ff ffda    	bl	0xd3e <core::panicking::panic_nounwind_fmt::h4094459c57d84e6d> @ imm = #-0x4c
     d8a: 46c0         	mov	r8, r8
     d8c: 14 04 00 00  	.word	0x00000414

Disassembly of section .text.core::fmt::write::h0df8b10c0edc881b:

00000d90 <core::fmt::write::h0df8b10c0edc881b>:
     d90: b5f0         	push	{r4, r5, r6, r7, lr}
     d92: af03         	add	r7, sp, #0xc
     d94: b08f         	sub	sp, #0x3c
     d96: 2420         	movs	r4, #0x20
     d98: ad06         	add	r5, sp, #0x18
     d9a: 2303         	movs	r3, #0x3
     d9c: 9504         	str	r5, [sp, #0x10]
     d9e: 552b         	strb	r3, [r5, r4]
     da0: 940a         	str	r4, [sp, #0x28]
     da2: 2300         	movs	r3, #0x0
     da4: ac0b         	add	r4, sp, #0x2c
     da6: c40b         	stm	r4!, {r0, r1, r3}
     da8: 9308         	str	r3, [sp, #0x20]
     daa: 9306         	str	r3, [sp, #0x18]
     dac: 6915         	ldr	r5, [r2, #0x10]
     dae: 2d00         	cmp	r5, #0x0
     db0: d05a         	beq	0xe68 <core::fmt::write::h0df8b10c0edc881b+0xd8> @ imm = #0xb4
     db2: 6950         	ldr	r0, [r2, #0x14]
     db4: 2800         	cmp	r0, #0x0
     db6: d07b         	beq	0xeb0 <core::fmt::write::h0df8b10c0edc881b+0x120> @ imm = #0xf6
     db8: 9904         	ldr	r1, [sp, #0x10]
     dba: 3120         	adds	r1, #0x20
     dbc: 9104         	str	r1, [sp, #0x10]
     dbe: 211f         	movs	r1, #0x1f
     dc0: 06c9         	lsls	r1, r1, #0x1b
     dc2: 1e43         	subs	r3, r0, #0x1
     dc4: 438b         	bics	r3, r1
     dc6: 1c59         	adds	r1, r3, #0x1
     dc8: 9100         	str	r1, [sp]
     dca: 0140         	lsls	r0, r0, #0x5
     dcc: 9002         	str	r0, [sp, #0x8]
     dce: 6890         	ldr	r0, [r2, #0x8]
     dd0: 9005         	str	r0, [sp, #0x14]
     dd2: 9201         	str	r2, [sp, #0x4]
     dd4: 6816         	ldr	r6, [r2]
     dd6: 2400         	movs	r4, #0x0
     dd8: 9503         	str	r5, [sp, #0xc]
     dda: 6872         	ldr	r2, [r6, #0x4]
     ddc: 2a00         	cmp	r2, #0x0
     dde: d006         	beq	0xdee <core::fmt::write::h0df8b10c0edc881b+0x5e> @ imm = #0xc
     de0: 980c         	ldr	r0, [sp, #0x30]
     de2: 68c3         	ldr	r3, [r0, #0xc]
     de4: 6831         	ldr	r1, [r6]
     de6: 980b         	ldr	r0, [sp, #0x2c]
     de8: 4798         	blx	r3
     dea: 2800         	cmp	r0, #0x0
     dec: d16f         	bne	0xece <core::fmt::write::h0df8b10c0edc881b+0x13e> @ imm = #0xde
     dee: 1928         	adds	r0, r5, r4
     df0: 7f01         	ldrb	r1, [r0, #0x1c]
     df2: 9a04         	ldr	r2, [sp, #0x10]
     df4: 7011         	strb	r1, [r2]
     df6: 6901         	ldr	r1, [r0, #0x10]
     df8: 910a         	str	r1, [sp, #0x28]
     dfa: 6981         	ldr	r1, [r0, #0x18]
     dfc: 910d         	str	r1, [sp, #0x34]
     dfe: 6883         	ldr	r3, [r0, #0x8]
     e00: 68c2         	ldr	r2, [r0, #0xc]
     e02: 2100         	movs	r1, #0x0
     e04: 2b00         	cmp	r3, #0x0
     e06: d00a         	beq	0xe1e <core::fmt::write::h0df8b10c0edc881b+0x8e> @ imm = #0x14
     e08: 2b01         	cmp	r3, #0x1
     e0a: 460b         	mov	r3, r1
     e0c: d108         	bne	0xe20 <core::fmt::write::h0df8b10c0edc881b+0x90> @ imm = #0x10
     e0e: 00d2         	lsls	r2, r2, #0x3
     e10: 9b05         	ldr	r3, [sp, #0x14]
     e12: 189d         	adds	r5, r3, r2
     e14: 686a         	ldr	r2, [r5, #0x4]
     e16: 2a00         	cmp	r2, #0x0
     e18: 460b         	mov	r3, r1
     e1a: d101         	bne	0xe20 <core::fmt::write::h0df8b10c0edc881b+0x90> @ imm = #0x2
     e1c: 682a         	ldr	r2, [r5]
     e1e: 2301         	movs	r3, #0x1
     e20: 9207         	str	r2, [sp, #0x1c]
     e22: 9306         	str	r3, [sp, #0x18]
     e24: 9d03         	ldr	r5, [sp, #0xc]
     e26: 592b         	ldr	r3, [r5, r4]
     e28: 2b02         	cmp	r3, #0x2
     e2a: d00b         	beq	0xe44 <core::fmt::write::h0df8b10c0edc881b+0xb4> @ imm = #0x16
     e2c: 6842         	ldr	r2, [r0, #0x4]
     e2e: 2b01         	cmp	r3, #0x1
     e30: d106         	bne	0xe40 <core::fmt::write::h0df8b10c0edc881b+0xb0> @ imm = #0xc
     e32: 00d2         	lsls	r2, r2, #0x3
     e34: 9b05         	ldr	r3, [sp, #0x14]
     e36: 189b         	adds	r3, r3, r2
     e38: 685a         	ldr	r2, [r3, #0x4]
     e3a: 2a00         	cmp	r2, #0x0
     e3c: d102         	bne	0xe44 <core::fmt::write::h0df8b10c0edc881b+0xb4> @ imm = #0x4
     e3e: 681a         	ldr	r2, [r3]
     e40: 2101         	movs	r1, #0x1
     e42: e7ff         	b	0xe44 <core::fmt::write::h0df8b10c0edc881b+0xb4> @ imm = #-0x2
     e44: 9209         	str	r2, [sp, #0x24]
     e46: 9108         	str	r1, [sp, #0x20]
     e48: 6940         	ldr	r0, [r0, #0x14]
     e4a: 00c1         	lsls	r1, r0, #0x3
     e4c: 9a05         	ldr	r2, [sp, #0x14]
     e4e: 5850         	ldr	r0, [r2, r1]
     e50: 1851         	adds	r1, r2, r1
     e52: 684a         	ldr	r2, [r1, #0x4]
     e54: a906         	add	r1, sp, #0x18
     e56: 4790         	blx	r2
     e58: 2800         	cmp	r0, #0x0
     e5a: d138         	bne	0xece <core::fmt::write::h0df8b10c0edc881b+0x13e> @ imm = #0x70
     e5c: 3420         	adds	r4, #0x20
     e5e: 3608         	adds	r6, #0x8
     e60: 9802         	ldr	r0, [sp, #0x8]
     e62: 42a0         	cmp	r0, r4
     e64: d1b9         	bne	0xdda <core::fmt::write::h0df8b10c0edc881b+0x4a> @ imm = #-0x8e
     e66: e021         	b	0xeac <core::fmt::write::h0df8b10c0edc881b+0x11c> @ imm = #0x42
     e68: 68d0         	ldr	r0, [r2, #0xc]
     e6a: 2800         	cmp	r0, #0x0
     e6c: d020         	beq	0xeb0 <core::fmt::write::h0df8b10c0edc881b+0x120> @ imm = #0x40
     e6e: 6894         	ldr	r4, [r2, #0x8]
     e70: 2107         	movs	r1, #0x7
     e72: 0749         	lsls	r1, r1, #0x1d
     e74: 1e43         	subs	r3, r0, #0x1
     e76: 438b         	bics	r3, r1
     e78: 1c59         	adds	r1, r3, #0x1
     e7a: 9100         	str	r1, [sp]
     e7c: 00c5         	lsls	r5, r0, #0x3
     e7e: 9201         	str	r2, [sp, #0x4]
     e80: 6816         	ldr	r6, [r2]
     e82: 6872         	ldr	r2, [r6, #0x4]
     e84: 2a00         	cmp	r2, #0x0
     e86: d006         	beq	0xe96 <core::fmt::write::h0df8b10c0edc881b+0x106> @ imm = #0xc
     e88: 980c         	ldr	r0, [sp, #0x30]
     e8a: 68c3         	ldr	r3, [r0, #0xc]
     e8c: 6831         	ldr	r1, [r6]
     e8e: 980b         	ldr	r0, [sp, #0x2c]
     e90: 4798         	blx	r3
     e92: 2800         	cmp	r0, #0x0
     e94: d11b         	bne	0xece <core::fmt::write::h0df8b10c0edc881b+0x13e> @ imm = #0x36
     e96: cc05         	ldm	r4!, {r0, r2}
     e98: a906         	add	r1, sp, #0x18
     e9a: 3c08         	subs	r4, #0x8
     e9c: 4790         	blx	r2
     e9e: 2800         	cmp	r0, #0x0
     ea0: d115         	bne	0xece <core::fmt::write::h0df8b10c0edc881b+0x13e> @ imm = #0x2a
     ea2: 3408         	adds	r4, #0x8
     ea4: 3d08         	subs	r5, #0x8
     ea6: 3608         	adds	r6, #0x8
     ea8: 2d00         	cmp	r5, #0x0
     eaa: d1ea         	bne	0xe82 <core::fmt::write::h0df8b10c0edc881b+0xf2> @ imm = #-0x2c
     eac: 9a01         	ldr	r2, [sp, #0x4]
     eae: 9b00         	ldr	r3, [sp]
     eb0: 6850         	ldr	r0, [r2, #0x4]
     eb2: 4283         	cmp	r3, r0
     eb4: d20e         	bhs	0xed4 <core::fmt::write::h0df8b10c0edc881b+0x144> @ imm = #0x1c
     eb6: 4611         	mov	r1, r2
     eb8: 00d8         	lsls	r0, r3, #0x3
     eba: 680a         	ldr	r2, [r1]
     ebc: 5811         	ldr	r1, [r2, r0]
     ebe: 1810         	adds	r0, r2, r0
     ec0: 6842         	ldr	r2, [r0, #0x4]
     ec2: 980c         	ldr	r0, [sp, #0x30]
     ec4: 68c3         	ldr	r3, [r0, #0xc]
     ec6: 980b         	ldr	r0, [sp, #0x2c]
     ec8: 4798         	blx	r3
     eca: 2800         	cmp	r0, #0x0
     ecc: d002         	beq	0xed4 <core::fmt::write::h0df8b10c0edc881b+0x144> @ imm = #0x4
     ece: 2001         	movs	r0, #0x1
     ed0: b00f         	add	sp, #0x3c
     ed2: bdf0         	pop	{r4, r5, r6, r7, pc}
     ed4: 2000         	movs	r0, #0x0
     ed6: b00f         	add	sp, #0x3c
     ed8: bdf0         	pop	{r4, r5, r6, r7, pc}

Disassembly of section .text.core::fmt::Formatter::pad_integral::hd877b7fcc7734582:

00000edc <core::fmt::Formatter::pad_integral::hd877b7fcc7734582>:
     edc: b5f0         	push	{r4, r5, r6, r7, lr}
     ede: af03         	add	r7, sp, #0xc
     ee0: b08b         	sub	sp, #0x2c
     ee2: 9309         	str	r3, [sp, #0x24]
     ee4: 920a         	str	r2, [sp, #0x28]
     ee6: 4605         	mov	r5, r0
     ee8: 68fc         	ldr	r4, [r7, #0xc]
     eea: 2900         	cmp	r1, #0x0
     eec: d005         	beq	0xefa <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x1e> @ imm = #0xa
     eee: 69ea         	ldr	r2, [r5, #0x1c]
     ef0: 2001         	movs	r0, #0x1
     ef2: 4010         	ands	r0, r2
     ef4: d037         	beq	0xf66 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x8a> @ imm = #0x6e
     ef6: 212b         	movs	r1, #0x2b
     ef8: e037         	b	0xf6a <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x8e> @ imm = #0x6e
     efa: 69ea         	ldr	r2, [r5, #0x1c]
     efc: 1c61         	adds	r1, r4, #0x1
     efe: 202d         	movs	r0, #0x2d
     f00: 9007         	str	r0, [sp, #0x1c]
     f02: 0750         	lsls	r0, r2, #0x1d
     f04: 9406         	str	r4, [sp, #0x18]
     f06: d535         	bpl	0xf74 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x98> @ imm = #0x6a
     f08: 9108         	str	r1, [sp, #0x20]
     f0a: 9909         	ldr	r1, [sp, #0x24]
     f0c: 2910         	cmp	r1, #0x10
     f0e: 9205         	str	r2, [sp, #0x14]
     f10: d237         	bhs	0xf82 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xa6> @ imm = #0x6e
     f12: 2900         	cmp	r1, #0x0
     f14: d039         	beq	0xf8a <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xae> @ imm = #0x72
     f16: 9504         	str	r5, [sp, #0x10]
     f18: 2303         	movs	r3, #0x3
     f1a: 4608         	mov	r0, r1
     f1c: 4018         	ands	r0, r3
     f1e: 9003         	str	r0, [sp, #0xc]
     f20: 2904         	cmp	r1, #0x4
     f22: d300         	blo	0xf26 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x4a> @ imm = #0x0
     f24: e084         	b	0x1030 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x154> @ imm = #0x108
     f26: 2000         	movs	r0, #0x0
     f28: 4602         	mov	r2, r0
     f2a: 9903         	ldr	r1, [sp, #0xc]
     f2c: 2900         	cmp	r1, #0x0
     f2e: 9d04         	ldr	r5, [sp, #0x10]
     f30: d02c         	beq	0xf8c <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xb0> @ imm = #0x58
     f32: 990a         	ldr	r1, [sp, #0x28]
     f34: 568b         	ldrsb	r3, [r1, r2]
     f36: 2140         	movs	r1, #0x40
     f38: 43c9         	mvns	r1, r1
     f3a: 428b         	cmp	r3, r1
     f3c: dd00         	ble	0xf40 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x64> @ imm = #0x0
     f3e: 1c40         	adds	r0, r0, #0x1
     f40: 9b03         	ldr	r3, [sp, #0xc]
     f42: 2b01         	cmp	r3, #0x1
     f44: d022         	beq	0xf8c <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xb0> @ imm = #0x44
     f46: 9b0a         	ldr	r3, [sp, #0x28]
     f48: 189a         	adds	r2, r3, r2
     f4a: 2301         	movs	r3, #0x1
     f4c: 56d3         	ldrsb	r3, [r2, r3]
     f4e: 428b         	cmp	r3, r1
     f50: dd00         	ble	0xf54 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x78> @ imm = #0x0
     f52: 1c40         	adds	r0, r0, #0x1
     f54: 9b03         	ldr	r3, [sp, #0xc]
     f56: 2b02         	cmp	r3, #0x2
     f58: d018         	beq	0xf8c <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xb0> @ imm = #0x30
     f5a: 2302         	movs	r3, #0x2
     f5c: 56d2         	ldrsb	r2, [r2, r3]
     f5e: 428a         	cmp	r2, r1
     f60: dd14         	ble	0xf8c <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xb0> @ imm = #0x28
     f62: 1c40         	adds	r0, r0, #0x1
     f64: e012         	b	0xf8c <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xb0> @ imm = #0x24
     f66: 2111         	movs	r1, #0x11
     f68: 0409         	lsls	r1, r1, #0x10
     f6a: 9107         	str	r1, [sp, #0x1c]
     f6c: 1901         	adds	r1, r0, r4
     f6e: 0750         	lsls	r0, r2, #0x1d
     f70: 9406         	str	r4, [sp, #0x18]
     f72: d4c9         	bmi	0xf08 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x2c> @ imm = #-0x6e
     f74: 2000         	movs	r0, #0x0
     f76: 900a         	str	r0, [sp, #0x28]
     f78: 68bb         	ldr	r3, [r7, #0x8]
     f7a: 6828         	ldr	r0, [r5]
     f7c: 2800         	cmp	r0, #0x0
     f7e: d10c         	bne	0xf9a <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xbe> @ imm = #0x18
     f80: e024         	b	0xfcc <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xf0> @ imm = #0x48
     f82: 980a         	ldr	r0, [sp, #0x28]
     f84: f000 fa16    	bl	0x13b4 <core::str::count::do_count_chars::h3d51f7a5f3399c30> @ imm = #0x42c
     f88: e000         	b	0xf8c <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xb0> @ imm = #0x0
     f8a: 2000         	movs	r0, #0x0
     f8c: 9908         	ldr	r1, [sp, #0x20]
     f8e: 1841         	adds	r1, r0, r1
     f90: 9a05         	ldr	r2, [sp, #0x14]
     f92: 68bb         	ldr	r3, [r7, #0x8]
     f94: 6828         	ldr	r0, [r5]
     f96: 2800         	cmp	r0, #0x0
     f98: d018         	beq	0xfcc <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xf0> @ imm = #0x30
     f9a: 686e         	ldr	r6, [r5, #0x4]
     f9c: 428e         	cmp	r6, r1
     f9e: d915         	bls	0xfcc <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xf0> @ imm = #0x2a
     fa0: 0710         	lsls	r0, r2, #0x1c
     fa2: 9303         	str	r3, [sp, #0xc]
     fa4: d429         	bmi	0xffa <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x11e> @ imm = #0x52
     fa6: 2020         	movs	r0, #0x20
     fa8: 5c28         	ldrb	r0, [r5, r0]
     faa: 1a76         	subs	r6, r6, r1
     fac: 0081         	lsls	r1, r0, #0x2
     fae: a201         	adr	r2, #4 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0xd7>
     fb0: 5851         	ldr	r1, [r2, r1]
     fb2: 468f         	mov	pc, r1
     fb4: c9 10 00 00  	.word	0x000010c9
     fb8: c5 0f 00 00  	.word	0x00000fc5
     fbc: c3 10 00 00  	.word	0x000010c3
     fc0: c5 0f 00 00  	.word	0x00000fc5
     fc4: 2100         	movs	r1, #0x0
     fc6: 4630         	mov	r0, r6
     fc8: 460e         	mov	r6, r1
     fca: e07d         	b	0x10c8 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x1ec> @ imm = #0xfa
     fcc: 461e         	mov	r6, r3
     fce: 696c         	ldr	r4, [r5, #0x14]
     fd0: 69ad         	ldr	r5, [r5, #0x18]
     fd2: 9809         	ldr	r0, [sp, #0x24]
     fd4: 9000         	str	r0, [sp]
     fd6: 4620         	mov	r0, r4
     fd8: 4629         	mov	r1, r5
     fda: 9a07         	ldr	r2, [sp, #0x1c]
     fdc: 9b0a         	ldr	r3, [sp, #0x28]
     fde: f000 f8af    	bl	0x1140 <core::fmt::Formatter::pad_integral::write_prefix::h5196611caa50def1> @ imm = #0x15e
     fe2: 2800         	cmp	r0, #0x0
     fe4: d002         	beq	0xfec <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x110> @ imm = #0x4
     fe6: 2001         	movs	r0, #0x1
     fe8: b00b         	add	sp, #0x2c
     fea: bdf0         	pop	{r4, r5, r6, r7, pc}
     fec: 68eb         	ldr	r3, [r5, #0xc]
     fee: 4620         	mov	r0, r4
     ff0: 4631         	mov	r1, r6
     ff2: 9a06         	ldr	r2, [sp, #0x18]
     ff4: 4798         	blx	r3
     ff6: b00b         	add	sp, #0x2c
     ff8: bdf0         	pop	{r4, r5, r6, r7, pc}
     ffa: 9108         	str	r1, [sp, #0x20]
     ffc: 2020         	movs	r0, #0x20
     ffe: 5c29         	ldrb	r1, [r5, r0]
    1000: 9102         	str	r1, [sp, #0x8]
    1002: 2101         	movs	r1, #0x1
    1004: 9105         	str	r1, [sp, #0x14]
    1006: 5429         	strb	r1, [r5, r0]
    1008: 6928         	ldr	r0, [r5, #0x10]
    100a: 9001         	str	r0, [sp, #0x4]
    100c: 2030         	movs	r0, #0x30
    100e: 6128         	str	r0, [r5, #0x10]
    1010: 696c         	ldr	r4, [r5, #0x14]
    1012: 9504         	str	r5, [sp, #0x10]
    1014: 69ad         	ldr	r5, [r5, #0x18]
    1016: 9809         	ldr	r0, [sp, #0x24]
    1018: 9000         	str	r0, [sp]
    101a: 4620         	mov	r0, r4
    101c: 4629         	mov	r1, r5
    101e: 9a07         	ldr	r2, [sp, #0x1c]
    1020: 9b0a         	ldr	r3, [sp, #0x28]
    1022: f000 f88d    	bl	0x1140 <core::fmt::Formatter::pad_integral::write_prefix::h5196611caa50def1> @ imm = #0x11a
    1026: 2800         	cmp	r0, #0x0
    1028: d02b         	beq	0x1082 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x1a6> @ imm = #0x56
    102a: 9805         	ldr	r0, [sp, #0x14]
    102c: b00b         	add	sp, #0x2c
    102e: bdf0         	pop	{r4, r5, r6, r7, pc}
    1030: 250c         	movs	r5, #0xc
    1032: 400d         	ands	r5, r1
    1034: 2000         	movs	r0, #0x0
    1036: 4602         	mov	r2, r0
    1038: e003         	b	0x1042 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x166> @ imm = #0x6
    103a: 1d12         	adds	r2, r2, #0x4
    103c: 4295         	cmp	r5, r2
    103e: d100         	bne	0x1042 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x166> @ imm = #0x0
    1040: e773         	b	0xf2a <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x4e> @ imm = #-0x11a
    1042: 990a         	ldr	r1, [sp, #0x28]
    1044: 568e         	ldrsb	r6, [r1, r2]
    1046: 2140         	movs	r1, #0x40
    1048: 43c9         	mvns	r1, r1
    104a: 428e         	cmp	r6, r1
    104c: dd00         	ble	0x1050 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x174> @ imm = #0x0
    104e: 1c40         	adds	r0, r0, #0x1
    1050: 9c0a         	ldr	r4, [sp, #0x28]
    1052: 18a6         	adds	r6, r4, r2
    1054: 2401         	movs	r4, #0x1
    1056: 5734         	ldrsb	r4, [r6, r4]
    1058: 428c         	cmp	r4, r1
    105a: dc07         	bgt	0x106c <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x190> @ imm = #0xe
    105c: 2402         	movs	r4, #0x2
    105e: 5734         	ldrsb	r4, [r6, r4]
    1060: 428c         	cmp	r4, r1
    1062: dc08         	bgt	0x1076 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x19a> @ imm = #0x10
    1064: 56f4         	ldrsb	r4, [r6, r3]
    1066: 428c         	cmp	r4, r1
    1068: dde7         	ble	0x103a <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x15e> @ imm = #-0x32
    106a: e008         	b	0x107e <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x1a2> @ imm = #0x10
    106c: 1c40         	adds	r0, r0, #0x1
    106e: 2402         	movs	r4, #0x2
    1070: 5734         	ldrsb	r4, [r6, r4]
    1072: 428c         	cmp	r4, r1
    1074: ddf6         	ble	0x1064 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x188> @ imm = #-0x14
    1076: 1c40         	adds	r0, r0, #0x1
    1078: 56f4         	ldrsb	r4, [r6, r3]
    107a: 428c         	cmp	r4, r1
    107c: dddd         	ble	0x103a <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x15e> @ imm = #-0x46
    107e: 1c40         	adds	r0, r0, #0x1
    1080: e7db         	b	0x103a <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x15e> @ imm = #-0x4a
    1082: 9804         	ldr	r0, [sp, #0x10]
    1084: 3020         	adds	r0, #0x20
    1086: 900a         	str	r0, [sp, #0x28]
    1088: 9808         	ldr	r0, [sp, #0x20]
    108a: 1a30         	subs	r0, r6, r0
    108c: 1c46         	adds	r6, r0, #0x1
    108e: 1e76         	subs	r6, r6, #0x1
    1090: d008         	beq	0x10a4 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x1c8> @ imm = #0x10
    1092: 692a         	ldr	r2, [r5, #0x10]
    1094: 2130         	movs	r1, #0x30
    1096: 4620         	mov	r0, r4
    1098: 4790         	blx	r2
    109a: 2800         	cmp	r0, #0x0
    109c: d0f7         	beq	0x108e <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x1b2> @ imm = #-0x12
    109e: 9805         	ldr	r0, [sp, #0x14]
    10a0: b00b         	add	sp, #0x2c
    10a2: bdf0         	pop	{r4, r5, r6, r7, pc}
    10a4: 68eb         	ldr	r3, [r5, #0xc]
    10a6: 4620         	mov	r0, r4
    10a8: 9903         	ldr	r1, [sp, #0xc]
    10aa: 9a06         	ldr	r2, [sp, #0x18]
    10ac: 4798         	blx	r3
    10ae: 2800         	cmp	r0, #0x0
    10b0: 9805         	ldr	r0, [sp, #0x14]
    10b2: d143         	bne	0x113c <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x260> @ imm = #0x86
    10b4: 9802         	ldr	r0, [sp, #0x8]
    10b6: 990a         	ldr	r1, [sp, #0x28]
    10b8: 7008         	strb	r0, [r1]
    10ba: 9804         	ldr	r0, [sp, #0x10]
    10bc: 9901         	ldr	r1, [sp, #0x4]
    10be: 6101         	str	r1, [r0, #0x10]
    10c0: e03b         	b	0x113a <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x25e> @ imm = #0x76
    10c2: 0870         	lsrs	r0, r6, #0x1
    10c4: 1c71         	adds	r1, r6, #0x1
    10c6: 084e         	lsrs	r6, r1, #0x1
    10c8: 9605         	str	r6, [sp, #0x14]
    10ca: 1c44         	adds	r4, r0, #0x1
    10cc: 6928         	ldr	r0, [r5, #0x10]
    10ce: 9008         	str	r0, [sp, #0x20]
    10d0: 4628         	mov	r0, r5
    10d2: 696d         	ldr	r5, [r5, #0x14]
    10d4: 6986         	ldr	r6, [r0, #0x18]
    10d6: 1e64         	subs	r4, r4, #0x1
    10d8: d006         	beq	0x10e8 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x20c> @ imm = #0xc
    10da: 6932         	ldr	r2, [r6, #0x10]
    10dc: 4628         	mov	r0, r5
    10de: 9908         	ldr	r1, [sp, #0x20]
    10e0: 4790         	blx	r2
    10e2: 2800         	cmp	r0, #0x0
    10e4: d0f7         	beq	0x10d6 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x1fa> @ imm = #-0x12
    10e6: e77e         	b	0xfe6 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x10a> @ imm = #-0x104
    10e8: 9809         	ldr	r0, [sp, #0x24]
    10ea: 9000         	str	r0, [sp]
    10ec: 4628         	mov	r0, r5
    10ee: 4631         	mov	r1, r6
    10f0: 9a07         	ldr	r2, [sp, #0x1c]
    10f2: 9b0a         	ldr	r3, [sp, #0x28]
    10f4: f000 f824    	bl	0x1140 <core::fmt::Formatter::pad_integral::write_prefix::h5196611caa50def1> @ imm = #0x48
    10f8: 2401         	movs	r4, #0x1
    10fa: 2800         	cmp	r0, #0x0
    10fc: d002         	beq	0x1104 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x228> @ imm = #0x4
    10fe: 4620         	mov	r0, r4
    1100: b00b         	add	sp, #0x2c
    1102: bdf0         	pop	{r4, r5, r6, r7, pc}
    1104: 68f3         	ldr	r3, [r6, #0xc]
    1106: 4628         	mov	r0, r5
    1108: 9903         	ldr	r1, [sp, #0xc]
    110a: 9a06         	ldr	r2, [sp, #0x18]
    110c: 4798         	blx	r3
    110e: 2800         	cmp	r0, #0x0
    1110: 4620         	mov	r0, r4
    1112: d113         	bne	0x113c <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x260> @ imm = #0x26
    1114: 2400         	movs	r4, #0x0
    1116: 9805         	ldr	r0, [sp, #0x14]
    1118: 42a0         	cmp	r0, r4
    111a: d009         	beq	0x1130 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x254> @ imm = #0x12
    111c: 6932         	ldr	r2, [r6, #0x10]
    111e: 4628         	mov	r0, r5
    1120: 9908         	ldr	r1, [sp, #0x20]
    1122: 4790         	blx	r2
    1124: 1c64         	adds	r4, r4, #0x1
    1126: 2800         	cmp	r0, #0x0
    1128: d0f5         	beq	0x1116 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x23a> @ imm = #-0x16
    112a: 1e60         	subs	r0, r4, #0x1
    112c: 9905         	ldr	r1, [sp, #0x14]
    112e: e001         	b	0x1134 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x258> @ imm = #0x2
    1130: 9905         	ldr	r1, [sp, #0x14]
    1132: 4608         	mov	r0, r1
    1134: 4288         	cmp	r0, r1
    1136: d200         	bhs	0x113a <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x25e> @ imm = #0x0
    1138: e755         	b	0xfe6 <core::fmt::Formatter::pad_integral::hd877b7fcc7734582+0x10a> @ imm = #-0x156
    113a: 2000         	movs	r0, #0x0
    113c: b00b         	add	sp, #0x2c
    113e: bdf0         	pop	{r4, r5, r6, r7, pc}

Disassembly of section .text.core::fmt::Formatter::pad_integral::write_prefix::h5196611caa50def1:

00001140 <core::fmt::Formatter::pad_integral::write_prefix::h5196611caa50def1>:
    1140: b5f0         	push	{r4, r5, r6, r7, lr}
    1142: af03         	add	r7, sp, #0xc
    1144: b081         	sub	sp, #0x4
    1146: 461c         	mov	r4, r3
    1148: 460d         	mov	r5, r1
    114a: 2111         	movs	r1, #0x11
    114c: 0409         	lsls	r1, r1, #0x10
    114e: 428a         	cmp	r2, r1
    1150: d00a         	beq	0x1168 <core::fmt::Formatter::pad_integral::write_prefix::h5196611caa50def1+0x28> @ imm = #0x14
    1152: 692b         	ldr	r3, [r5, #0x10]
    1154: 4606         	mov	r6, r0
    1156: 4611         	mov	r1, r2
    1158: 4798         	blx	r3
    115a: 4601         	mov	r1, r0
    115c: 4630         	mov	r0, r6
    115e: 2900         	cmp	r1, #0x0
    1160: d002         	beq	0x1168 <core::fmt::Formatter::pad_integral::write_prefix::h5196611caa50def1+0x28> @ imm = #0x4
    1162: 2001         	movs	r0, #0x1
    1164: b001         	add	sp, #0x4
    1166: bdf0         	pop	{r4, r5, r6, r7, pc}
    1168: 2c00         	cmp	r4, #0x0
    116a: d005         	beq	0x1178 <core::fmt::Formatter::pad_integral::write_prefix::h5196611caa50def1+0x38> @ imm = #0xa
    116c: 68ba         	ldr	r2, [r7, #0x8]
    116e: 68eb         	ldr	r3, [r5, #0xc]
    1170: 4621         	mov	r1, r4
    1172: 4798         	blx	r3
    1174: b001         	add	sp, #0x4
    1176: bdf0         	pop	{r4, r5, r6, r7, pc}
    1178: 2000         	movs	r0, #0x0
    117a: b001         	add	sp, #0x4
    117c: bdf0         	pop	{r4, r5, r6, r7, pc}

Disassembly of section .text.core::fmt::Formatter::pad::h3b94c4012190d009:

00001180 <core::fmt::Formatter::pad::h3b94c4012190d009>:
    1180: b5f0         	push	{r4, r5, r6, r7, lr}
    1182: af03         	add	r7, sp, #0xc
    1184: b085         	sub	sp, #0x14
    1186: 9202         	str	r2, [sp, #0x8]
    1188: 460e         	mov	r6, r1
    118a: 6882         	ldr	r2, [r0, #0x8]
    118c: 9003         	str	r0, [sp, #0xc]
    118e: 6801         	ldr	r1, [r0]
    1190: 2900         	cmp	r1, #0x0
    1192: d102         	bne	0x119a <core::fmt::Formatter::pad::h3b94c4012190d009+0x1a> @ imm = #0x4
    1194: 07d3         	lsls	r3, r2, #0x1f
    1196: d100         	bne	0x119a <core::fmt::Formatter::pad::h3b94c4012190d009+0x1a> @ imm = #0x0
    1198: e08e         	b	0x12b8 <core::fmt::Formatter::pad::h3b94c4012190d009+0x138> @ imm = #0x11c
    119a: 07d2         	lsls	r2, r2, #0x1f
    119c: d040         	beq	0x1220 <core::fmt::Formatter::pad::h3b94c4012190d009+0xa0> @ imm = #0x80
    119e: 9802         	ldr	r0, [sp, #0x8]
    11a0: 1833         	adds	r3, r6, r0
    11a2: 9803         	ldr	r0, [sp, #0xc]
    11a4: 68c4         	ldr	r4, [r0, #0xc]
    11a6: 2200         	movs	r2, #0x0
    11a8: 4630         	mov	r0, r6
    11aa: 2c00         	cmp	r4, #0x0
    11ac: d10e         	bne	0x11cc <core::fmt::Formatter::pad::h3b94c4012190d009+0x4c> @ imm = #0x1c
    11ae: 429e         	cmp	r6, r3
    11b0: d01e         	beq	0x11f0 <core::fmt::Formatter::pad::h3b94c4012190d009+0x70> @ imm = #0x3c
    11b2: 2300         	movs	r3, #0x0
    11b4: 56f4         	ldrsb	r4, [r6, r3]
    11b6: 2c00         	cmp	r4, #0x0
    11b8: d41c         	bmi	0x11f4 <core::fmt::Formatter::pad::h3b94c4012190d009+0x74> @ imm = #0x38
    11ba: 2a00         	cmp	r2, #0x0
    11bc: 4606         	mov	r6, r0
    11be: d11e         	bne	0x11fe <core::fmt::Formatter::pad::h3b94c4012190d009+0x7e> @ imm = #0x3c
    11c0: e027         	b	0x1212 <core::fmt::Formatter::pad::h3b94c4012190d009+0x92> @ imm = #0x4e
    11c2: 1c6e         	adds	r6, r5, #0x1
    11c4: 1b75         	subs	r5, r6, r5
    11c6: 18aa         	adds	r2, r5, r2
    11c8: 1e64         	subs	r4, r4, #0x1
    11ca: d0f0         	beq	0x11ae <core::fmt::Formatter::pad::h3b94c4012190d009+0x2e> @ imm = #-0x20
    11cc: 429e         	cmp	r6, r3
    11ce: d00f         	beq	0x11f0 <core::fmt::Formatter::pad::h3b94c4012190d009+0x70> @ imm = #0x1e
    11d0: 4635         	mov	r5, r6
    11d2: 2600         	movs	r6, #0x0
    11d4: 57ae         	ldrsb	r6, [r5, r6]
    11d6: 2e00         	cmp	r6, #0x0
    11d8: d5f3         	bpl	0x11c2 <core::fmt::Formatter::pad::h3b94c4012190d009+0x42> @ imm = #-0x1a
    11da: b2f6         	uxtb	r6, r6
    11dc: 2ee0         	cmp	r6, #0xe0
    11de: d303         	blo	0x11e8 <core::fmt::Formatter::pad::h3b94c4012190d009+0x68> @ imm = #0x6
    11e0: 2ef0         	cmp	r6, #0xf0
    11e2: d303         	blo	0x11ec <core::fmt::Formatter::pad::h3b94c4012190d009+0x6c> @ imm = #0x6
    11e4: 1d2e         	adds	r6, r5, #0x4
    11e6: e7ed         	b	0x11c4 <core::fmt::Formatter::pad::h3b94c4012190d009+0x44> @ imm = #-0x26
    11e8: 1cae         	adds	r6, r5, #0x2
    11ea: e7eb         	b	0x11c4 <core::fmt::Formatter::pad::h3b94c4012190d009+0x44> @ imm = #-0x2a
    11ec: 1cee         	adds	r6, r5, #0x3
    11ee: e7e9         	b	0x11c4 <core::fmt::Formatter::pad::h3b94c4012190d009+0x44> @ imm = #-0x2e
    11f0: 4606         	mov	r6, r0
    11f2: e015         	b	0x1220 <core::fmt::Formatter::pad::h3b94c4012190d009+0xa0> @ imm = #0x2a
    11f4: b2e4         	uxtb	r4, r4
    11f6: 2ce0         	cmp	r4, #0xe0
    11f8: 2a00         	cmp	r2, #0x0
    11fa: 4606         	mov	r6, r0
    11fc: d009         	beq	0x1212 <core::fmt::Formatter::pad::h3b94c4012190d009+0x92> @ imm = #0x12
    11fe: 9802         	ldr	r0, [sp, #0x8]
    1200: 4282         	cmp	r2, r0
    1202: d205         	bhs	0x1210 <core::fmt::Formatter::pad::h3b94c4012190d009+0x90> @ imm = #0xa
    1204: 56b4         	ldrsb	r4, [r6, r2]
    1206: 2540         	movs	r5, #0x40
    1208: 43ed         	mvns	r5, r5
    120a: 42ac         	cmp	r4, r5
    120c: dc01         	bgt	0x1212 <core::fmt::Formatter::pad::h3b94c4012190d009+0x92> @ imm = #0x2
    120e: e001         	b	0x1214 <core::fmt::Formatter::pad::h3b94c4012190d009+0x94> @ imm = #0x2
    1210: d100         	bne	0x1214 <core::fmt::Formatter::pad::h3b94c4012190d009+0x94> @ imm = #0x0
    1212: 4633         	mov	r3, r6
    1214: 2b00         	cmp	r3, #0x0
    1216: d000         	beq	0x121a <core::fmt::Formatter::pad::h3b94c4012190d009+0x9a> @ imm = #0x0
    1218: 9202         	str	r2, [sp, #0x8]
    121a: 2b00         	cmp	r3, #0x0
    121c: d000         	beq	0x1220 <core::fmt::Formatter::pad::h3b94c4012190d009+0xa0> @ imm = #0x0
    121e: 461e         	mov	r6, r3
    1220: 2900         	cmp	r1, #0x0
    1222: d049         	beq	0x12b8 <core::fmt::Formatter::pad::h3b94c4012190d009+0x138> @ imm = #0x92
    1224: 9803         	ldr	r0, [sp, #0xc]
    1226: 6840         	ldr	r0, [r0, #0x4]
    1228: 9902         	ldr	r1, [sp, #0x8]
    122a: 2910         	cmp	r1, #0x10
    122c: 9001         	str	r0, [sp, #0x4]
    122e: d228         	bhs	0x1282 <core::fmt::Formatter::pad::h3b94c4012190d009+0x102> @ imm = #0x50
    1230: 2900         	cmp	r1, #0x0
    1232: d03d         	beq	0x12b0 <core::fmt::Formatter::pad::h3b94c4012190d009+0x130> @ imm = #0x7a
    1234: 2203         	movs	r2, #0x3
    1236: 4608         	mov	r0, r1
    1238: 9204         	str	r2, [sp, #0x10]
    123a: 4010         	ands	r0, r2
    123c: 9000         	str	r0, [sp]
    123e: 2904         	cmp	r1, #0x4
    1240: d244         	bhs	0x12cc <core::fmt::Formatter::pad::h3b94c4012190d009+0x14c> @ imm = #0x88
    1242: 2100         	movs	r1, #0x0
    1244: 460b         	mov	r3, r1
    1246: 9800         	ldr	r0, [sp]
    1248: 2800         	cmp	r0, #0x0
    124a: d01e         	beq	0x128a <core::fmt::Formatter::pad::h3b94c4012190d009+0x10a> @ imm = #0x3c
    124c: 56f0         	ldrsb	r0, [r6, r3]
    124e: 2240         	movs	r2, #0x40
    1250: 43d2         	mvns	r2, r2
    1252: 4290         	cmp	r0, r2
    1254: dd00         	ble	0x1258 <core::fmt::Formatter::pad::h3b94c4012190d009+0xd8> @ imm = #0x0
    1256: 1c49         	adds	r1, r1, #0x1
    1258: 9800         	ldr	r0, [sp]
    125a: 2801         	cmp	r0, #0x1
    125c: d015         	beq	0x128a <core::fmt::Formatter::pad::h3b94c4012190d009+0x10a> @ imm = #0x2a
    125e: 199b         	adds	r3, r3, r6
    1260: 2001         	movs	r0, #0x1
    1262: 5618         	ldrsb	r0, [r3, r0]
    1264: 4290         	cmp	r0, r2
    1266: dd00         	ble	0x126a <core::fmt::Formatter::pad::h3b94c4012190d009+0xea> @ imm = #0x0
    1268: 1c49         	adds	r1, r1, #0x1
    126a: 9800         	ldr	r0, [sp]
    126c: 2802         	cmp	r0, #0x2
    126e: d00c         	beq	0x128a <core::fmt::Formatter::pad::h3b94c4012190d009+0x10a> @ imm = #0x18
    1270: 2002         	movs	r0, #0x2
    1272: 5618         	ldrsb	r0, [r3, r0]
    1274: 4290         	cmp	r0, r2
    1276: dd08         	ble	0x128a <core::fmt::Formatter::pad::h3b94c4012190d009+0x10a> @ imm = #0x10
    1278: 1c49         	adds	r1, r1, #0x1
    127a: 9801         	ldr	r0, [sp, #0x4]
    127c: 4288         	cmp	r0, r1
    127e: d807         	bhi	0x1290 <core::fmt::Formatter::pad::h3b94c4012190d009+0x110> @ imm = #0xe
    1280: e01a         	b	0x12b8 <core::fmt::Formatter::pad::h3b94c4012190d009+0x138> @ imm = #0x34
    1282: 4630         	mov	r0, r6
    1284: f000 f896    	bl	0x13b4 <core::str::count::do_count_chars::h3d51f7a5f3399c30> @ imm = #0x12c
    1288: 4601         	mov	r1, r0
    128a: 9801         	ldr	r0, [sp, #0x4]
    128c: 4288         	cmp	r0, r1
    128e: d913         	bls	0x12b8 <core::fmt::Formatter::pad::h3b94c4012190d009+0x138> @ imm = #0x26
    1290: 1a43         	subs	r3, r0, r1
    1292: 2120         	movs	r1, #0x20
    1294: 9803         	ldr	r0, [sp, #0xc]
    1296: 5c42         	ldrb	r2, [r0, r1]
    1298: 2100         	movs	r1, #0x0
    129a: 9600         	str	r6, [sp]
    129c: 447a         	add	r2, pc
    129e: 7912         	ldrb	r2, [r2, #0x4]
    12a0: 0052         	lsls	r2, r2, #0x1
    12a2: 4497         	add	pc, r2
    12a4: 37 01 34 37  	.word	0x37340137
    12a8: 2000         	movs	r0, #0x0
    12aa: 4619         	mov	r1, r3
    12ac: 4603         	mov	r3, r0
    12ae: e031         	b	0x1314 <core::fmt::Formatter::pad::h3b94c4012190d009+0x194> @ imm = #0x62
    12b0: 2100         	movs	r1, #0x0
    12b2: 9801         	ldr	r0, [sp, #0x4]
    12b4: 4288         	cmp	r0, r1
    12b6: d8eb         	bhi	0x1290 <core::fmt::Formatter::pad::h3b94c4012190d009+0x110> @ imm = #-0x2a
    12b8: 9803         	ldr	r0, [sp, #0xc]
    12ba: 6941         	ldr	r1, [r0, #0x14]
    12bc: 6980         	ldr	r0, [r0, #0x18]
    12be: 68c3         	ldr	r3, [r0, #0xc]
    12c0: 4608         	mov	r0, r1
    12c2: 4631         	mov	r1, r6
    12c4: 9a02         	ldr	r2, [sp, #0x8]
    12c6: 4798         	blx	r3
    12c8: b005         	add	sp, #0x14
    12ca: bdf0         	pop	{r4, r5, r6, r7, pc}
    12cc: 220c         	movs	r2, #0xc
    12ce: 400a         	ands	r2, r1
    12d0: 2100         	movs	r1, #0x0
    12d2: 460b         	mov	r3, r1
    12d4: e002         	b	0x12dc <core::fmt::Formatter::pad::h3b94c4012190d009+0x15c> @ imm = #0x4
    12d6: 1d1b         	adds	r3, r3, #0x4
    12d8: 429a         	cmp	r2, r3
    12da: d0b4         	beq	0x1246 <core::fmt::Formatter::pad::h3b94c4012190d009+0xc6> @ imm = #-0x98
    12dc: 56f4         	ldrsb	r4, [r6, r3]
    12de: 2540         	movs	r5, #0x40
    12e0: 43ed         	mvns	r5, r5
    12e2: 42ac         	cmp	r4, r5
    12e4: dd00         	ble	0x12e8 <core::fmt::Formatter::pad::h3b94c4012190d009+0x168> @ imm = #0x0
    12e6: 1c49         	adds	r1, r1, #0x1
    12e8: 4630         	mov	r0, r6
    12ea: 18f4         	adds	r4, r6, r3
    12ec: 2601         	movs	r6, #0x1
    12ee: 57a6         	ldrsb	r6, [r4, r6]
    12f0: 42ae         	cmp	r6, r5
    12f2: dd00         	ble	0x12f6 <core::fmt::Formatter::pad::h3b94c4012190d009+0x176> @ imm = #0x0
    12f4: 1c49         	adds	r1, r1, #0x1
    12f6: 2602         	movs	r6, #0x2
    12f8: 57a6         	ldrsb	r6, [r4, r6]
    12fa: 42ae         	cmp	r6, r5
    12fc: dd00         	ble	0x1300 <core::fmt::Formatter::pad::h3b94c4012190d009+0x180> @ imm = #0x0
    12fe: 1c49         	adds	r1, r1, #0x1
    1300: 4606         	mov	r6, r0
    1302: 9804         	ldr	r0, [sp, #0x10]
    1304: 5624         	ldrsb	r4, [r4, r0]
    1306: 42ac         	cmp	r4, r5
    1308: dde5         	ble	0x12d6 <core::fmt::Formatter::pad::h3b94c4012190d009+0x156> @ imm = #-0x36
    130a: 1c49         	adds	r1, r1, #0x1
    130c: e7e3         	b	0x12d6 <core::fmt::Formatter::pad::h3b94c4012190d009+0x156> @ imm = #-0x3a
    130e: 0859         	lsrs	r1, r3, #0x1
    1310: 1c58         	adds	r0, r3, #0x1
    1312: 0843         	lsrs	r3, r0, #0x1
    1314: 9301         	str	r3, [sp, #0x4]
    1316: 1c4e         	adds	r6, r1, #0x1
    1318: 9803         	ldr	r0, [sp, #0xc]
    131a: 6901         	ldr	r1, [r0, #0x10]
    131c: 9104         	str	r1, [sp, #0x10]
    131e: 6944         	ldr	r4, [r0, #0x14]
    1320: 6985         	ldr	r5, [r0, #0x18]
    1322: 1e76         	subs	r6, r6, #0x1
    1324: d006         	beq	0x1334 <core::fmt::Formatter::pad::h3b94c4012190d009+0x1b4> @ imm = #0xc
    1326: 692a         	ldr	r2, [r5, #0x10]
    1328: 4620         	mov	r0, r4
    132a: 9904         	ldr	r1, [sp, #0x10]
    132c: 4790         	blx	r2
    132e: 2800         	cmp	r0, #0x0
    1330: d0f7         	beq	0x1322 <core::fmt::Formatter::pad::h3b94c4012190d009+0x1a2> @ imm = #-0x12
    1332: e006         	b	0x1342 <core::fmt::Formatter::pad::h3b94c4012190d009+0x1c2> @ imm = #0xc
    1334: 68eb         	ldr	r3, [r5, #0xc]
    1336: 4620         	mov	r0, r4
    1338: 9900         	ldr	r1, [sp]
    133a: 9a02         	ldr	r2, [sp, #0x8]
    133c: 4798         	blx	r3
    133e: 2800         	cmp	r0, #0x0
    1340: d002         	beq	0x1348 <core::fmt::Formatter::pad::h3b94c4012190d009+0x1c8> @ imm = #0x4
    1342: 2001         	movs	r0, #0x1
    1344: b005         	add	sp, #0x14
    1346: bdf0         	pop	{r4, r5, r6, r7, pc}
    1348: 2600         	movs	r6, #0x0
    134a: 9901         	ldr	r1, [sp, #0x4]
    134c: 42b1         	cmp	r1, r6
    134e: d00d         	beq	0x136c <core::fmt::Formatter::pad::h3b94c4012190d009+0x1ec> @ imm = #0x1a
    1350: 692a         	ldr	r2, [r5, #0x10]
    1352: 4620         	mov	r0, r4
    1354: 9904         	ldr	r1, [sp, #0x10]
    1356: 4790         	blx	r2
    1358: 1c76         	adds	r6, r6, #0x1
    135a: 2800         	cmp	r0, #0x0
    135c: d0f5         	beq	0x134a <core::fmt::Formatter::pad::h3b94c4012190d009+0x1ca> @ imm = #-0x16
    135e: 1e70         	subs	r0, r6, #0x1
    1360: 9901         	ldr	r1, [sp, #0x4]
    1362: 4288         	cmp	r0, r1
    1364: d205         	bhs	0x1372 <core::fmt::Formatter::pad::h3b94c4012190d009+0x1f2> @ imm = #0xa
    1366: 2001         	movs	r0, #0x1
    1368: b005         	add	sp, #0x14
    136a: bdf0         	pop	{r4, r5, r6, r7, pc}
    136c: 4608         	mov	r0, r1
    136e: 4288         	cmp	r0, r1
    1370: d3f9         	blo	0x1366 <core::fmt::Formatter::pad::h3b94c4012190d009+0x1e6> @ imm = #-0xe
    1372: 2000         	movs	r0, #0x0
    1374: b005         	add	sp, #0x14
    1376: bdf0         	pop	{r4, r5, r6, r7, pc}

Disassembly of section .text.unlikely.core::slice::index::slice_start_index_len_fail::h0143d39f27fb17b8:

00001378 <core::slice::index::slice_start_index_len_fail::h0143d39f27fb17b8>:
    1378: b580         	push	{r7, lr}
    137a: af00         	add	r7, sp, #0x0
    137c: b08c         	sub	sp, #0x30
    137e: 9000         	str	r0, [sp]
    1380: 9101         	str	r1, [sp, #0x4]
    1382: 2000         	movs	r0, #0x0
    1384: 9006         	str	r0, [sp, #0x18]
    1386: 2002         	movs	r0, #0x2
    1388: 9003         	str	r0, [sp, #0xc]
    138a: 4908         	ldr	r1, [pc, #0x20]         @ 0x13ac <core::slice::index::slice_start_index_len_fail::h0143d39f27fb17b8+0x34>
    138c: 9102         	str	r1, [sp, #0x8]
    138e: 9005         	str	r0, [sp, #0x14]
    1390: a808         	add	r0, sp, #0x20
    1392: 9004         	str	r0, [sp, #0x10]
    1394: 4806         	ldr	r0, [pc, #0x18]         @ 0x13b0 <core::slice::index::slice_start_index_len_fail::h0143d39f27fb17b8+0x38>
    1396: 900b         	str	r0, [sp, #0x2c]
    1398: a901         	add	r1, sp, #0x4
    139a: 910a         	str	r1, [sp, #0x28]
    139c: 9009         	str	r0, [sp, #0x24]
    139e: 4668         	mov	r0, sp
    13a0: 9008         	str	r0, [sp, #0x20]
    13a2: a802         	add	r0, sp, #0x8
    13a4: 4611         	mov	r1, r2
    13a6: f7ff fcbb    	bl	0xd20 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #-0x68a
    13aa: 46c0         	mov	r8, r8
    13ac: 20 05 00 00  	.word	0x00000520
    13b0: 71 18 00 00  	.word	0x00001871

Disassembly of section .text.core::str::count::do_count_chars::h3d51f7a5f3399c30:

000013b4 <core::str::count::do_count_chars::h3d51f7a5f3399c30>:
    13b4: b5f0         	push	{r4, r5, r6, r7, lr}
    13b6: af03         	add	r7, sp, #0xc
    13b8: b088         	sub	sp, #0x20
    13ba: 4602         	mov	r2, r0
    13bc: 1cc0         	adds	r0, r0, #0x3
    13be: 2403         	movs	r4, #0x3
    13c0: 43a0         	bics	r0, r4
    13c2: 9006         	str	r0, [sp, #0x18]
    13c4: 1a86         	subs	r6, r0, r2
    13c6: 42b1         	cmp	r1, r6
    13c8: 9407         	str	r4, [sp, #0x1c]
    13ca: d200         	bhs	0x13ce <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x1a> @ imm = #0x0
    13cc: e16b         	b	0x16a6 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x2f2> @ imm = #0x2d6
    13ce: 1b8b         	subs	r3, r1, r6
    13d0: 0898         	lsrs	r0, r3, #0x2
    13d2: 9003         	str	r0, [sp, #0xc]
    13d4: d100         	bne	0x13d8 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x24> @ imm = #0x0
    13d6: e166         	b	0x16a6 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x2f2> @ imm = #0x2cc
    13d8: 9302         	str	r3, [sp, #0x8]
    13da: 4618         	mov	r0, r3
    13dc: 4020         	ands	r0, r4
    13de: 9004         	str	r0, [sp, #0x10]
    13e0: 2300         	movs	r3, #0x0
    13e2: 9806         	ldr	r0, [sp, #0x18]
    13e4: 4290         	cmp	r0, r2
    13e6: 9305         	str	r3, [sp, #0x14]
    13e8: d01f         	beq	0x142a <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x76> @ imm = #0x3e
    13ea: 1a11         	subs	r1, r2, r0
    13ec: 43e3         	mvns	r3, r4
    13ee: 4299         	cmp	r1, r3
    13f0: d800         	bhi	0x13f4 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x40> @ imm = #0x0
    13f2: e1db         	b	0x17ac <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x3f8> @ imm = #0x3b6
    13f4: 2300         	movs	r3, #0x0
    13f6: 4619         	mov	r1, r3
    13f8: 9806         	ldr	r0, [sp, #0x18]
    13fa: 4290         	cmp	r0, r2
    13fc: 9c07         	ldr	r4, [sp, #0x1c]
    13fe: d014         	beq	0x142a <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x76> @ imm = #0x28
    1400: 5655         	ldrsb	r5, [r2, r1]
    1402: 2040         	movs	r0, #0x40
    1404: 43c0         	mvns	r0, r0
    1406: 4285         	cmp	r5, r0
    1408: dd00         	ble	0x140c <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x58> @ imm = #0x0
    140a: 1c5b         	adds	r3, r3, #0x1
    140c: 2e01         	cmp	r6, #0x1
    140e: d00c         	beq	0x142a <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x76> @ imm = #0x18
    1410: 1851         	adds	r1, r2, r1
    1412: 2501         	movs	r5, #0x1
    1414: 574d         	ldrsb	r5, [r1, r5]
    1416: 4285         	cmp	r5, r0
    1418: dd00         	ble	0x141c <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x68> @ imm = #0x0
    141a: 1c5b         	adds	r3, r3, #0x1
    141c: 2e02         	cmp	r6, #0x2
    141e: d004         	beq	0x142a <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x76> @ imm = #0x8
    1420: 2502         	movs	r5, #0x2
    1422: 5749         	ldrsb	r1, [r1, r5]
    1424: 4281         	cmp	r1, r0
    1426: dd00         	ble	0x142a <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x76> @ imm = #0x0
    1428: 1c5b         	adds	r3, r3, #0x1
    142a: 1991         	adds	r1, r2, r6
    142c: 9804         	ldr	r0, [sp, #0x10]
    142e: 2800         	cmp	r0, #0x0
    1430: d021         	beq	0x1476 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xc2> @ imm = #0x42
    1432: 9802         	ldr	r0, [sp, #0x8]
    1434: 43a0         	bics	r0, r4
    1436: 460d         	mov	r5, r1
    1438: 1808         	adds	r0, r1, r0
    143a: 2100         	movs	r1, #0x0
    143c: 9105         	str	r1, [sp, #0x14]
    143e: 5642         	ldrsb	r2, [r0, r1]
    1440: 2140         	movs	r1, #0x40
    1442: 43c9         	mvns	r1, r1
    1444: 428a         	cmp	r2, r1
    1446: dd01         	ble	0x144c <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x98> @ imm = #0x2
    1448: 2201         	movs	r2, #0x1
    144a: 9205         	str	r2, [sp, #0x14]
    144c: 9a04         	ldr	r2, [sp, #0x10]
    144e: 2a01         	cmp	r2, #0x1
    1450: d010         	beq	0x1474 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xc0> @ imm = #0x20
    1452: 2201         	movs	r2, #0x1
    1454: 5682         	ldrsb	r2, [r0, r2]
    1456: 428a         	cmp	r2, r1
    1458: dd02         	ble	0x1460 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xac> @ imm = #0x4
    145a: 9a05         	ldr	r2, [sp, #0x14]
    145c: 1c52         	adds	r2, r2, #0x1
    145e: 9205         	str	r2, [sp, #0x14]
    1460: 9a04         	ldr	r2, [sp, #0x10]
    1462: 2a02         	cmp	r2, #0x2
    1464: d006         	beq	0x1474 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xc0> @ imm = #0xc
    1466: 2202         	movs	r2, #0x2
    1468: 5680         	ldrsb	r0, [r0, r2]
    146a: 4288         	cmp	r0, r1
    146c: dd02         	ble	0x1474 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xc0> @ imm = #0x4
    146e: 9805         	ldr	r0, [sp, #0x14]
    1470: 1c40         	adds	r0, r0, #0x1
    1472: 9005         	str	r0, [sp, #0x14]
    1474: 4629         	mov	r1, r5
    1476: 9805         	ldr	r0, [sp, #0x14]
    1478: 18c0         	adds	r0, r0, r3
    147a: 9006         	str	r0, [sp, #0x18]
    147c: 48e9         	ldr	r0, [pc, #0x3a4]        @ 0x1824 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x470>
    147e: 9a03         	ldr	r2, [sp, #0xc]
    1480: e014         	b	0x14ac <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xf8> @ imm = #0x28
    1482: 2300         	movs	r3, #0x0
    1484: 1b12         	subs	r2, r2, r4
    1486: 1869         	adds	r1, r5, r1
    1488: 9104         	str	r1, [sp, #0x10]
    148a: 0a19         	lsrs	r1, r3, #0x8
    148c: 462e         	mov	r6, r5
    148e: 4de4         	ldr	r5, [pc, #0x390]        @ 0x1820 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x46c>
    1490: 402b         	ands	r3, r5
    1492: 4029         	ands	r1, r5
    1494: 18c9         	adds	r1, r1, r3
    1496: 4be1         	ldr	r3, [pc, #0x384]        @ 0x181c <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x468>
    1498: 4359         	muls	r1, r3, r1
    149a: 0c09         	lsrs	r1, r1, #0x10
    149c: 9b06         	ldr	r3, [sp, #0x18]
    149e: 18cb         	adds	r3, r1, r3
    14a0: 9904         	ldr	r1, [sp, #0x10]
    14a2: 9306         	str	r3, [sp, #0x18]
    14a4: 9d05         	ldr	r5, [sp, #0x14]
    14a6: 2d00         	cmp	r5, #0x0
    14a8: d000         	beq	0x14ac <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xf8> @ imm = #0x0
    14aa: e147         	b	0x173c <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x388> @ imm = #0x28e
    14ac: 2a00         	cmp	r2, #0x0
    14ae: d100         	bne	0x14b2 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xfe> @ imm = #0x0
    14b0: e141         	b	0x1736 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x382> @ imm = #0x282
    14b2: 460d         	mov	r5, r1
    14b4: 2ac0         	cmp	r2, #0xc0
    14b6: 4614         	mov	r4, r2
    14b8: d300         	blo	0x14bc <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x108> @ imm = #0x0
    14ba: 24c0         	movs	r4, #0xc0
    14bc: 4621         	mov	r1, r4
    14be: 9b07         	ldr	r3, [sp, #0x1c]
    14c0: 4019         	ands	r1, r3
    14c2: 9105         	str	r1, [sp, #0x14]
    14c4: 00a1         	lsls	r1, r4, #0x2
    14c6: 2a04         	cmp	r2, #0x4
    14c8: d3db         	blo	0x1482 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xce> @ imm = #-0x4a
    14ca: 9402         	str	r4, [sp, #0x8]
    14cc: 9203         	str	r2, [sp, #0xc]
    14ce: 9101         	str	r1, [sp, #0x4]
    14d0: 3910         	subs	r1, #0x10
    14d2: 090b         	lsrs	r3, r1, #0x4
    14d4: 1c5a         	adds	r2, r3, #0x1
    14d6: 2930         	cmp	r1, #0x30
    14d8: 9500         	str	r5, [sp]
    14da: 9204         	str	r2, [sp, #0x10]
    14dc: d202         	bhs	0x14e4 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x130> @ imm = #0x4
    14de: 2300         	movs	r3, #0x0
    14e0: 462e         	mov	r6, r5
    14e2: e078         	b	0x15d6 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x222> @ imm = #0xf0
    14e4: 4611         	mov	r1, r2
    14e6: 9a07         	ldr	r2, [sp, #0x1c]
    14e8: 4391         	bics	r1, r2
    14ea: 2300         	movs	r3, #0x0
    14ec: 462e         	mov	r6, r5
    14ee: 6872         	ldr	r2, [r6, #0x4]
    14f0: 0994         	lsrs	r4, r2, #0x6
    14f2: 43d2         	mvns	r2, r2
    14f4: 09d2         	lsrs	r2, r2, #0x7
    14f6: 4322         	orrs	r2, r4
    14f8: 4002         	ands	r2, r0
    14fa: 6834         	ldr	r4, [r6]
    14fc: 09a5         	lsrs	r5, r4, #0x6
    14fe: 43e4         	mvns	r4, r4
    1500: 09e4         	lsrs	r4, r4, #0x7
    1502: 432c         	orrs	r4, r5
    1504: 4004         	ands	r4, r0
    1506: 18e3         	adds	r3, r4, r3
    1508: 18d2         	adds	r2, r2, r3
    150a: 68b3         	ldr	r3, [r6, #0x8]
    150c: 099c         	lsrs	r4, r3, #0x6
    150e: 43db         	mvns	r3, r3
    1510: 09db         	lsrs	r3, r3, #0x7
    1512: 4323         	orrs	r3, r4
    1514: 4003         	ands	r3, r0
    1516: 189a         	adds	r2, r3, r2
    1518: 68f3         	ldr	r3, [r6, #0xc]
    151a: 099c         	lsrs	r4, r3, #0x6
    151c: 43db         	mvns	r3, r3
    151e: 09db         	lsrs	r3, r3, #0x7
    1520: 4323         	orrs	r3, r4
    1522: 4003         	ands	r3, r0
    1524: 189a         	adds	r2, r3, r2
    1526: 6933         	ldr	r3, [r6, #0x10]
    1528: 099c         	lsrs	r4, r3, #0x6
    152a: 43db         	mvns	r3, r3
    152c: 09db         	lsrs	r3, r3, #0x7
    152e: 4323         	orrs	r3, r4
    1530: 4003         	ands	r3, r0
    1532: 189a         	adds	r2, r3, r2
    1534: 6973         	ldr	r3, [r6, #0x14]
    1536: 099c         	lsrs	r4, r3, #0x6
    1538: 43db         	mvns	r3, r3
    153a: 09db         	lsrs	r3, r3, #0x7
    153c: 4323         	orrs	r3, r4
    153e: 4003         	ands	r3, r0
    1540: 189a         	adds	r2, r3, r2
    1542: 69b3         	ldr	r3, [r6, #0x18]
    1544: 099c         	lsrs	r4, r3, #0x6
    1546: 43db         	mvns	r3, r3
    1548: 09db         	lsrs	r3, r3, #0x7
    154a: 4323         	orrs	r3, r4
    154c: 4003         	ands	r3, r0
    154e: 189a         	adds	r2, r3, r2
    1550: 69f3         	ldr	r3, [r6, #0x1c]
    1552: 099c         	lsrs	r4, r3, #0x6
    1554: 43db         	mvns	r3, r3
    1556: 09db         	lsrs	r3, r3, #0x7
    1558: 4323         	orrs	r3, r4
    155a: 4003         	ands	r3, r0
    155c: 189a         	adds	r2, r3, r2
    155e: 6a33         	ldr	r3, [r6, #0x20]
    1560: 099c         	lsrs	r4, r3, #0x6
    1562: 43db         	mvns	r3, r3
    1564: 09db         	lsrs	r3, r3, #0x7
    1566: 4323         	orrs	r3, r4
    1568: 4003         	ands	r3, r0
    156a: 189a         	adds	r2, r3, r2
    156c: 6a73         	ldr	r3, [r6, #0x24]
    156e: 099c         	lsrs	r4, r3, #0x6
    1570: 43db         	mvns	r3, r3
    1572: 09db         	lsrs	r3, r3, #0x7
    1574: 4323         	orrs	r3, r4
    1576: 4003         	ands	r3, r0
    1578: 189a         	adds	r2, r3, r2
    157a: 6ab3         	ldr	r3, [r6, #0x28]
    157c: 099c         	lsrs	r4, r3, #0x6
    157e: 43db         	mvns	r3, r3
    1580: 09db         	lsrs	r3, r3, #0x7
    1582: 4323         	orrs	r3, r4
    1584: 4003         	ands	r3, r0
    1586: 189a         	adds	r2, r3, r2
    1588: 6af3         	ldr	r3, [r6, #0x2c]
    158a: 099c         	lsrs	r4, r3, #0x6
    158c: 43db         	mvns	r3, r3
    158e: 09db         	lsrs	r3, r3, #0x7
    1590: 4323         	orrs	r3, r4
    1592: 4003         	ands	r3, r0
    1594: 189a         	adds	r2, r3, r2
    1596: 6b33         	ldr	r3, [r6, #0x30]
    1598: 099c         	lsrs	r4, r3, #0x6
    159a: 43db         	mvns	r3, r3
    159c: 09db         	lsrs	r3, r3, #0x7
    159e: 4323         	orrs	r3, r4
    15a0: 4003         	ands	r3, r0
    15a2: 189a         	adds	r2, r3, r2
    15a4: 6b73         	ldr	r3, [r6, #0x34]
    15a6: 099c         	lsrs	r4, r3, #0x6
    15a8: 43db         	mvns	r3, r3
    15aa: 09db         	lsrs	r3, r3, #0x7
    15ac: 4323         	orrs	r3, r4
    15ae: 4003         	ands	r3, r0
    15b0: 189a         	adds	r2, r3, r2
    15b2: 6bb3         	ldr	r3, [r6, #0x38]
    15b4: 099c         	lsrs	r4, r3, #0x6
    15b6: 43db         	mvns	r3, r3
    15b8: 09db         	lsrs	r3, r3, #0x7
    15ba: 4323         	orrs	r3, r4
    15bc: 4003         	ands	r3, r0
    15be: 189a         	adds	r2, r3, r2
    15c0: 6bf3         	ldr	r3, [r6, #0x3c]
    15c2: 099c         	lsrs	r4, r3, #0x6
    15c4: 43db         	mvns	r3, r3
    15c6: 09db         	lsrs	r3, r3, #0x7
    15c8: 4323         	orrs	r3, r4
    15ca: 4003         	ands	r3, r0
    15cc: 189b         	adds	r3, r3, r2
    15ce: 1f09         	subs	r1, r1, #0x4
    15d0: 3640         	adds	r6, #0x40
    15d2: 2900         	cmp	r1, #0x0
    15d4: d18b         	bne	0x14ee <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x13a> @ imm = #-0xea
    15d6: 9907         	ldr	r1, [sp, #0x1c]
    15d8: 9a04         	ldr	r2, [sp, #0x10]
    15da: 400a         	ands	r2, r1
    15dc: 9204         	str	r2, [sp, #0x10]
    15de: 9a03         	ldr	r2, [sp, #0xc]
    15e0: 9d00         	ldr	r5, [sp]
    15e2: 9c02         	ldr	r4, [sp, #0x8]
    15e4: 9901         	ldr	r1, [sp, #0x4]
    15e6: d100         	bne	0x15ea <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x236> @ imm = #0x0
    15e8: e74c         	b	0x1484 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xd0> @ imm = #-0x168
    15ea: 6871         	ldr	r1, [r6, #0x4]
    15ec: 098a         	lsrs	r2, r1, #0x6
    15ee: 43c9         	mvns	r1, r1
    15f0: 09c9         	lsrs	r1, r1, #0x7
    15f2: 4311         	orrs	r1, r2
    15f4: 4001         	ands	r1, r0
    15f6: 6832         	ldr	r2, [r6]
    15f8: 0994         	lsrs	r4, r2, #0x6
    15fa: 43d2         	mvns	r2, r2
    15fc: 09d2         	lsrs	r2, r2, #0x7
    15fe: 4322         	orrs	r2, r4
    1600: 4002         	ands	r2, r0
    1602: 18d2         	adds	r2, r2, r3
    1604: 1889         	adds	r1, r1, r2
    1606: 68b2         	ldr	r2, [r6, #0x8]
    1608: 0993         	lsrs	r3, r2, #0x6
    160a: 43d2         	mvns	r2, r2
    160c: 09d2         	lsrs	r2, r2, #0x7
    160e: 431a         	orrs	r2, r3
    1610: 4002         	ands	r2, r0
    1612: 1851         	adds	r1, r2, r1
    1614: 68f2         	ldr	r2, [r6, #0xc]
    1616: 0993         	lsrs	r3, r2, #0x6
    1618: 43d2         	mvns	r2, r2
    161a: 09d2         	lsrs	r2, r2, #0x7
    161c: 431a         	orrs	r2, r3
    161e: 4002         	ands	r2, r0
    1620: 1853         	adds	r3, r2, r1
    1622: 9a04         	ldr	r2, [sp, #0x10]
    1624: 2a01         	cmp	r2, #0x1
    1626: d03a         	beq	0x169e <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x2ea> @ imm = #0x74
    1628: 6971         	ldr	r1, [r6, #0x14]
    162a: 098a         	lsrs	r2, r1, #0x6
    162c: 43c9         	mvns	r1, r1
    162e: 09c9         	lsrs	r1, r1, #0x7
    1630: 4311         	orrs	r1, r2
    1632: 4001         	ands	r1, r0
    1634: 6932         	ldr	r2, [r6, #0x10]
    1636: 0994         	lsrs	r4, r2, #0x6
    1638: 43d2         	mvns	r2, r2
    163a: 09d2         	lsrs	r2, r2, #0x7
    163c: 4322         	orrs	r2, r4
    163e: 4002         	ands	r2, r0
    1640: 18d2         	adds	r2, r2, r3
    1642: 1889         	adds	r1, r1, r2
    1644: 69b2         	ldr	r2, [r6, #0x18]
    1646: 0993         	lsrs	r3, r2, #0x6
    1648: 43d2         	mvns	r2, r2
    164a: 09d2         	lsrs	r2, r2, #0x7
    164c: 431a         	orrs	r2, r3
    164e: 4002         	ands	r2, r0
    1650: 1851         	adds	r1, r2, r1
    1652: 69f2         	ldr	r2, [r6, #0x1c]
    1654: 0993         	lsrs	r3, r2, #0x6
    1656: 43d2         	mvns	r2, r2
    1658: 09d2         	lsrs	r2, r2, #0x7
    165a: 431a         	orrs	r2, r3
    165c: 4002         	ands	r2, r0
    165e: 1853         	adds	r3, r2, r1
    1660: 9904         	ldr	r1, [sp, #0x10]
    1662: 2902         	cmp	r1, #0x2
    1664: d01b         	beq	0x169e <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x2ea> @ imm = #0x36
    1666: 6a71         	ldr	r1, [r6, #0x24]
    1668: 098a         	lsrs	r2, r1, #0x6
    166a: 43c9         	mvns	r1, r1
    166c: 09c9         	lsrs	r1, r1, #0x7
    166e: 4311         	orrs	r1, r2
    1670: 4001         	ands	r1, r0
    1672: 6a32         	ldr	r2, [r6, #0x20]
    1674: 0994         	lsrs	r4, r2, #0x6
    1676: 43d2         	mvns	r2, r2
    1678: 09d2         	lsrs	r2, r2, #0x7
    167a: 4322         	orrs	r2, r4
    167c: 4002         	ands	r2, r0
    167e: 18d2         	adds	r2, r2, r3
    1680: 1889         	adds	r1, r1, r2
    1682: 6ab2         	ldr	r2, [r6, #0x28]
    1684: 0993         	lsrs	r3, r2, #0x6
    1686: 43d2         	mvns	r2, r2
    1688: 09d2         	lsrs	r2, r2, #0x7
    168a: 431a         	orrs	r2, r3
    168c: 4002         	ands	r2, r0
    168e: 1851         	adds	r1, r2, r1
    1690: 6af2         	ldr	r2, [r6, #0x2c]
    1692: 0993         	lsrs	r3, r2, #0x6
    1694: 43d2         	mvns	r2, r2
    1696: 09d2         	lsrs	r2, r2, #0x7
    1698: 431a         	orrs	r2, r3
    169a: 4002         	ands	r2, r0
    169c: 1853         	adds	r3, r2, r1
    169e: 9a03         	ldr	r2, [sp, #0xc]
    16a0: 9c02         	ldr	r4, [sp, #0x8]
    16a2: 9901         	ldr	r1, [sp, #0x4]
    16a4: e6ee         	b	0x1484 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0xd0> @ imm = #-0x224
    16a6: 2900         	cmp	r1, #0x0
    16a8: d008         	beq	0x16bc <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x308> @ imm = #0x10
    16aa: 4608         	mov	r0, r1
    16ac: 4020         	ands	r0, r4
    16ae: 9005         	str	r0, [sp, #0x14]
    16b0: 2904         	cmp	r1, #0x4
    16b2: 9206         	str	r2, [sp, #0x18]
    16b4: d205         	bhs	0x16c2 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x30e> @ imm = #0xa
    16b6: 2000         	movs	r0, #0x0
    16b8: 4604         	mov	r4, r0
    16ba: e02b         	b	0x1714 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x360> @ imm = #0x56
    16bc: 2000         	movs	r0, #0x0
    16be: b008         	add	sp, #0x20
    16c0: bdf0         	pop	{r4, r5, r6, r7, pc}
    16c2: 43a1         	bics	r1, r4
    16c4: 2000         	movs	r0, #0x0
    16c6: 4604         	mov	r4, r0
    16c8: e004         	b	0x16d4 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x320> @ imm = #0x8
    16ca: 4610         	mov	r0, r2
    16cc: 1d24         	adds	r4, r4, #0x4
    16ce: 42a1         	cmp	r1, r4
    16d0: 9a06         	ldr	r2, [sp, #0x18]
    16d2: d01f         	beq	0x1714 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x360> @ imm = #0x3e
    16d4: 5716         	ldrsb	r6, [r2, r4]
    16d6: 2540         	movs	r5, #0x40
    16d8: 43ed         	mvns	r5, r5
    16da: 42ae         	cmp	r6, r5
    16dc: dd00         	ble	0x16e0 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x32c> @ imm = #0x0
    16de: 1c40         	adds	r0, r0, #0x1
    16e0: 1916         	adds	r6, r2, r4
    16e2: 2301         	movs	r3, #0x1
    16e4: 56f3         	ldrsb	r3, [r6, r3]
    16e6: 42ab         	cmp	r3, r5
    16e8: dd00         	ble	0x16ec <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x338> @ imm = #0x0
    16ea: 1c40         	adds	r0, r0, #0x1
    16ec: 2302         	movs	r3, #0x2
    16ee: 56f3         	ldrsb	r3, [r6, r3]
    16f0: 42ab         	cmp	r3, r5
    16f2: dc05         	bgt	0x1700 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x34c> @ imm = #0xa
    16f4: 4602         	mov	r2, r0
    16f6: 9807         	ldr	r0, [sp, #0x1c]
    16f8: 5633         	ldrsb	r3, [r6, r0]
    16fa: 42ab         	cmp	r3, r5
    16fc: dde5         	ble	0x16ca <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x316> @ imm = #-0x36
    16fe: e004         	b	0x170a <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x356> @ imm = #0x8
    1700: 1c42         	adds	r2, r0, #0x1
    1702: 9807         	ldr	r0, [sp, #0x1c]
    1704: 5633         	ldrsb	r3, [r6, r0]
    1706: 42ab         	cmp	r3, r5
    1708: dddf         	ble	0x16ca <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x316> @ imm = #-0x42
    170a: 1c50         	adds	r0, r2, #0x1
    170c: 1d24         	adds	r4, r4, #0x4
    170e: 42a1         	cmp	r1, r4
    1710: 9a06         	ldr	r2, [sp, #0x18]
    1712: d1df         	bne	0x16d4 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x320> @ imm = #-0x42
    1714: 9905         	ldr	r1, [sp, #0x14]
    1716: 2900         	cmp	r1, #0x0
    1718: d00b         	beq	0x1732 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x37e> @ imm = #0x16
    171a: 4611         	mov	r1, r2
    171c: 4602         	mov	r2, r0
    171e: 5708         	ldrsb	r0, [r1, r4]
    1720: 2140         	movs	r1, #0x40
    1722: 43c9         	mvns	r1, r1
    1724: 4288         	cmp	r0, r1
    1726: dc31         	bgt	0x178c <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x3d8> @ imm = #0x62
    1728: 4610         	mov	r0, r2
    172a: 9a05         	ldr	r2, [sp, #0x14]
    172c: 2a01         	cmp	r2, #0x1
    172e: 9a06         	ldr	r2, [sp, #0x18]
    1730: d131         	bne	0x1796 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x3e2> @ imm = #0x62
    1732: b008         	add	sp, #0x20
    1734: bdf0         	pop	{r4, r5, r6, r7, pc}
    1736: 9806         	ldr	r0, [sp, #0x18]
    1738: b008         	add	sp, #0x20
    173a: bdf0         	pop	{r4, r5, r6, r7, pc}
    173c: 21fc         	movs	r1, #0xfc
    173e: 400c         	ands	r4, r1
    1740: 00a2         	lsls	r2, r4, #0x2
    1742: 58b1         	ldr	r1, [r6, r2]
    1744: 098b         	lsrs	r3, r1, #0x6
    1746: 43c9         	mvns	r1, r1
    1748: 09c9         	lsrs	r1, r1, #0x7
    174a: 4319         	orrs	r1, r3
    174c: 4001         	ands	r1, r0
    174e: 2d01         	cmp	r5, #0x1
    1750: d010         	beq	0x1774 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x3c0> @ imm = #0x20
    1752: 18b2         	adds	r2, r6, r2
    1754: 6853         	ldr	r3, [r2, #0x4]
    1756: 099c         	lsrs	r4, r3, #0x6
    1758: 43db         	mvns	r3, r3
    175a: 09db         	lsrs	r3, r3, #0x7
    175c: 4323         	orrs	r3, r4
    175e: 4003         	ands	r3, r0
    1760: 1859         	adds	r1, r3, r1
    1762: 2d02         	cmp	r5, #0x2
    1764: d006         	beq	0x1774 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x3c0> @ imm = #0xc
    1766: 6892         	ldr	r2, [r2, #0x8]
    1768: 0993         	lsrs	r3, r2, #0x6
    176a: 43d2         	mvns	r2, r2
    176c: 09d2         	lsrs	r2, r2, #0x7
    176e: 431a         	orrs	r2, r3
    1770: 4002         	ands	r2, r0
    1772: 1851         	adds	r1, r2, r1
    1774: 0a08         	lsrs	r0, r1, #0x8
    1776: 4a2a         	ldr	r2, [pc, #0xa8]         @ 0x1820 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x46c>
    1778: 4011         	ands	r1, r2
    177a: 4010         	ands	r0, r2
    177c: 1840         	adds	r0, r0, r1
    177e: 4927         	ldr	r1, [pc, #0x9c]         @ 0x181c <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x468>
    1780: 4341         	muls	r1, r0, r1
    1782: 0c08         	lsrs	r0, r1, #0x10
    1784: 9906         	ldr	r1, [sp, #0x18]
    1786: 1840         	adds	r0, r0, r1
    1788: b008         	add	sp, #0x20
    178a: bdf0         	pop	{r4, r5, r6, r7, pc}
    178c: 1c50         	adds	r0, r2, #0x1
    178e: 9a05         	ldr	r2, [sp, #0x14]
    1790: 2a01         	cmp	r2, #0x1
    1792: 9a06         	ldr	r2, [sp, #0x18]
    1794: d0cd         	beq	0x1732 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x37e> @ imm = #-0x66
    1796: 4603         	mov	r3, r0
    1798: 1912         	adds	r2, r2, r4
    179a: 2001         	movs	r0, #0x1
    179c: 5610         	ldrsb	r0, [r2, r0]
    179e: 4288         	cmp	r0, r1
    17a0: dc2c         	bgt	0x17fc <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x448> @ imm = #0x58
    17a2: 4618         	mov	r0, r3
    17a4: 9b05         	ldr	r3, [sp, #0x14]
    17a6: 2b02         	cmp	r3, #0x2
    17a8: d0c3         	beq	0x1732 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x37e> @ imm = #-0x7a
    17aa: e02b         	b	0x1804 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x450> @ imm = #0x56
    17ac: 2300         	movs	r3, #0x0
    17ae: 4619         	mov	r1, r3
    17b0: e003         	b	0x17ba <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x406> @ imm = #0x6
    17b2: 4626         	mov	r6, r4
    17b4: 1d09         	adds	r1, r1, #0x4
    17b6: d100         	bne	0x17ba <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x406> @ imm = #0x0
    17b8: e61e         	b	0x13f8 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x44> @ imm = #-0x3c4
    17ba: 4634         	mov	r4, r6
    17bc: 5656         	ldrsb	r6, [r2, r1]
    17be: 2540         	movs	r5, #0x40
    17c0: 43ed         	mvns	r5, r5
    17c2: 42ae         	cmp	r6, r5
    17c4: dd00         	ble	0x17c8 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x414> @ imm = #0x0
    17c6: 1c5b         	adds	r3, r3, #0x1
    17c8: 1856         	adds	r6, r2, r1
    17ca: 2001         	movs	r0, #0x1
    17cc: 5630         	ldrsb	r0, [r6, r0]
    17ce: 42a8         	cmp	r0, r5
    17d0: dc08         	bgt	0x17e4 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x430> @ imm = #0x10
    17d2: 2002         	movs	r0, #0x2
    17d4: 5630         	ldrsb	r0, [r6, r0]
    17d6: 42a8         	cmp	r0, r5
    17d8: dc09         	bgt	0x17ee <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x43a> @ imm = #0x12
    17da: 9807         	ldr	r0, [sp, #0x1c]
    17dc: 5630         	ldrsb	r0, [r6, r0]
    17de: 42a8         	cmp	r0, r5
    17e0: dde7         	ble	0x17b2 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x3fe> @ imm = #-0x32
    17e2: e009         	b	0x17f8 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x444> @ imm = #0x12
    17e4: 1c5b         	adds	r3, r3, #0x1
    17e6: 2002         	movs	r0, #0x2
    17e8: 5630         	ldrsb	r0, [r6, r0]
    17ea: 42a8         	cmp	r0, r5
    17ec: ddf5         	ble	0x17da <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x426> @ imm = #-0x16
    17ee: 1c5b         	adds	r3, r3, #0x1
    17f0: 9807         	ldr	r0, [sp, #0x1c]
    17f2: 5630         	ldrsb	r0, [r6, r0]
    17f4: 42a8         	cmp	r0, r5
    17f6: dddc         	ble	0x17b2 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x3fe> @ imm = #-0x48
    17f8: 1c5b         	adds	r3, r3, #0x1
    17fa: e7da         	b	0x17b2 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x3fe> @ imm = #-0x4c
    17fc: 1c58         	adds	r0, r3, #0x1
    17fe: 9b05         	ldr	r3, [sp, #0x14]
    1800: 2b02         	cmp	r3, #0x2
    1802: d096         	beq	0x1732 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x37e> @ imm = #-0xd4
    1804: 4603         	mov	r3, r0
    1806: 2002         	movs	r0, #0x2
    1808: 5610         	ldrsb	r0, [r2, r0]
    180a: 4288         	cmp	r0, r1
    180c: dc02         	bgt	0x1814 <core::str::count::do_count_chars::h3d51f7a5f3399c30+0x460> @ imm = #0x4
    180e: 4618         	mov	r0, r3
    1810: b008         	add	sp, #0x20
    1812: bdf0         	pop	{r4, r5, r6, r7, pc}
    1814: 1c58         	adds	r0, r3, #0x1
    1816: b008         	add	sp, #0x20
    1818: bdf0         	pop	{r4, r5, r6, r7, pc}
    181a: 46c0         	mov	r8, r8
    181c: 01 00 01 00  	.word	0x00010001
    1820: ff 00 ff 00  	.word	0x00ff00ff
    1824: 01 01 01 01  	.word	0x01010101

Disassembly of section .text.unlikely.core::panicking::panic_const::panic_const_add_overflow::hf5cb0614de41d6eb:

00001828 <core::panicking::panic_const::panic_const_add_overflow::hf5cb0614de41d6eb>:
    1828: b580         	push	{r7, lr}
    182a: af00         	add	r7, sp, #0x0
    182c: b086         	sub	sp, #0x18
    182e: 4601         	mov	r1, r0
    1830: 2000         	movs	r0, #0x0
    1832: 9004         	str	r0, [sp, #0x10]
    1834: 2201         	movs	r2, #0x1
    1836: 9201         	str	r2, [sp, #0x4]
    1838: 4a03         	ldr	r2, [pc, #0xc]          @ 0x1848 <core::panicking::panic_const::panic_const_add_overflow::hf5cb0614de41d6eb+0x20>
    183a: 9200         	str	r2, [sp]
    183c: 9003         	str	r0, [sp, #0xc]
    183e: 2004         	movs	r0, #0x4
    1840: 9002         	str	r0, [sp, #0x8]
    1842: 4668         	mov	r0, sp
    1844: f7ff fa6c    	bl	0xd20 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #-0xb28
    1848: a0 03 00 00  	.word	0x000003a0

Disassembly of section .text.unlikely.core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0:

0000184c <core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0>:
    184c: b580         	push	{r7, lr}
    184e: af00         	add	r7, sp, #0x0
    1850: b086         	sub	sp, #0x18
    1852: 4601         	mov	r1, r0
    1854: 2000         	movs	r0, #0x0
    1856: 9004         	str	r0, [sp, #0x10]
    1858: 2201         	movs	r2, #0x1
    185a: 9201         	str	r2, [sp, #0x4]
    185c: 4a03         	ldr	r2, [pc, #0xc]          @ 0x186c <core::panicking::panic_const::panic_const_sub_overflow::haa1ac69332aef8a0+0x20>
    185e: 9200         	str	r2, [sp]
    1860: 9003         	str	r0, [sp, #0xc]
    1862: 2004         	movs	r0, #0x4
    1864: 9002         	str	r0, [sp, #0x8]
    1866: 4668         	mov	r0, sp
    1868: f7ff fa5a    	bl	0xd20 <core::panicking::panic_fmt::h756aba86a6a1830d> @ imm = #-0xb4c
    186c: cc 03 00 00  	.word	0x000003cc

Disassembly of section .text.core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h011b359b062d43d4:

00001870 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c>:
    1870: b5f0         	push	{r4, r5, r6, r7, lr}
    1872: af03         	add	r7, sp, #0xc
    1874: b08f         	sub	sp, #0x3c
    1876: 9102         	str	r1, [sp, #0x8]
    1878: 6802         	ldr	r2, [r0]
    187a: 4c35         	ldr	r4, [pc, #0xd4]         @ 0x1950 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xe0>
    187c: 2627         	movs	r6, #0x27
    187e: 42a2         	cmp	r2, r4
    1880: d92e         	bls	0x18e0 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0x70> @ imm = #0x5c
    1882: 4615         	mov	r5, r2
    1884: 9604         	str	r6, [sp, #0x10]
    1886: 4628         	mov	r0, r5
    1888: 4932         	ldr	r1, [pc, #0xc8]         @ 0x1954 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xe4>
    188a: f7ff f893    	bl	0x9b4 <_rphal_unsigned_divmod> @ imm = #-0xeda
    188e: 9003         	str	r0, [sp, #0xc]
    1890: 1c61         	adds	r1, r4, #0x1
    1892: 4341         	muls	r1, r0, r1
    1894: 1a69         	subs	r1, r5, r1
    1896: b28a         	uxth	r2, r1
    1898: 0892         	lsrs	r2, r2, #0x2
    189a: 482f         	ldr	r0, [pc, #0xbc]         @ 0x1958 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xe8>
    189c: 4342         	muls	r2, r0, r2
    189e: 0c52         	lsrs	r2, r2, #0x11
    18a0: 0053         	lsls	r3, r2, #0x1
    18a2: 482e         	ldr	r0, [pc, #0xb8]         @ 0x195c <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xec>
    18a4: 5cc0         	ldrb	r0, [r0, r3]
    18a6: ac05         	add	r4, sp, #0x14
    18a8: 19a4         	adds	r4, r4, r6
    18aa: 1f26         	subs	r6, r4, #0x4
    18ac: 7030         	strb	r0, [r6]
    18ae: 482b         	ldr	r0, [pc, #0xac]         @ 0x195c <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xec>
    18b0: 18c0         	adds	r0, r0, r3
    18b2: 7840         	ldrb	r0, [r0, #0x1]
    18b4: 7070         	strb	r0, [r6, #0x1]
    18b6: 9e04         	ldr	r6, [sp, #0x10]
    18b8: 2064         	movs	r0, #0x64
    18ba: 4350         	muls	r0, r2, r0
    18bc: 1a08         	subs	r0, r1, r0
    18be: b280         	uxth	r0, r0
    18c0: 0040         	lsls	r0, r0, #0x1
    18c2: 4a26         	ldr	r2, [pc, #0x98]         @ 0x195c <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xec>
    18c4: 5c11         	ldrb	r1, [r2, r0]
    18c6: 4613         	mov	r3, r2
    18c8: 1ea2         	subs	r2, r4, #0x2
    18ca: 4c21         	ldr	r4, [pc, #0x84]         @ 0x1950 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xe0>
    18cc: 7011         	strb	r1, [r2]
    18ce: 1818         	adds	r0, r3, r0
    18d0: 7840         	ldrb	r0, [r0, #0x1]
    18d2: 7050         	strb	r0, [r2, #0x1]
    18d4: 9a03         	ldr	r2, [sp, #0xc]
    18d6: 1f36         	subs	r6, r6, #0x4
    18d8: 4821         	ldr	r0, [pc, #0x84]         @ 0x1960 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xf0>
    18da: 4285         	cmp	r5, r0
    18dc: 4615         	mov	r5, r2
    18de: d8d1         	bhi	0x1884 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0x14> @ imm = #-0x5e
    18e0: 2a63         	cmp	r2, #0x63
    18e2: d91f         	bls	0x1924 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xb4> @ imm = #0x3e
    18e4: b290         	uxth	r0, r2
    18e6: 0880         	lsrs	r0, r0, #0x2
    18e8: 491b         	ldr	r1, [pc, #0x6c]         @ 0x1958 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xe8>
    18ea: 4341         	muls	r1, r0, r1
    18ec: 0c49         	lsrs	r1, r1, #0x11
    18ee: 2064         	movs	r0, #0x64
    18f0: 4348         	muls	r0, r1, r0
    18f2: 1a10         	subs	r0, r2, r0
    18f4: b280         	uxth	r0, r0
    18f6: 0040         	lsls	r0, r0, #0x1
    18f8: 4a18         	ldr	r2, [pc, #0x60]         @ 0x195c <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xec>
    18fa: 5c13         	ldrb	r3, [r2, r0]
    18fc: 1eb6         	subs	r6, r6, #0x2
    18fe: ac05         	add	r4, sp, #0x14
    1900: 55a3         	strb	r3, [r4, r6]
    1902: 19a3         	adds	r3, r4, r6
    1904: 1810         	adds	r0, r2, r0
    1906: 7840         	ldrb	r0, [r0, #0x1]
    1908: 7058         	strb	r0, [r3, #0x1]
    190a: 290a         	cmp	r1, #0xa
    190c: d30d         	blo	0x192a <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xba> @ imm = #0x1a
    190e: 0049         	lsls	r1, r1, #0x1
    1910: 4a12         	ldr	r2, [pc, #0x48]         @ 0x195c <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xec>
    1912: 5c53         	ldrb	r3, [r2, r1]
    1914: 1eb0         	subs	r0, r6, #0x2
    1916: ac05         	add	r4, sp, #0x14
    1918: 5423         	strb	r3, [r4, r0]
    191a: 1823         	adds	r3, r4, r0
    191c: 1851         	adds	r1, r2, r1
    191e: 7849         	ldrb	r1, [r1, #0x1]
    1920: 7059         	strb	r1, [r3, #0x1]
    1922: e007         	b	0x1934 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0xc4> @ imm = #0xe
    1924: 4611         	mov	r1, r2
    1926: 290a         	cmp	r1, #0xa
    1928: d2f1         	bhs	0x190e <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h8288da6f87a1c54c+0x9e> @ imm = #-0x1e
    192a: 2030         	movs	r0, #0x30
    192c: 4301         	orrs	r1, r0
    192e: 1e70         	subs	r0, r6, #0x1
    1930: aa05         	add	r2, sp, #0x14
    1932: 5411         	strb	r1, [r2, r0]
    1934: 2127         	movs	r1, #0x27
    1936: 1a09         	subs	r1, r1, r0
    1938: 9101         	str	r1, [sp, #0x4]
    193a: a905         	add	r1, sp, #0x14
    193c: 1808         	adds	r0, r1, r0
    193e: 9000         	str	r0, [sp]
    1940: 2101         	movs	r1, #0x1
    1942: 2300         	movs	r3, #0x0
    1944: 9802         	ldr	r0, [sp, #0x8]
    1946: 460a         	mov	r2, r1
    1948: f7ff fac8    	bl	0xedc <core::fmt::Formatter::pad_integral::hd877b7fcc7734582> @ imm = #-0xa70
    194c: b00f         	add	sp, #0x3c
    194e: bdf0         	pop	{r4, r5, r6, r7, pc}
    1950: 0f 27 00 00  	.word	0x0000270f
    1954: 10 27 00 00  	.word	0x00002710
    1958: 7b 14 00 00  	.word	0x0000147b
    195c: 24 04 00 00  	.word	0x00000424
    1960: ff e0 f5 05  	.word	0x05f5e0ff

Disassembly of section .text.<&T as core::fmt::Display>::fmt::hd311180cd7649c1c:

00001964 <<&T as core::fmt::Display>::fmt::hd311180cd7649c1c>:
    1964: b580         	push	{r7, lr}
    1966: af00         	add	r7, sp, #0x0
    1968: 460b         	mov	r3, r1
    196a: c806         	ldm	r0!, {r1, r2}
    196c: 4618         	mov	r0, r3
    196e: f7ff fc07    	bl	0x1180 <core::fmt::Formatter::pad::h3b94c4012190d009> @ imm = #-0x7f2
    1972: bd80         	pop	{r7, pc}
