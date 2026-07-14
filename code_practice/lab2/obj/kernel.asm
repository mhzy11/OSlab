
bin/kernel:     file format elf64-sw_64


Disassembly of section .text:

ffffffff80910000 <kern_entry>:
ffffffff80910000:	00 00 60 13 	br	$r27,ffffffff80910004 <kern_entry+0x4>
ffffffff80910004:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910008:	fc bf bd fb 	ldi	$r29,-16388($r29)
ffffffff8091000c:	40 81 dd 8f 	ldl	sp,-32448($r29)
ffffffff80910010:	48 80 7d 8f 	ldl	$r27,-32696($r29)
ffffffff80910014:	02 00 5b 07 	call	ra,($r27),ffffffff80910020 <kern_init>
	...

ffffffff80910020 <kern_init>:
ffffffff80910020:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910024:	e0 bf bd fb 	ldi	$r29,-16416($r29)
ffffffff80910028:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff8091002c:	58 80 10 8e 	ldl	$r16,-32680($r16)
ffffffff80910030:	00 00 5d fe 	ldih	$r18,0($r29)
ffffffff80910034:	b0 80 52 8e 	ldl	$r18,-32592($r18)
ffffffff80910038:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091003c:	51 07 ff 43 	clr	$r17
ffffffff80910040:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910044:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80910048:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091004c:	32 01 50 42 	subl	$r18,$r16,$r18
ffffffff80910050:	63 08 5b 07 	call	ra,($r27),ffffffff809121e0 <memset>
ffffffff80910054:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910058:	ac bf bd fb 	ldi	$r29,-16468($r29)
ffffffff8091005c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910060:	60 80 7b 8f 	ldl	$r27,-32672($r27)
ffffffff80910064:	22 02 5b 07 	call	ra,($r27),ffffffff809108f0 <cons_init>
ffffffff80910068:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091006c:	98 bf bd fb 	ldi	$r29,-16488($r29)
ffffffff80910070:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910074:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910078:	ff ff 3d fe 	ldih	$r17,-1($r29)
ffffffff8091007c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910080:	e0 6c 31 fa 	ldi	$r17,27872($r17)
ffffffff80910084:	fd 6c 10 fa 	ldi	$r16,27901($r16)
ffffffff80910088:	45 00 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff8091008c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910090:	74 bf bd fb 	ldi	$r29,-16524($r29)
ffffffff80910094:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910098:	00 80 7b 8f 	ldl	$r27,-32768($r27)
ffffffff8091009c:	b8 00 5b 07 	call	ra,($r27),ffffffff80910380 <print_kerninfo>
ffffffff809100a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100a4:	60 bf bd fb 	ldi	$r29,-16544($r29)
ffffffff809100a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100ac:	50 81 7b 8f 	ldl	$r27,-32432($r27)
ffffffff809100b0:	1b 02 5b 07 	call	ra,($r27),ffffffff80910920 <trap_init>
ffffffff809100b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100b8:	4c bf bd fb 	ldi	$r29,-16564($r29)
ffffffff809100bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100c0:	18 81 7b 8f 	ldl	$r27,-32488($r27)
ffffffff809100c4:	ae 03 5b 07 	call	ra,($r27),ffffffff80910f80 <pmm_init>
ffffffff809100c8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100cc:	38 bf bd fb 	ldi	$r29,-16584($r29)
ffffffff809100d0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100d4:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff809100d8:	ed 01 5b 07 	call	ra,($r27),ffffffff80910890 <clock_init>
ffffffff809100dc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100e0:	24 bf bd fb 	ldi	$r29,-16604($r29)
ffffffff809100e4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100e8:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff809100ec:	04 02 5b 07 	call	ra,($r27),ffffffff80910900 <intr_enable>
ffffffff809100f0:	80 00 00 02 	sys_call	0x80
ffffffff809100f4:	00 00 00 7a 	.long 0x7a000000
ffffffff809100f8:	ff ff ff 13 	br	ffffffff809100f8 <kern_init+0xd8>
ffffffff809100fc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910100 <cputch>:
ffffffff80910100:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910104:	00 bf bd fb 	ldi	$r29,-16640($r29)
ffffffff80910108:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff8091010c:	10 00 3f fc 	ldih	$r1,16
ffffffff80910110:	01 00 9f f8 	ldi	$r4,1
ffffffff80910114:	70 80 bf fc 	ldih	$r5,-32656
ffffffff80910118:	00 e0 62 8c 	ldl	$r3,-8192($r2)
ffffffff8091011c:	fe ff 21 f8 	ldi	$r1,-2($r1)
ffffffff80910120:	81 05 61 40 	cmpule	$r3,$r1,$r1
ffffffff80910124:	02 00 20 c0 	beq	$r1,ffffffff80910130 <cputch+0x30>
ffffffff80910128:	05 01 65 40 	addl	$r3,$r5,$r5
ffffffff8091012c:	01 00 83 f8 	ldi	$r4,1($r3)
ffffffff80910130:	00 00 05 a2 	stb	$r16,0($r5)
ffffffff80910134:	00 e0 82 ac 	stl	$r4,-8192($r2)
ffffffff80910138:	00 00 31 88 	ldw	$r1,0($r17)
ffffffff8091013c:	01 20 20 48 	addw	$r1,0x1,$r1
ffffffff80910140:	00 00 31 a8 	stw	$r1,0($r17)
ffffffff80910144:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910148:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091014c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910150 <vcprintf>:
ffffffff80910150:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910154:	b0 be bd fb 	ldi	$r29,-16720($r29)
ffffffff80910158:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091015c:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910160:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80910164:	54 07 f2 43 	mov	$r18,$r20
ffffffff80910168:	52 07 f0 43 	mov	$r16,$r18
ffffffff8091016c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910170:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910174:	53 07 f1 43 	mov	$r17,$r19
ffffffff80910178:	10 00 fe ab 	stw	$r31,16(sp)
ffffffff8091017c:	10 00 3e fa 	ldi	$r17,16(sp)
ffffffff80910180:	00 41 10 fa 	ldi	$r16,16640($r16)
ffffffff80910184:	72 08 5b 07 	call	ra,($r27),ffffffff80912350 <vprintfmt>
ffffffff80910188:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091018c:	10 00 1e 88 	ldw	$r0,16(sp)
ffffffff80910190:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910194:	78 be bd fb 	ldi	$r29,-16776($r29)
ffffffff80910198:	30 00 de fb 	ldi	sp,48(sp)
ffffffff8091019c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff809101a0 <cprintf>:
ffffffff809101a0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809101a4:	60 be bd fb 	ldi	$r29,-16800($r29)
ffffffff809101a8:	60 ff de fb 	ldi	sp,-160(sp)
ffffffff809101ac:	08 00 5f f8 	ldi	$r2,8
ffffffff809101b0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809101b4:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809101b8:	28 00 5e a8 	stw	$r2,40(sp)
ffffffff809101bc:	48 00 3e be 	fstd	$f17,72(sp)
ffffffff809101c0:	50 00 5e be 	fstd	$f18,80(sp)
ffffffff809101c4:	70 00 3e f8 	ldi	$r1,112(sp)
ffffffff809101c8:	28 00 5e 8c 	ldl	$r2,40(sp)
ffffffff809101cc:	58 00 7e be 	fstd	$f19,88(sp)
ffffffff809101d0:	60 00 9e be 	fstd	$f20,96(sp)
ffffffff809101d4:	80 00 5e ae 	stl	$r18,128(sp)
ffffffff809101d8:	68 00 be be 	fstd	$f21,104(sp)
ffffffff809101dc:	52 07 f0 43 	mov	$r16,$r18
ffffffff809101e0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809101e4:	00 41 10 fa 	ldi	$r16,16640($r16)
ffffffff809101e8:	00 00 5e af 	stl	ra,0(sp)
ffffffff809101ec:	78 00 3e ae 	stl	$r17,120(sp)
ffffffff809101f0:	88 00 7e ae 	stl	$r19,136(sp)
ffffffff809101f4:	30 00 3e fa 	ldi	$r17,48(sp)
ffffffff809101f8:	53 07 e1 43 	mov	$r1,$r19
ffffffff809101fc:	90 00 9e ae 	stl	$r20,144(sp)
ffffffff80910200:	98 00 be ae 	stl	$r21,152(sp)
ffffffff80910204:	54 07 e2 43 	mov	$r2,$r20
ffffffff80910208:	20 00 3e ac 	stl	$r1,32(sp)
ffffffff8091020c:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff80910210:	18 00 5e ac 	stl	$r2,24(sp)
ffffffff80910214:	30 00 fe ab 	stw	$r31,48(sp)
ffffffff80910218:	4d 08 5b 07 	call	ra,($r27),ffffffff80912350 <vprintfmt>
ffffffff8091021c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910220:	30 00 1e 88 	ldw	$r0,48(sp)
ffffffff80910224:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910228:	e4 bd bd fb 	ldi	$r29,-16924($r29)
ffffffff8091022c:	a0 00 de fb 	ldi	sp,160(sp)
ffffffff80910230:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910234:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910238:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091023c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910240 <cputchar>:
ffffffff80910240:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910244:	c0 bd bd fb 	ldi	$r29,-16960($r29)
ffffffff80910248:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff8091024c:	10 00 3f fc 	ldih	$r1,16
ffffffff80910250:	01 00 9f f8 	ldi	$r4,1
ffffffff80910254:	70 80 bf fc 	ldih	$r5,-32656
ffffffff80910258:	00 e0 62 8c 	ldl	$r3,-8192($r2)
ffffffff8091025c:	fe ff 21 f8 	ldi	$r1,-2($r1)
ffffffff80910260:	81 05 61 40 	cmpule	$r3,$r1,$r1
ffffffff80910264:	02 00 20 c0 	beq	$r1,ffffffff80910270 <cputchar+0x30>
ffffffff80910268:	05 01 65 40 	addl	$r3,$r5,$r5
ffffffff8091026c:	01 00 83 f8 	ldi	$r4,1($r3)
ffffffff80910270:	00 00 05 a2 	stb	$r16,0($r5)
ffffffff80910274:	00 e0 82 ac 	stl	$r4,-8192($r2)
ffffffff80910278:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091027c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910280 <getchar>:
ffffffff80910280:	40 07 ff 43 	clr	$r0
ffffffff80910284:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910288:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091028c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910290 <__panic>:
ffffffff80910290:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910294:	70 bd bd fb 	ldi	$r29,-17040($r29)
ffffffff80910298:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091029c:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff809102a0:	08 e0 41 88 	ldw	$r2,-8184($r1)
ffffffff809102a4:	38 00 7e be 	fstd	$f19,56(sp)
ffffffff809102a8:	40 00 9e be 	fstd	$f20,64(sp)
ffffffff809102ac:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809102b0:	48 00 be be 	fstd	$f21,72(sp)
ffffffff809102b4:	00 00 5e af 	stl	ra,0(sp)
ffffffff809102b8:	68 00 7e ae 	stl	$r19,104(sp)
ffffffff809102bc:	49 07 f2 43 	mov	$r18,$r9
ffffffff809102c0:	70 00 9e ae 	stl	$r20,112(sp)
ffffffff809102c4:	78 00 be ae 	stl	$r21,120(sp)
ffffffff809102c8:	0c 00 40 c0 	beq	$r2,ffffffff809102fc <__panic+0x6c>
ffffffff809102cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809102d0:	d8 80 7b 8f 	ldl	$r27,-32552($r27)
ffffffff809102d4:	8e 01 5b 07 	call	ra,($r27),ffffffff80910910 <intr_disable>
ffffffff809102d8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102dc:	28 bd bd fb 	ldi	$r29,-17112($r29)
ffffffff809102e0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809102e4:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff809102e8:	50 07 ff 43 	clr	$r16
ffffffff809102ec:	c4 00 5b 07 	call	ra,($r27),ffffffff80910600 <kmonitor>
ffffffff809102f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102f4:	10 bd bd fb 	ldi	$r29,-17136($r29)
ffffffff809102f8:	f9 ff ff 13 	br	ffffffff809102e0 <__panic+0x50>
ffffffff809102fc:	01 00 5f f8 	ldi	$r2,1
ffffffff80910300:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910304:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910308:	52 07 f1 43 	mov	$r17,$r18
ffffffff8091030c:	51 07 f0 43 	mov	$r16,$r17
ffffffff80910310:	08 e0 41 a8 	stw	$r2,-8184($r1)
ffffffff80910314:	50 00 3e f8 	ldi	$r1,80(sp)
ffffffff80910318:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091031c:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff80910320:	18 00 3f f8 	ldi	$r1,24
ffffffff80910324:	02 6d 10 fa 	ldi	$r16,27906($r16)
ffffffff80910328:	18 00 3e a8 	stw	$r1,24(sp)
ffffffff8091032c:	9c ff 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80910330:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910334:	d0 bc bd fb 	ldi	$r29,-17200($r29)
ffffffff80910338:	10 00 3e 8e 	ldl	$r17,16(sp)
ffffffff8091033c:	18 00 5e 8e 	ldl	$r18,24(sp)
ffffffff80910340:	50 07 e9 43 	mov	$r9,$r16
ffffffff80910344:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910348:	38 81 7b 8f 	ldl	$r27,-32456($r27)
ffffffff8091034c:	80 ff 5b 07 	call	ra,($r27),ffffffff80910150 <vcprintf>
ffffffff80910350:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910354:	b0 bc bd fb 	ldi	$r29,-17232($r29)
ffffffff80910358:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091035c:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910360:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910364:	00 6d 10 fa 	ldi	$r16,27904($r16)
ffffffff80910368:	8d ff 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff8091036c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910370:	94 bc bd fb 	ldi	$r29,-17260($r29)
ffffffff80910374:	d5 ff ff 13 	br	ffffffff809102cc <__panic+0x3c>
ffffffff80910378:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091037c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910380 <print_kerninfo>:
ffffffff80910380:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910384:	80 bc bd fb 	ldi	$r29,-17280($r29)
ffffffff80910388:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091038c:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910390:	e0 ff de fb 	ldi	sp,-32(sp)
ffffffff80910394:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910398:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091039c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809103a0:	1e 6d 10 fa 	ldi	$r16,27934($r16)
ffffffff809103a4:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809103a8:	00 00 3d fd 	ldih	$r9,0($r29)
ffffffff809103ac:	b0 80 29 8d 	ldl	$r9,-32592($r9)
ffffffff809103b0:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff809103b4:	48 80 4a 8d 	ldl	$r10,-32696($r10)
ffffffff809103b8:	79 ff 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff809103bc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809103c0:	44 bc bd fb 	ldi	$r29,-17340($r29)
ffffffff809103c4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809103c8:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff809103cc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809103d0:	51 07 ea 43 	mov	$r10,$r17
ffffffff809103d4:	37 6d 10 fa 	ldi	$r16,27959($r16)
ffffffff809103d8:	71 ff 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff809103dc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809103e0:	24 bc bd fb 	ldi	$r29,-17372($r29)
ffffffff809103e4:	00 00 3d fe 	ldih	$r17,0($r29)
ffffffff809103e8:	c0 80 31 8e 	ldl	$r17,-32576($r17)
ffffffff809103ec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809103f0:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff809103f4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809103f8:	54 6d 10 fa 	ldi	$r16,27988($r16)
ffffffff809103fc:	68 ff 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80910400:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910404:	00 bc bd fb 	ldi	$r29,-17408($r29)
ffffffff80910408:	00 00 3d fe 	ldih	$r17,0($r29)
ffffffff8091040c:	58 80 31 8e 	ldl	$r17,-32680($r17)
ffffffff80910410:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910414:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910418:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091041c:	71 6d 10 fa 	ldi	$r16,28017($r16)
ffffffff80910420:	5f ff 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80910424:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910428:	dc bb bd fb 	ldi	$r29,-17444($r29)
ffffffff8091042c:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910430:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910434:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910438:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091043c:	8e 6d 10 fa 	ldi	$r16,28046($r16)
ffffffff80910440:	57 ff 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80910444:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910448:	ff 03 29 fa 	ldi	$r17,1023($r9)
ffffffff8091044c:	bc bb bd fb 	ldi	$r29,-17476($r29)
ffffffff80910450:	31 01 2a 42 	subl	$r17,$r10,$r17
ffffffff80910454:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910458:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff8091045c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910460:	ff 03 31 f8 	ldi	$r1,1023($r17)
ffffffff80910464:	ab 6d 10 fa 	ldi	$r16,28075($r16)
ffffffff80910468:	31 12 21 46 	sellt	$r17,$r1,$r17,$r17
ffffffff8091046c:	51 49 21 4a 	sra	$r17,0xa,$r17
ffffffff80910470:	4b ff 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80910474:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910478:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff8091047c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910480:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80910484:	8c bb bd fb 	ldi	$r29,-17524($r29)
ffffffff80910488:	20 00 de fb 	ldi	sp,32(sp)
ffffffff8091048c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910490 <print_stackframe>:
ffffffff80910490:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910494:	70 bb bd fb 	ldi	$r29,-17552($r29)
ffffffff80910498:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091049c:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff809104a0:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809104a4:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809104a8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809104ac:	00 00 5e af 	stl	ra,0(sp)
ffffffff809104b0:	5b 00 3f fa 	ldi	$r17,91
ffffffff809104b4:	d5 6d 52 fa 	ldi	$r18,28117($r18)
ffffffff809104b8:	e6 6d 10 fa 	ldi	$r16,28134($r16)
ffffffff809104bc:	74 ff 5b 07 	call	ra,($r27),ffffffff80910290 <__panic>
ffffffff809104c0:	5f 07 ff 43 	nop	
ffffffff809104c4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809104c8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809104cc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809104d0 <mon_help>:
ffffffff809104d0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809104d4:	30 bb bd fb 	ldi	$r29,-17616($r29)
ffffffff809104d8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809104dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809104e0:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff809104e4:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809104e8:	ff ff 3d fe 	ldih	$r17,-1($r29)
ffffffff809104ec:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809104f0:	ff ff 3d fd 	ldih	$r9,-1($r29)
ffffffff809104f4:	00 00 5e af 	stl	ra,0(sp)
ffffffff809104f8:	fa 6d 52 fa 	ldi	$r18,28154($r18)
ffffffff809104fc:	1e 6e 29 f9 	ldi	$r9,28190($r9)
ffffffff80910500:	19 6e 31 fa 	ldi	$r17,28185($r17)
ffffffff80910504:	50 07 e9 43 	mov	$r9,$r16
ffffffff80910508:	25 ff 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff8091050c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910510:	f4 ba bd fb 	ldi	$r29,-17676($r29)
ffffffff80910514:	50 07 e9 43 	mov	$r9,$r16
ffffffff80910518:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091051c:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910520:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80910524:	ff ff 3d fe 	ldih	$r17,-1($r29)
ffffffff80910528:	27 6e 52 fa 	ldi	$r18,28199($r18)
ffffffff8091052c:	4d 6e 31 fa 	ldi	$r17,28237($r17)
ffffffff80910530:	1b ff 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80910534:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910538:	cc ba bd fb 	ldi	$r29,-17716($r29)
ffffffff8091053c:	50 07 e9 43 	mov	$r9,$r16
ffffffff80910540:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910544:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910548:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff8091054c:	ff ff 3d fe 	ldih	$r17,-1($r29)
ffffffff80910550:	56 6e 52 fa 	ldi	$r18,28246($r18)
ffffffff80910554:	76 6e 31 fa 	ldi	$r17,28278($r17)
ffffffff80910558:	11 ff 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff8091055c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910560:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910564:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910568:	40 07 ff 43 	clr	$r0
ffffffff8091056c:	a4 ba bd fb 	ldi	$r29,-17756($r29)
ffffffff80910570:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910574:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910578:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091057c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910580 <mon_kerninfo>:
ffffffff80910580:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910584:	80 ba bd fb 	ldi	$r29,-17792($r29)
ffffffff80910588:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091058c:	00 80 7b 8f 	ldl	$r27,-32768($r27)
ffffffff80910590:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910594:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910598:	79 ff 5b 07 	call	ra,($r27),ffffffff80910380 <print_kerninfo>
ffffffff8091059c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105a0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809105a4:	40 07 ff 43 	clr	$r0
ffffffff809105a8:	64 ba bd fb 	ldi	$r29,-17820($r29)
ffffffff809105ac:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809105b0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809105b4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809105b8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809105bc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809105c0 <mon_backtrace>:
ffffffff809105c0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809105c4:	40 ba bd fb 	ldi	$r29,-17856($r29)
ffffffff809105c8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105cc:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff809105d0:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809105d4:	00 00 5e af 	stl	ra,0(sp)
ffffffff809105d8:	ad ff 5b 07 	call	ra,($r27),ffffffff80910490 <print_stackframe>
ffffffff809105dc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105e0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809105e4:	40 07 ff 43 	clr	$r0
ffffffff809105e8:	24 ba bd fb 	ldi	$r29,-17884($r29)
ffffffff809105ec:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809105f0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809105f4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809105f8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809105fc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910600 <kmonitor>:
ffffffff80910600:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910604:	00 ba bd fb 	ldi	$r29,-17920($r29)
ffffffff80910608:	30 ff de fb 	ldi	sp,-208(sp)
ffffffff8091060c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910610:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910614:	c0 00 1e ae 	stl	$r16,192(sp)
ffffffff80910618:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091061c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910620:	80 6e 10 fa 	ldi	$r16,28288($r16)
ffffffff80910624:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910628:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff8091062c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80910630:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80910634:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80910638:	30 00 de ad 	stl	$r14,48(sp)
ffffffff8091063c:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80910640:	d7 fe 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80910644:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910648:	bc b9 bd fb 	ldi	$r29,-17988($r29)
ffffffff8091064c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910650:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910654:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910658:	a7 6e 10 fa 	ldi	$r16,28327($r16)
ffffffff8091065c:	d0 fe 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80910660:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910664:	c0 00 3e 8c 	ldl	$r1,192(sp)
ffffffff80910668:	a0 b9 bd fb 	ldi	$r29,-18016($r29)
ffffffff8091066c:	06 00 20 c0 	beq	$r1,ffffffff80910688 <kmonitor+0x88>
ffffffff80910670:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910674:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80910678:	50 07 e1 43 	mov	$r1,$r16
ffffffff8091067c:	b8 00 5b 07 	call	ra,($r27),ffffffff80910960 <print_trapframe>
ffffffff80910680:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910684:	80 b9 bd fb 	ldi	$r29,-18048($r29)
ffffffff80910688:	ff ff 7d fd 	ldih	$r11,-1($r29)
ffffffff8091068c:	ff ff 9d fd 	ldih	$r12,-1($r29)
ffffffff80910690:	ff ff bd fd 	ldih	$r13,-1($r29)
ffffffff80910694:	ff ff 5d fd 	ldih	$r10,-1($r29)
ffffffff80910698:	cc 6e 6b f9 	ldi	$r11,28364($r11)
ffffffff8091069c:	10 6f 8c f9 	ldi	$r12,28432($r12)
ffffffff809106a0:	19 6e ad f9 	ldi	$r13,28185($r13)
ffffffff809106a4:	d0 6e 4a f9 	ldi	$r10,28368($r10)
ffffffff809106a8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809106ac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809106b0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106b4:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809106b8:	50 07 eb 43 	mov	$r11,$r16
ffffffff809106bc:	c4 08 5b 07 	call	ra,($r27),ffffffff809129d0 <readline>
ffffffff809106c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106c4:	40 b9 bd fb 	ldi	$r29,-18112($r29)
ffffffff809106c8:	4e 07 e0 43 	mov	$r0,$r14
ffffffff809106cc:	f8 ff 1f c0 	beq	$r0,ffffffff809106b0 <kmonitor+0xb0>
ffffffff809106d0:	00 00 20 82 	ldbu	$r17,0($r0)
ffffffff809106d4:	49 07 ff 43 	clr	$r9
ffffffff809106d8:	51 0d f1 43 	sextb	$r17,$r17
ffffffff809106dc:	14 00 20 c6 	bne	$r17,ffffffff80910730 <kmonitor+0x130>
ffffffff809106e0:	f3 ff 3f c1 	beq	$r9,ffffffff809106b0 <kmonitor+0xb0>
ffffffff809106e4:	4e 07 ec 43 	mov	$r12,$r14
ffffffff809106e8:	50 07 ed 43 	mov	$r13,$r16
ffffffff809106ec:	4f 07 ff 43 	clr	fp
ffffffff809106f0:	40 00 3e 8e 	ldl	$r17,64(sp)
ffffffff809106f4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106f8:	08 81 7b 8f 	ldl	$r27,-32504($r27)
ffffffff809106fc:	18 00 ce f9 	ldi	$r14,24($r14)
ffffffff80910700:	7f 06 5b 07 	call	ra,($r27),ffffffff80912100 <strcmp>
ffffffff80910704:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910708:	fc b8 bd fb 	ldi	$r29,-18180($r29)
ffffffff8091070c:	4a 00 00 c0 	beq	$r0,ffffffff80910838 <kmonitor+0x238>
ffffffff80910710:	0f 20 e0 49 	addw	fp,0x1,fp
ffffffff80910714:	03 65 e0 49 	cmpeq	fp,0x3,$r3
ffffffff80910718:	3e 00 60 c4 	bne	$r3,ffffffff80910814 <kmonitor+0x214>
ffffffff8091071c:	00 00 0e 8e 	ldl	$r16,0($r14)
ffffffff80910720:	f3 ff ff 13 	br	ffffffff809106f0 <kmonitor+0xf0>
ffffffff80910724:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910728:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091072c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910730:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910734:	58 81 7b 8f 	ldl	$r27,-32424($r27)
ffffffff80910738:	50 07 ea 43 	mov	$r10,$r16
ffffffff8091073c:	94 06 5b 07 	call	ra,($r27),ffffffff80912190 <strchr>
ffffffff80910740:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910744:	c0 b8 bd fb 	ldi	$r29,-18240($r29)
ffffffff80910748:	09 00 00 c0 	beq	$r0,ffffffff80910770 <kmonitor+0x170>
ffffffff8091074c:	01 00 2e 82 	ldbu	$r17,1($r14)
ffffffff80910750:	00 00 ee a3 	stb	$r31,0($r14)
ffffffff80910754:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff80910758:	51 0d f1 43 	sextb	$r17,$r17
ffffffff8091075c:	e0 ff 3f c2 	beq	$r17,ffffffff809106e0 <kmonitor+0xe0>
ffffffff80910760:	f3 ff ff 13 	br	ffffffff80910730 <kmonitor+0x130>
ffffffff80910764:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910768:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091076c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910770:	00 00 4e 80 	ldbu	$r2,0($r14)
ffffffff80910774:	da ff 5f c0 	beq	$r2,ffffffff809106e0 <kmonitor+0xe0>
ffffffff80910778:	02 e5 21 49 	cmpeq	$r9,0xf,$r2
ffffffff8091077c:	1c 00 40 c4 	bne	$r2,ffffffff809107f0 <kmonitor+0x1f0>
ffffffff80910780:	82 01 20 49 	s8addl	$r9,0,$r2
ffffffff80910784:	40 00 3e f8 	ldi	$r1,64(sp)
ffffffff80910788:	09 20 20 49 	addw	$r9,0x1,$r9
ffffffff8091078c:	02 01 22 40 	addl	$r1,$r2,$r2
ffffffff80910790:	00 00 c2 ad 	stl	$r14,0($r2)
ffffffff80910794:	00 00 2e 82 	ldbu	$r17,0($r14)
ffffffff80910798:	51 0d f1 43 	sextb	$r17,$r17
ffffffff8091079c:	09 00 20 c6 	bne	$r17,ffffffff809107c4 <kmonitor+0x1c4>
ffffffff809107a0:	d0 ff ff 13 	br	ffffffff809106e4 <kmonitor+0xe4>
ffffffff809107a4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809107a8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809107ac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809107b0:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff809107b4:	00 00 2e 82 	ldbu	$r17,0($r14)
ffffffff809107b8:	16 00 ee 27 	fillcs	22($r14)
ffffffff809107bc:	51 0d f1 43 	sextb	$r17,$r17
ffffffff809107c0:	c7 ff 3f c2 	beq	$r17,ffffffff809106e0 <kmonitor+0xe0>
ffffffff809107c4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107c8:	58 81 7b 8f 	ldl	$r27,-32424($r27)
ffffffff809107cc:	50 07 ea 43 	mov	$r10,$r16
ffffffff809107d0:	6f 06 5b 07 	call	ra,($r27),ffffffff80912190 <strchr>
ffffffff809107d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107d8:	2c b8 bd fb 	ldi	$r29,-18388($r29)
ffffffff809107dc:	f4 ff 1f c0 	beq	$r0,ffffffff809107b0 <kmonitor+0x1b0>
ffffffff809107e0:	00 00 2e 82 	ldbu	$r17,0($r14)
ffffffff809107e4:	51 0d f1 43 	sextb	$r17,$r17
ffffffff809107e8:	bd ff 3f c2 	beq	$r17,ffffffff809106e0 <kmonitor+0xe0>
ffffffff809107ec:	d0 ff ff 13 	br	ffffffff80910730 <kmonitor+0x130>
ffffffff809107f0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107f4:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff809107f8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107fc:	10 00 3f fa 	ldi	$r17,16
ffffffff80910800:	d5 6e 10 fa 	ldi	$r16,28373($r16)
ffffffff80910804:	66 fe 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80910808:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091080c:	f8 b7 bd fb 	ldi	$r29,-18440($r29)
ffffffff80910810:	db ff ff 13 	br	ffffffff80910780 <kmonitor+0x180>
ffffffff80910814:	40 00 3e 8e 	ldl	$r17,64(sp)
ffffffff80910818:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091081c:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910820:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910824:	f3 6e 10 fa 	ldi	$r16,28403($r16)
ffffffff80910828:	5d fe 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff8091082c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910830:	d4 b7 bd fb 	ldi	$r29,-18476($r29)
ffffffff80910834:	9e ff ff 13 	br	ffffffff809106b0 <kmonitor+0xb0>
ffffffff80910838:	42 01 e0 49 	s4addl	fp,0,$r2
ffffffff8091083c:	c0 00 5e 8e 	ldl	$r18,192(sp)
ffffffff80910840:	48 00 3e fa 	ldi	$r17,72(sp)
ffffffff80910844:	30 20 20 49 	subw	$r9,0x1,$r16
ffffffff80910848:	21 01 4f 40 	subl	$r2,fp,$r1
ffffffff8091084c:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80910850:	01 01 81 41 	addl	$r12,$r1,$r1
ffffffff80910854:	10 00 61 8f 	ldl	$r27,16($r1)
ffffffff80910858:	00 00 5b 07 	call	ra,($r27),ffffffff8091085c <kmonitor+0x25c>
ffffffff8091085c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910860:	a4 b7 bd fb 	ldi	$r29,-18524($r29)
ffffffff80910864:	92 ff 1f d4 	bge	$r0,ffffffff809106b0 <kmonitor+0xb0>
ffffffff80910868:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091086c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910870:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80910874:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80910878:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff8091087c:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80910880:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80910884:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80910888:	d0 00 de fb 	ldi	sp,208(sp)
ffffffff8091088c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910890 <clock_init>:
ffffffff80910890:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910894:	70 b7 bd fb 	ldi	$r29,-18576($r29)
ffffffff80910898:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091089c:	01 00 1f fa 	ldi	$r16,1
ffffffff809108a0:	00 00 5e af 	stl	ra,0(sp)
ffffffff809108a4:	3b 00 00 02 	sys_call	0x3b
ffffffff809108a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108ac:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff809108b0:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809108b4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809108b8:	58 6f 10 fa 	ldi	$r16,28504($r16)
ffffffff809108bc:	10 e0 e1 af 	stl	$r31,-8176($r1)
ffffffff809108c0:	37 fe 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff809108c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809108c8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809108cc:	3c b7 bd fb 	ldi	$r29,-18628($r29)
ffffffff809108d0:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809108d4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809108d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809108dc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809108e0 <clock_set_next_event>:
ffffffff809108e0:	01 00 1f fa 	ldi	$r16,1
ffffffff809108e4:	3b 00 00 02 	sys_call	0x3b
ffffffff809108e8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809108ec:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809108f0 <cons_init>:
ffffffff809108f0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809108f4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809108f8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809108fc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910900 <intr_enable>:
ffffffff80910900:	50 07 ff 43 	clr	$r16
ffffffff80910904:	35 00 00 02 	sys_call	0x35
ffffffff80910908:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091090c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910910 <intr_disable>:
ffffffff80910910:	01 00 1f fa 	ldi	$r16,1
ffffffff80910914:	35 00 00 02 	sys_call	0x35
ffffffff80910918:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091091c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910920 <trap_init>:
ffffffff80910920:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910924:	e0 b6 bd fb 	ldi	$r29,-18720($r29)
ffffffff80910928:	50 07 fd 43 	mov	$r29,$r16
ffffffff8091092c:	37 00 00 02 	sys_call	0x37
ffffffff80910930:	51 07 ff 43 	clr	$r17
ffffffff80910934:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910938:	68 80 10 8e 	ldl	$r16,-32664($r16)
ffffffff8091093c:	34 00 00 02 	sys_call	0x34
ffffffff80910940:	03 00 3f fa 	ldi	$r17,3
ffffffff80910944:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910948:	10 81 10 8e 	ldl	$r16,-32496($r16)
ffffffff8091094c:	34 00 00 02 	sys_call	0x34
ffffffff80910950:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910954:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910958:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091095c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910960 <print_trapframe>:
ffffffff80910960:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910964:	a0 b6 bd fb 	ldi	$r29,-18784($r29)
ffffffff80910968:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091096c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910970:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910974:	51 07 f0 43 	mov	$r16,$r17
ffffffff80910978:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff8091097c:	49 07 f0 43 	mov	$r16,$r9
ffffffff80910980:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910984:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910988:	73 6f 10 fa 	ldi	$r16,28531($r16)
ffffffff8091098c:	04 fe 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80910990:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910994:	70 b6 bd fb 	ldi	$r29,-18832($r29)
ffffffff80910998:	f8 00 29 8e 	ldl	$r17,248($r9)
ffffffff8091099c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809109a0:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff809109a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809109a8:	84 6f 10 fa 	ldi	$r16,28548($r16)
ffffffff809109ac:	fc fd 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff809109b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809109b4:	50 b6 bd fb 	ldi	$r29,-18864($r29)
ffffffff809109b8:	f0 00 29 8e 	ldl	$r17,240($r9)
ffffffff809109bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809109c0:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff809109c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809109c8:	94 6f 10 fa 	ldi	$r16,28564($r16)
ffffffff809109cc:	f4 fd 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff809109d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809109d4:	30 b6 bd fb 	ldi	$r29,-18896($r29)
ffffffff809109d8:	00 01 29 8e 	ldl	$r17,256($r9)
ffffffff809109dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809109e0:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff809109e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809109e8:	a4 6f 10 fa 	ldi	$r16,28580($r16)
ffffffff809109ec:	ec fd 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff809109f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809109f4:	10 b6 bd fb 	ldi	$r29,-18928($r29)
ffffffff809109f8:	80 00 29 8e 	ldl	$r17,128($r9)
ffffffff809109fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a00:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910a04:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910a08:	b4 6f 10 fa 	ldi	$r16,28596($r16)
ffffffff80910a0c:	e4 fd 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80910a10:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a14:	f0 b5 bd fb 	ldi	$r29,-18960($r29)
ffffffff80910a18:	88 00 29 8e 	ldl	$r17,136($r9)
ffffffff80910a1c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a20:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910a24:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910a28:	c4 6f 10 fa 	ldi	$r16,28612($r16)
ffffffff80910a2c:	dc fd 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80910a30:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a34:	d0 b5 bd fb 	ldi	$r29,-18992($r29)
ffffffff80910a38:	90 00 29 8e 	ldl	$r17,144($r9)
ffffffff80910a3c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a40:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910a44:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910a48:	d4 6f 10 fa 	ldi	$r16,28628($r16)
ffffffff80910a4c:	d4 fd 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80910a50:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a54:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910a58:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910a5c:	b0 b5 bd fb 	ldi	$r29,-19024($r29)
ffffffff80910a60:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910a64:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910a68:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a6c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910a70 <do_entInt>:
ffffffff80910a70:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910a74:	90 b5 bd fb 	ldi	$r29,-19056($r29)
ffffffff80910a78:	80 00 30 8e 	ldl	$r17,128($r16)
ffffffff80910a7c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910a80:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910a84:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910a88:	49 07 f0 43 	mov	$r16,$r9
ffffffff80910a8c:	01 25 21 4a 	cmpeq	$r17,0x9,$r1
ffffffff80910a90:	1b 00 20 c0 	beq	$r1,ffffffff80910b00 <do_entInt+0x90>
ffffffff80910a94:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a98:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff80910a9c:	90 ff 5b 07 	call	ra,($r27),ffffffff809108e0 <clock_set_next_event>
ffffffff80910aa0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910aa4:	60 b5 bd fb 	ldi	$r29,-19104($r29)
ffffffff80910aa8:	00 00 9d fc 	ldih	$r4,0($r29)
ffffffff80910aac:	20 81 84 8c 	ldl	$r4,-32480($r4)
ffffffff80910ab0:	00 00 24 8c 	ldl	$r1,0($r4)
ffffffff80910ab4:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80910ab8:	00 00 24 ac 	stl	$r1,0($r4)
ffffffff80910abc:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80910ac0:	00 00 64 8c 	ldl	$r3,0($r4)
ffffffff80910ac4:	38 70 21 8c 	ldl	$r1,28728($r1)
ffffffff80910ac8:	22 49 60 48 	srl	$r3,0x2,$r2
ffffffff80910acc:	22 03 41 40 	umulh	$r2,$r1,$r2
ffffffff80910ad0:	22 49 40 48 	srl	$r2,0x2,$r2
ffffffff80910ad4:	41 01 40 48 	s4addl	$r2,0,$r1
ffffffff80910ad8:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80910adc:	42 01 20 48 	s4addl	$r1,0,$r2
ffffffff80910ae0:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80910ae4:	41 01 20 48 	s4addl	$r1,0,$r1
ffffffff80910ae8:	21 01 61 40 	subl	$r3,$r1,$r1
ffffffff80910aec:	14 00 20 c0 	beq	$r1,ffffffff80910b40 <do_entInt+0xd0>
ffffffff80910af0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910af4:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910af8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910afc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910b00:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b04:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910b08:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910b0c:	ee 6f 10 fa 	ldi	$r16,28654($r16)
ffffffff80910b10:	a3 fd 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80910b14:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910b18:	50 07 e9 43 	mov	$r9,$r16
ffffffff80910b1c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910b20:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910b24:	ec b4 bd fb 	ldi	$r29,-19220($r29)
ffffffff80910b28:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910b2c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b30:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80910b34:	8a ff fb 0f 	jmp	$r31,($r27),ffffffff80910960 <print_trapframe>
ffffffff80910b38:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910b3c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910b40:	00 00 24 8e 	ldl	$r17,0($r4)
ffffffff80910b44:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b48:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910b4c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910b50:	e4 6f 10 fa 	ldi	$r16,28644($r16)
ffffffff80910b54:	92 fd 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80910b58:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910b5c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910b60:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910b64:	a8 b4 bd fb 	ldi	$r29,-19288($r29)
ffffffff80910b68:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910b6c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910b70 <do_entIF>:
ffffffff80910b70:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910b74:	90 b4 bd fb 	ldi	$r29,-19312($r29)
ffffffff80910b78:	80 00 30 8c 	ldl	$r1,128($r16)
ffffffff80910b7c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910b80:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910b84:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910b88:	49 07 f0 43 	mov	$r16,$r9
ffffffff80910b8c:	1c 00 20 c0 	beq	$r1,ffffffff80910c00 <do_entIF+0x90>
ffffffff80910b90:	01 85 20 48 	cmpeq	$r1,0x4,$r1
ffffffff80910b94:	12 00 20 c0 	beq	$r1,ffffffff80910be0 <do_entIF+0x70>
ffffffff80910b98:	f8 00 30 8e 	ldl	$r17,248($r16)
ffffffff80910b9c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910ba0:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910ba4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910ba8:	20 70 10 fa 	ldi	$r16,28704($r16)
ffffffff80910bac:	7c fd 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80910bb0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910bb4:	f8 00 29 8c 	ldl	$r1,248($r9)
ffffffff80910bb8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910bbc:	50 b4 bd fb 	ldi	$r29,-19376($r29)
ffffffff80910bc0:	04 00 21 f8 	ldi	$r1,4($r1)
ffffffff80910bc4:	f8 00 29 ac 	stl	$r1,248($r9)
ffffffff80910bc8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910bcc:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910bd0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910bd4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910bd8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910bdc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910be0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910be4:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910be8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910bec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910bf0:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80910bf4:	5a ff fb 0f 	jmp	$r31,($r27),ffffffff80910960 <print_trapframe>
ffffffff80910bf8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910bfc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910c00:	f8 00 30 8e 	ldl	$r17,248($r16)
ffffffff80910c04:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910c08:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910c0c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910c10:	0a 70 10 fa 	ldi	$r16,28682($r16)
ffffffff80910c14:	fc ff 31 fa 	ldi	$r17,-4($r17)
ffffffff80910c18:	61 fd 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80910c1c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910c20:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910c24:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910c28:	e4 b3 bd fb 	ldi	$r29,-19484($r29)
ffffffff80910c2c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910c30:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910c34:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910c38:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910c3c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910c40 <trap>:
ffffffff80910c40:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910c44:	c0 b3 bd fb 	ldi	$r29,-19520($r29)
ffffffff80910c48:	e8 00 30 8c 	ldl	$r1,232($r16)
ffffffff80910c4c:	04 00 20 c0 	beq	$r1,ffffffff80910c60 <trap+0x20>
ffffffff80910c50:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910c54:	38 80 7b 8f 	ldl	$r27,-32712($r27)
ffffffff80910c58:	c5 ff fb 0f 	jmp	$r31,($r27),ffffffff80910b70 <do_entIF>
ffffffff80910c5c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910c60:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910c64:	08 80 7b 8f 	ldl	$r27,-32760($r27)
ffffffff80910c68:	81 ff fb 0f 	jmp	$r31,($r27),ffffffff80910a70 <do_entInt>
ffffffff80910c6c:	5f 07 ff 43 	nop	

ffffffff80910c70 <entInt>:
ffffffff80910c70:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910c74:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910c78:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910c7c:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910c80:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910c84:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910c88:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910c8c:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910c90:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910c94:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910c98:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910c9c:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910ca0:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910ca4:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910ca8:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910cac:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910cb0:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910cb4:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910cb8:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910cbc:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910cc0:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910cc4:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910cc8:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910ccc:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910cd0:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910cd4:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910cd8:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910cdc:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910ce0:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910ce4:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910ce8:	00 00 1f fa 	ldi	$r16,0
ffffffff80910cec:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910cf0:	30 81 5d 8f 	ldl	ra,-32464($r29)
ffffffff80910cf4:	50 07 fe 43 	mov	sp,$r16
ffffffff80910cf8:	00 81 7d 8f 	ldl	$r27,-32512($r29)
ffffffff80910cfc:	d0 ff fb 07 	call	$r31,($r27),ffffffff80910c40 <trap>

ffffffff80910d00 <entIF>:
ffffffff80910d00:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910d04:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910d08:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910d0c:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910d10:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910d14:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910d18:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910d1c:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910d20:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910d24:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910d28:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910d2c:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910d30:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910d34:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910d38:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910d3c:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910d40:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910d44:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910d48:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910d4c:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910d50:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910d54:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910d58:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910d5c:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910d60:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910d64:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910d68:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910d6c:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910d70:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910d74:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910d78:	03 00 1f fa 	ldi	$r16,3
ffffffff80910d7c:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910d80:	30 81 5d 8f 	ldl	ra,-32464($r29)
ffffffff80910d84:	50 07 fe 43 	mov	sp,$r16
ffffffff80910d88:	00 81 7d 8f 	ldl	$r27,-32512($r29)
ffffffff80910d8c:	ac ff fb 07 	call	$r31,($r27),ffffffff80910c40 <trap>

ffffffff80910d90 <__trapret>:
ffffffff80910d90:	00 00 1e 8c 	ldl	$r0,0(sp)
ffffffff80910d94:	08 00 3e 8c 	ldl	$r1,8(sp)
ffffffff80910d98:	10 00 5e 8c 	ldl	$r2,16(sp)
ffffffff80910d9c:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80910da0:	20 00 9e 8c 	ldl	$r4,32(sp)
ffffffff80910da4:	28 00 be 8c 	ldl	$r5,40(sp)
ffffffff80910da8:	30 00 de 8c 	ldl	$r6,48(sp)
ffffffff80910dac:	38 00 fe 8c 	ldl	$r7,56(sp)
ffffffff80910db0:	40 00 1e 8d 	ldl	$r8,64(sp)
ffffffff80910db4:	48 00 3e 8d 	ldl	$r9,72(sp)
ffffffff80910db8:	50 00 5e 8d 	ldl	$r10,80(sp)
ffffffff80910dbc:	58 00 7e 8d 	ldl	$r11,88(sp)
ffffffff80910dc0:	60 00 9e 8d 	ldl	$r12,96(sp)
ffffffff80910dc4:	68 00 be 8d 	ldl	$r13,104(sp)
ffffffff80910dc8:	70 00 de 8d 	ldl	$r14,112(sp)
ffffffff80910dcc:	78 00 fe 8d 	ldl	fp,120(sp)
ffffffff80910dd0:	80 00 1e 8e 	ldl	$r16,128(sp)
ffffffff80910dd4:	88 00 3e 8e 	ldl	$r17,136(sp)
ffffffff80910dd8:	90 00 5e 8e 	ldl	$r18,144(sp)
ffffffff80910ddc:	98 00 7e 8e 	ldl	$r19,152(sp)
ffffffff80910de0:	a0 00 9e 8e 	ldl	$r20,160(sp)
ffffffff80910de4:	a8 00 be 8e 	ldl	$r21,168(sp)
ffffffff80910de8:	b0 00 de 8e 	ldl	$r22,176(sp)
ffffffff80910dec:	b8 00 fe 8e 	ldl	$r23,184(sp)
ffffffff80910df0:	c0 00 1e 8f 	ldl	$r24,192(sp)
ffffffff80910df4:	c8 00 3e 8f 	ldl	$r25,200(sp)
ffffffff80910df8:	d0 00 5e 8f 	ldl	ra,208(sp)
ffffffff80910dfc:	d8 00 7e 8f 	ldl	$r27,216(sp)
ffffffff80910e00:	e0 00 9e 8f 	ldl	$r28,224(sp)
ffffffff80910e04:	f0 00 de fb 	ldi	sp,240(sp)
ffffffff80910e08:	3f 00 00 02 	sys_call	0x3f
ffffffff80910e0c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910e10 <alloc_pages>:
ffffffff80910e10:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910e14:	f0 b1 bd fb 	ldi	$r29,-19984($r29)
ffffffff80910e18:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910e1c:	d8 80 7b 8f 	ldl	$r27,-32552($r27)
ffffffff80910e20:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910e24:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910e28:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910e2c:	49 07 f0 43 	mov	$r16,$r9
ffffffff80910e30:	b7 fe 5b 07 	call	ra,($r27),ffffffff80910910 <intr_disable>
ffffffff80910e34:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910e38:	cc b1 bd fb 	ldi	$r29,-20020($r29)
ffffffff80910e3c:	50 07 e9 43 	mov	$r9,$r16
ffffffff80910e40:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80910e44:	18 e0 21 8c 	ldl	$r1,-8168($r1)
ffffffff80910e48:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80910e4c:	00 00 5b 07 	call	ra,($r27),ffffffff80910e50 <alloc_pages+0x40>
ffffffff80910e50:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910e54:	b0 b1 bd fb 	ldi	$r29,-20048($r29)
ffffffff80910e58:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910e5c:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff80910e60:	49 07 e0 43 	mov	$r0,$r9
ffffffff80910e64:	a6 fe 5b 07 	call	ra,($r27),ffffffff80910900 <intr_enable>
ffffffff80910e68:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910e6c:	40 07 e9 43 	mov	$r9,$r0
ffffffff80910e70:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910e74:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910e78:	98 b1 bd fb 	ldi	$r29,-20072($r29)
ffffffff80910e7c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910e80:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910e84:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910e88:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910e8c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910e90 <free_pages>:
ffffffff80910e90:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910e94:	70 b1 bd fb 	ldi	$r29,-20112($r29)
ffffffff80910e98:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910e9c:	d8 80 7b 8f 	ldl	$r27,-32552($r27)
ffffffff80910ea0:	e0 ff de fb 	ldi	sp,-32(sp)
ffffffff80910ea4:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910ea8:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910eac:	49 07 f0 43 	mov	$r16,$r9
ffffffff80910eb0:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80910eb4:	4a 07 f1 43 	mov	$r17,$r10
ffffffff80910eb8:	95 fe 5b 07 	call	ra,($r27),ffffffff80910910 <intr_disable>
ffffffff80910ebc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910ec0:	44 b1 bd fb 	ldi	$r29,-20156($r29)
ffffffff80910ec4:	51 07 ea 43 	mov	$r10,$r17
ffffffff80910ec8:	50 07 e9 43 	mov	$r9,$r16
ffffffff80910ecc:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80910ed0:	18 e0 21 8c 	ldl	$r1,-8168($r1)
ffffffff80910ed4:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80910ed8:	00 00 5b 07 	call	ra,($r27),ffffffff80910edc <free_pages+0x4c>
ffffffff80910edc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910ee0:	24 b1 bd fb 	ldi	$r29,-20188($r29)
ffffffff80910ee4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910ee8:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff80910eec:	84 fe 5b 07 	call	ra,($r27),ffffffff80910900 <intr_enable>
ffffffff80910ef0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910ef4:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910ef8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910efc:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80910f00:	10 b1 bd fb 	ldi	$r29,-20208($r29)
ffffffff80910f04:	20 00 de fb 	ldi	sp,32(sp)
ffffffff80910f08:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910f0c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910f10 <nr_free_pages>:
ffffffff80910f10:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910f14:	f0 b0 bd fb 	ldi	$r29,-20240($r29)
ffffffff80910f18:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910f1c:	d8 80 7b 8f 	ldl	$r27,-32552($r27)
ffffffff80910f20:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910f24:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910f28:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910f2c:	78 fe 5b 07 	call	ra,($r27),ffffffff80910910 <intr_disable>
ffffffff80910f30:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910f34:	d0 b0 bd fb 	ldi	$r29,-20272($r29)
ffffffff80910f38:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80910f3c:	18 e0 21 8c 	ldl	$r1,-8168($r1)
ffffffff80910f40:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff80910f44:	00 00 5b 07 	call	ra,($r27),ffffffff80910f48 <nr_free_pages+0x38>
ffffffff80910f48:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910f4c:	b8 b0 bd fb 	ldi	$r29,-20296($r29)
ffffffff80910f50:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910f54:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff80910f58:	49 07 e0 43 	mov	$r0,$r9
ffffffff80910f5c:	68 fe 5b 07 	call	ra,($r27),ffffffff80910900 <intr_enable>
ffffffff80910f60:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910f64:	40 07 e9 43 	mov	$r9,$r0
ffffffff80910f68:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910f6c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910f70:	a0 b0 bd fb 	ldi	$r29,-20320($r29)
ffffffff80910f74:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910f78:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910f7c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910f80 <pmm_init>:
ffffffff80910f80:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910f84:	80 b0 bd fb 	ldi	$r29,-20352($r29)
ffffffff80910f88:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80910f8c:	d0 80 21 8c 	ldl	$r1,-32560($r1)
ffffffff80910f90:	c0 ff de fb 	ldi	sp,-64(sp)
ffffffff80910f94:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910f98:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910f9c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910fa0:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910fa4:	00 00 3d fd 	ldih	$r9,0($r29)
ffffffff80910fa8:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910fac:	40 70 10 fa 	ldi	$r16,28736($r16)
ffffffff80910fb0:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80910fb4:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80910fb8:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff80910fbc:	00 00 7d fd 	ldih	$r11,0($r29)
ffffffff80910fc0:	00 00 21 8e 	ldl	$r17,0($r1)
ffffffff80910fc4:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80910fc8:	18 e0 29 ac 	stl	$r1,-8168($r9)
ffffffff80910fcc:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80910fd0:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80910fd4:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80910fd8:	71 fc 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80910fdc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910fe0:	18 e0 29 8c 	ldl	$r1,-8168($r9)
ffffffff80910fe4:	24 b0 bd fb 	ldi	$r29,-20444($r29)
ffffffff80910fe8:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff80910fec:	a8 80 8c 8d 	ldl	$r12,-32600($r12)
ffffffff80910ff0:	08 00 61 8f 	ldl	$r27,8($r1)
ffffffff80910ff4:	00 00 5b 07 	call	ra,($r27),ffffffff80910ff8 <pmm_init+0x78>
ffffffff80910ff8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910ffc:	08 b0 bd fb 	ldi	$r29,-20472($r29)
ffffffff80911000:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80911004:	00 80 5f fc 	ldih	$r2,-32768
ffffffff80911008:	01 00 1f fd 	ldih	$r8,1
ffffffff8091100c:	43 07 ff 43 	clr	$r3
ffffffff80911010:	20 e0 41 ac 	stl	$r2,-8160($r1)
ffffffff80911014:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80911018:	28 e0 0b ad 	stl	$r8,-8152($r11)
ffffffff8091101c:	76 fb 08 f9 	ldi	$r8,-1162($r8)
ffffffff80911020:	0c 07 81 41 	and	$r12,$r1,$r12
ffffffff80911024:	30 e0 8a ad 	stl	$r12,-8144($r10)
ffffffff80911028:	38 07 2c f8 	ldi	$r1,1848($r12)
ffffffff8091102c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911030:	d0 f8 41 8c 	ldl	$r2,-1840($r1)
ffffffff80911034:	c8 f8 c1 f8 	ldi	$r6,-1848($r1)
ffffffff80911038:	00 00 e1 2f 	fillcs_e	0($r1)
ffffffff8091103c:	f0 f8 a1 f8 	ldi	$r5,-1808($r1)
ffffffff80911040:	18 f9 81 f8 	ldi	$r4,-1768($r1)
ffffffff80911044:	03 00 63 f8 	ldi	$r3,3($r3)
ffffffff80911048:	78 00 21 f8 	ldi	$r1,120($r1)
ffffffff8091104c:	07 05 68 40 	cmpeq	$r3,$r8,$r7
ffffffff80911050:	42 27 40 48 	or	$r2,0x1,$r2
ffffffff80911054:	08 00 46 ac 	stl	$r2,8($r6)
ffffffff80911058:	08 00 45 8c 	ldl	$r2,8($r5)
ffffffff8091105c:	42 27 40 48 	or	$r2,0x1,$r2
ffffffff80911060:	08 00 45 ac 	stl	$r2,8($r5)
ffffffff80911064:	08 00 44 8c 	ldl	$r2,8($r4)
ffffffff80911068:	42 27 40 48 	or	$r2,0x1,$r2
ffffffff8091106c:	08 00 44 ac 	stl	$r2,8($r4)
ffffffff80911070:	ef ff ff c0 	beq	$r7,ffffffff80911030 <pmm_init+0xb0>
ffffffff80911074:	27 00 5f fc 	ldih	$r2,39
ffffffff80911078:	70 4a 22 f8 	ldi	$r1,19056($r2)
ffffffff8091107c:	c0 4a 42 f8 	ldi	$r2,19136($r2)
ffffffff80911080:	01 01 81 41 	addl	$r12,$r1,$r1
ffffffff80911084:	03 01 82 41 	addl	$r12,$r2,$r3
ffffffff80911088:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091108c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911090:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff80911094:	28 00 21 f8 	ldi	$r1,40($r1)
ffffffff80911098:	42 27 40 48 	or	$r2,0x1,$r2
ffffffff8091109c:	e0 ff 41 ac 	stl	$r2,-32($r1)
ffffffff809110a0:	02 05 23 40 	cmpeq	$r1,$r3,$r2
ffffffff809110a4:	fa ff 5f c0 	beq	$r2,ffffffff80911090 <pmm_init+0x110>
ffffffff809110a8:	27 80 bf fd 	ldih	$r13,-32729
ffffffff809110ac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809110b0:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff809110b4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809110b8:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff809110bc:	bf 6a ad f9 	ldi	$r13,27327($r13)
ffffffff809110c0:	57 70 10 fa 	ldi	$r16,28759($r16)
ffffffff809110c4:	2d ed a1 49 	zapnot	$r13,0xf,$r13
ffffffff809110c8:	0d 01 8d 41 	addl	$r12,$r13,$r13
ffffffff809110cc:	0d 07 a1 41 	and	$r13,$r1,$r13
ffffffff809110d0:	33 fc 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff809110d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809110d8:	2c af bd fb 	ldi	$r29,-20692($r29)
ffffffff809110dc:	00 20 3f fc 	ldih	$r1,8192
ffffffff809110e0:	52 07 ed 43 	mov	$r13,$r18
ffffffff809110e4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809110e8:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff809110ec:	ff ff e1 f9 	ldi	fp,-1($r1)
ffffffff809110f0:	2e 01 2d 40 	subl	$r1,$r13,$r14
ffffffff809110f4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809110f8:	6d 70 10 fa 	ldi	$r16,28781($r16)
ffffffff809110fc:	53 07 ef 43 	mov	fp,$r19
ffffffff80911100:	51 07 ee 43 	mov	$r14,$r17
ffffffff80911104:	26 fc 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80911108:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091110c:	01 02 3f fc 	ldih	$r1,513
ffffffff80911110:	f8 ae bd fb 	ldi	$r29,-20744($r29)
ffffffff80911114:	2b 9d 21 f8 	ldi	$r1,-25301($r1)
ffffffff80911118:	01 c9 20 48 	sll	$r1,0x6,$r1
ffffffff8091111c:	01 01 81 41 	addl	$r12,$r1,$r1
ffffffff80911120:	81 05 2f 40 	cmpule	$r1,fp,$r1
ffffffff80911124:	16 00 20 c4 	bne	$r1,ffffffff80911180 <pmm_init+0x200>
ffffffff80911128:	18 e0 29 8c 	ldl	$r1,-8168($r9)
ffffffff8091112c:	30 00 61 8f 	ldl	$r27,48($r1)
ffffffff80911130:	00 00 5b 07 	call	ra,($r27),ffffffff80911134 <pmm_init+0x1b4>
ffffffff80911134:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911138:	cc ae bd fb 	ldi	$r29,-20788($r29)
ffffffff8091113c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911140:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80911144:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911148:	c5 70 10 fa 	ldi	$r16,28869($r16)
ffffffff8091114c:	14 fc 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80911150:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911154:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80911158:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091115c:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80911160:	b0 ae bd fb 	ldi	$r29,-20816($r29)
ffffffff80911164:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80911168:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff8091116c:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80911170:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80911174:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80911178:	40 00 de fb 	ldi	sp,64(sp)
ffffffff8091117c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911180:	28 e0 4b 8c 	ldl	$r2,-8152($r11)
ffffffff80911184:	21 a9 a1 49 	srl	$r13,0xd,$r1
ffffffff80911188:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff8091118c:	0d 00 40 c0 	beq	$r2,ffffffff809111c4 <pmm_init+0x244>
ffffffff80911190:	18 e0 69 8c 	ldl	$r3,-8168($r9)
ffffffff80911194:	78 fb 21 f8 	ldi	$r1,-1160($r1)
ffffffff80911198:	30 e0 0a 8e 	ldl	$r16,-8144($r10)
ffffffff8091119c:	31 a9 c1 49 	srl	$r14,0xd,$r17
ffffffff809111a0:	42 01 20 48 	s4addl	$r1,0,$r2
ffffffff809111a4:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff809111a8:	10 00 63 8f 	ldl	$r27,16($r3)
ffffffff809111ac:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff809111b0:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff809111b4:	00 00 5b 07 	call	ra,($r27),ffffffff809111b8 <pmm_init+0x238>
ffffffff809111b8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809111bc:	48 ae bd fb 	ldi	$r29,-20920($r29)
ffffffff809111c0:	d9 ff ff 13 	br	ffffffff80911128 <pmm_init+0x1a8>
ffffffff809111c4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809111c8:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff809111cc:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809111d0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809111d4:	2e 00 3f fa 	ldi	$r17,46
ffffffff809111d8:	98 70 52 fa 	ldi	$r18,28824($r18)
ffffffff809111dc:	b7 70 10 fa 	ldi	$r16,28855($r16)
ffffffff809111e0:	2b fc 5b 07 	call	ra,($r27),ffffffff80910290 <__panic>
ffffffff809111e4:	5f 07 ff 43 	nop	
ffffffff809111e8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809111ec:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809111f0 <best_fit_init>:
ffffffff809111f0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809111f4:	10 ae bd fb 	ldi	$r29,-20976($r29)
ffffffff809111f8:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff809111fc:	38 e0 22 f8 	ldi	$r1,-8136($r2)
ffffffff80911200:	08 00 21 ac 	stl	$r1,8($r1)
ffffffff80911204:	38 e0 22 ac 	stl	$r1,-8136($r2)
ffffffff80911208:	10 00 e1 ab 	stw	$r31,16($r1)
ffffffff8091120c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80911210 <best_fit_nr_free_pages>:
ffffffff80911210:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911214:	f0 ad bd fb 	ldi	$r29,-21008($r29)
ffffffff80911218:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091121c:	48 e0 01 88 	ldw	$r0,-8120($r1)
ffffffff80911220:	20 ed 01 48 	zapnot	$r0,0xf,$r0
ffffffff80911224:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911228:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091122c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911230 <best_fit_alloc_pages>:
ffffffff80911230:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911234:	d0 ad bd fb 	ldi	$r29,-21040($r29)
ffffffff80911238:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091123c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911240:	3a 00 00 c2 	beq	$r16,ffffffff8091132c <best_fit_alloc_pages+0xfc>
ffffffff80911244:	00 00 dd fc 	ldih	$r6,0($r29)
ffffffff80911248:	40 07 ff 43 	clr	$r0
ffffffff8091124c:	38 e0 c6 f8 	ldi	$r6,-8136($r6)
ffffffff80911250:	10 00 06 89 	ldw	$r8,16($r6)
ffffffff80911254:	21 ed 01 49 	zapnot	$r8,0xf,$r1
ffffffff80911258:	61 05 30 40 	cmpult	$r1,$r16,$r1
ffffffff8091125c:	1e 00 20 c4 	bne	$r1,ffffffff809112d8 <best_fit_alloc_pages+0xa8>
ffffffff80911260:	05 20 00 49 	addw	$r8,0x1,$r5
ffffffff80911264:	42 07 e6 43 	mov	$r6,$r2
ffffffff80911268:	25 ed a1 48 	zapnot	$r5,0xf,$r5
ffffffff8091126c:	08 00 e0 13 	br	ffffffff80911290 <best_fit_alloc_pages+0x60>
ffffffff80911270:	f8 ff 22 88 	ldw	$r1,-8($r2)
ffffffff80911274:	e8 ff 82 f8 	ldi	$r4,-24($r2)
ffffffff80911278:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff8091127c:	67 05 25 40 	cmpult	$r1,$r5,$r7
ffffffff80911280:	83 05 01 42 	cmpule	$r16,$r1,$r3
ffffffff80911284:	03 07 67 40 	and	$r3,$r7,$r3
ffffffff80911288:	a5 14 61 44 	selne	$r3,$r1,$r5,$r5
ffffffff8091128c:	00 14 64 44 	selne	$r3,$r4,$r0,$r0
ffffffff80911290:	08 00 42 8c 	ldl	$r2,8($r2)
ffffffff80911294:	01 05 46 40 	cmpeq	$r2,$r6,$r1
ffffffff80911298:	f5 ff 3f c0 	beq	$r1,ffffffff80911270 <best_fit_alloc_pages+0x40>
ffffffff8091129c:	0e 00 00 c0 	beq	$r0,ffffffff809112d8 <best_fit_alloc_pages+0xa8>
ffffffff809112a0:	10 00 80 88 	ldw	$r4,16($r0)
ffffffff809112a4:	18 00 40 8c 	ldl	$r2,24($r0)
ffffffff809112a8:	05 00 f0 43 	addw	$r31,$r16,$r5
ffffffff809112ac:	20 00 60 8c 	ldl	$r3,32($r0)
ffffffff809112b0:	21 ed 81 48 	zapnot	$r4,0xf,$r1
ffffffff809112b4:	08 00 62 ac 	stl	$r3,8($r2)
ffffffff809112b8:	81 05 30 40 	cmpule	$r1,$r16,$r1
ffffffff809112bc:	00 00 43 ac 	stl	$r2,0($r3)
ffffffff809112c0:	0b 00 20 c0 	beq	$r1,ffffffff809112f0 <best_fit_alloc_pages+0xc0>
ffffffff809112c4:	08 00 20 8c 	ldl	$r1,8($r0)
ffffffff809112c8:	28 00 05 41 	subw	$r8,$r5,$r8
ffffffff809112cc:	10 00 06 a9 	stw	$r8,16($r6)
ffffffff809112d0:	21 47 20 48 	bic	$r1,0x2,$r1
ffffffff809112d4:	08 00 20 ac 	stl	$r1,8($r0)
ffffffff809112d8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809112dc:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809112e0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809112e4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809112e8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809112ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809112f0:	41 01 00 4a 	s4addl	$r16,0,$r1
ffffffff809112f4:	24 00 85 40 	subw	$r4,$r5,$r4
ffffffff809112f8:	10 01 30 40 	addl	$r1,$r16,$r16
ffffffff809112fc:	90 01 00 4a 	s8addl	$r16,0,$r16
ffffffff80911300:	10 01 10 40 	addl	$r0,$r16,$r16
ffffffff80911304:	08 00 30 8c 	ldl	$r1,8($r16)
ffffffff80911308:	10 00 90 a8 	stw	$r4,16($r16)
ffffffff8091130c:	18 00 90 f8 	ldi	$r4,24($r16)
ffffffff80911310:	41 47 20 48 	or	$r1,0x2,$r1
ffffffff80911314:	08 00 30 ac 	stl	$r1,8($r16)
ffffffff80911318:	00 00 83 ac 	stl	$r4,0($r3)
ffffffff8091131c:	08 00 82 ac 	stl	$r4,8($r2)
ffffffff80911320:	20 00 70 ac 	stl	$r3,32($r16)
ffffffff80911324:	18 00 50 ac 	stl	$r2,24($r16)
ffffffff80911328:	e6 ff ff 13 	br	ffffffff809112c4 <best_fit_alloc_pages+0x94>
ffffffff8091132c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911330:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff80911334:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911338:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff8091133c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911340:	2e 00 3f fa 	ldi	$r17,46
ffffffff80911344:	f0 70 73 fa 	ldi	$r19,28912($r19)
ffffffff80911348:	f6 70 52 fa 	ldi	$r18,28918($r18)
ffffffff8091134c:	0b 71 10 fa 	ldi	$r16,28939($r16)
ffffffff80911350:	cf fb 5b 07 	call	ra,($r27),ffffffff80910290 <__panic>
ffffffff80911354:	5f 07 ff 43 	nop	
ffffffff80911358:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091135c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911360 <best_fit_check>:
ffffffff80911360:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911364:	a0 ac bd fb 	ldi	$r29,-21344($r29)
ffffffff80911368:	a0 ff de fb 	ldi	sp,-96(sp)
ffffffff8091136c:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80911370:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff80911374:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80911378:	38 e0 2c f9 	ldi	$r9,-8136($r12)
ffffffff8091137c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911380:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80911384:	08 00 29 8c 	ldl	$r1,8($r9)
ffffffff80911388:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff8091138c:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80911390:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80911394:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80911398:	02 05 29 40 	cmpeq	$r1,$r9,$r2
ffffffff8091139c:	f4 01 40 c4 	bne	$r2,ffffffff80911b70 <best_fit_check+0x810>
ffffffff809113a0:	f0 ff 41 8c 	ldl	$r2,-16($r1)
ffffffff809113a4:	02 47 40 48 	and	$r2,0x2,$r2
ffffffff809113a8:	62 05 e2 43 	cmpult	$r31,$r2,$r2
ffffffff809113ac:	fe 01 40 c0 	beq	$r2,ffffffff80911ba8 <best_fit_check+0x848>
ffffffff809113b0:	4a 07 ff 43 	clr	$r10
ffffffff809113b4:	4b 07 ff 43 	clr	$r11
ffffffff809113b8:	04 00 e0 13 	br	ffffffff809113cc <best_fit_check+0x6c>
ffffffff809113bc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809113c0:	f0 ff 41 8c 	ldl	$r2,-16($r1)
ffffffff809113c4:	02 47 40 48 	and	$r2,0x2,$r2
ffffffff809113c8:	f7 01 40 c0 	beq	$r2,ffffffff80911ba8 <best_fit_check+0x848>
ffffffff809113cc:	f8 ff 61 88 	ldw	$r3,-8($r1)
ffffffff809113d0:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff809113d4:	0b 20 60 49 	addw	$r11,0x1,$r11
ffffffff809113d8:	02 05 29 40 	cmpeq	$r1,$r9,$r2
ffffffff809113dc:	0a 00 6a 40 	addw	$r3,$r10,$r10
ffffffff809113e0:	f7 ff 5f c0 	beq	$r2,ffffffff809113c0 <best_fit_check+0x60>
ffffffff809113e4:	4d 07 ea 43 	mov	$r10,$r13
ffffffff809113e8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809113ec:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff809113f0:	c7 fe 5b 07 	call	ra,($r27),ffffffff80910f10 <nr_free_pages>
ffffffff809113f4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809113f8:	00 05 0d 40 	cmpeq	$r0,$r13,$r0
ffffffff809113fc:	0c ac bd fb 	ldi	$r29,-21492($r29)
ffffffff80911400:	df 01 00 c0 	beq	$r0,ffffffff80911b80 <best_fit_check+0x820>
ffffffff80911404:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911408:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff8091140c:	01 00 1f fa 	ldi	$r16,1
ffffffff80911410:	7f fe 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff80911414:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911418:	ec ab bd fb 	ldi	$r29,-21524($r29)
ffffffff8091141c:	4d 07 e0 43 	mov	$r0,$r13
ffffffff80911420:	8a 00 3f fa 	ldi	$r17,138
ffffffff80911424:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911428:	3b 71 73 fa 	ldi	$r19,28987($r19)
ffffffff8091142c:	d7 01 00 c0 	beq	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911430:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911434:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff80911438:	01 00 1f fa 	ldi	$r16,1
ffffffff8091143c:	74 fe 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff80911440:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911444:	c0 ab bd fb 	ldi	$r29,-21568($r29)
ffffffff80911448:	4f 07 e0 43 	mov	$r0,fp
ffffffff8091144c:	8b 00 3f fa 	ldi	$r17,139
ffffffff80911450:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911454:	57 71 73 fa 	ldi	$r19,29015($r19)
ffffffff80911458:	cc 01 00 c0 	beq	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff8091145c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911460:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff80911464:	01 00 1f fa 	ldi	$r16,1
ffffffff80911468:	69 fe 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff8091146c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911470:	94 ab bd fb 	ldi	$r29,-21612($r29)
ffffffff80911474:	4e 07 e0 43 	mov	$r0,$r14
ffffffff80911478:	8c 00 3f fa 	ldi	$r17,140
ffffffff8091147c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911480:	73 71 73 fa 	ldi	$r19,29043($r19)
ffffffff80911484:	c1 01 00 c0 	beq	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911488:	02 05 e0 41 	cmpeq	fp,$r0,$r2
ffffffff8091148c:	04 05 a0 41 	cmpeq	$r13,$r0,$r4
ffffffff80911490:	01 05 af 41 	cmpeq	$r13,fp,$r1
ffffffff80911494:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911498:	43 07 e2 43 	mov	$r2,$r3
ffffffff8091149c:	8d 00 3f fa 	ldi	$r17,141
ffffffff809114a0:	8f 71 73 fa 	ldi	$r19,29071($r19)
ffffffff809114a4:	42 07 64 40 	or	$r3,$r4,$r2
ffffffff809114a8:	41 07 22 40 	or	$r1,$r2,$r1
ffffffff809114ac:	b7 01 20 c4 	bne	$r1,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff809114b0:	00 00 2d 88 	ldw	$r1,0($r13)
ffffffff809114b4:	c0 01 20 c4 	bne	$r1,ffffffff80911bb8 <best_fit_check+0x858>
ffffffff809114b8:	00 00 2f 88 	ldw	$r1,0(fp)
ffffffff809114bc:	be 01 20 c4 	bne	$r1,ffffffff80911bb8 <best_fit_check+0x858>
ffffffff809114c0:	00 00 20 88 	ldw	$r1,0($r0)
ffffffff809114c4:	bc 01 20 c4 	bne	$r1,ffffffff80911bb8 <best_fit_check+0x858>
ffffffff809114c8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809114cc:	60 81 21 8c 	ldl	$r1,-32416($r1)
ffffffff809114d0:	ff ff dd fc 	ldih	$r6,-1($r29)
ffffffff809114d4:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff809114d8:	48 81 42 8c 	ldl	$r2,-32440($r2)
ffffffff809114dc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809114e0:	70 74 e6 8c 	ldl	$r7,29808($r6)
ffffffff809114e4:	8f 00 3f fa 	ldi	$r17,143
ffffffff809114e8:	ec 71 73 fa 	ldi	$r19,29164($r19)
ffffffff809114ec:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff809114f0:	00 00 a2 8c 	ldl	$r5,0($r2)
ffffffff809114f4:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff809114f8:	88 80 42 8c 	ldl	$r2,-32632($r2)
ffffffff809114fc:	23 01 a1 41 	subl	$r13,$r1,$r3
ffffffff80911500:	43 69 60 48 	sra	$r3,0x3,$r3
ffffffff80911504:	00 00 82 8c 	ldl	$r4,0($r2)
ffffffff80911508:	03 03 67 40 	mull	$r3,$r7,$r3
ffffffff8091150c:	04 a9 81 48 	sll	$r4,0xd,$r4
ffffffff80911510:	03 01 65 40 	addl	$r3,$r5,$r3
ffffffff80911514:	03 a9 61 48 	sll	$r3,0xd,$r3
ffffffff80911518:	63 05 64 40 	cmpult	$r3,$r4,$r3
ffffffff8091151c:	9b 01 60 c0 	beq	$r3,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911520:	22 01 e1 41 	subl	fp,$r1,$r2
ffffffff80911524:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911528:	90 00 3f fa 	ldi	$r17,144
ffffffff8091152c:	42 69 40 48 	sra	$r2,0x3,$r2
ffffffff80911530:	09 72 73 fa 	ldi	$r19,29193($r19)
ffffffff80911534:	02 03 47 40 	mull	$r2,$r7,$r2
ffffffff80911538:	02 01 45 40 	addl	$r2,$r5,$r2
ffffffff8091153c:	02 a9 41 48 	sll	$r2,0xd,$r2
ffffffff80911540:	82 05 82 40 	cmpule	$r4,$r2,$r2
ffffffff80911544:	91 01 40 c4 	bne	$r2,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911548:	70 74 46 8c 	ldl	$r2,29808($r6)
ffffffff8091154c:	21 01 01 40 	subl	$r0,$r1,$r1
ffffffff80911550:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911554:	91 00 3f fa 	ldi	$r17,145
ffffffff80911558:	41 69 20 48 	sra	$r1,0x3,$r1
ffffffff8091155c:	26 72 73 fa 	ldi	$r19,29222($r19)
ffffffff80911560:	01 03 22 40 	mull	$r1,$r2,$r1
ffffffff80911564:	01 01 25 40 	addl	$r1,$r5,$r1
ffffffff80911568:	01 a9 21 48 	sll	$r1,0xd,$r1
ffffffff8091156c:	81 05 81 40 	cmpule	$r4,$r1,$r1
ffffffff80911570:	86 01 20 c4 	bne	$r1,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911574:	38 e0 2c 8c 	ldl	$r1,-8136($r12)
ffffffff80911578:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091157c:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff80911580:	01 00 1f fa 	ldi	$r16,1
ffffffff80911584:	38 e0 2c ad 	stl	$r9,-8136($r12)
ffffffff80911588:	40 00 3e ac 	stl	$r1,64(sp)
ffffffff8091158c:	08 00 29 8c 	ldl	$r1,8($r9)
ffffffff80911590:	08 00 29 ad 	stl	$r9,8($r9)
ffffffff80911594:	48 00 3e ac 	stl	$r1,72(sp)
ffffffff80911598:	10 00 29 88 	ldw	$r1,16($r9)
ffffffff8091159c:	10 00 e9 ab 	stw	$r31,16($r9)
ffffffff809115a0:	50 00 3e ac 	stl	$r1,80(sp)
ffffffff809115a4:	1a fe 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff809115a8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809115ac:	58 aa bd fb 	ldi	$r29,-21928($r29)
ffffffff809115b0:	99 00 3f fa 	ldi	$r17,153
ffffffff809115b4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809115b8:	43 72 73 fa 	ldi	$r19,29251($r19)
ffffffff809115bc:	73 01 00 c4 	bne	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff809115c0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809115c4:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff809115c8:	01 00 3f fa 	ldi	$r17,1
ffffffff809115cc:	50 07 ed 43 	mov	$r13,$r16
ffffffff809115d0:	2f fe 5b 07 	call	ra,($r27),ffffffff80910e90 <free_pages>
ffffffff809115d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809115d8:	2c aa bd fb 	ldi	$r29,-21972($r29)
ffffffff809115dc:	01 00 3f fa 	ldi	$r17,1
ffffffff809115e0:	50 07 ef 43 	mov	fp,$r16
ffffffff809115e4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809115e8:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff809115ec:	28 fe 5b 07 	call	ra,($r27),ffffffff80910e90 <free_pages>
ffffffff809115f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809115f4:	10 aa bd fb 	ldi	$r29,-22000($r29)
ffffffff809115f8:	01 00 3f fa 	ldi	$r17,1
ffffffff809115fc:	50 07 ee 43 	mov	$r14,$r16
ffffffff80911600:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911604:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff80911608:	21 fe 5b 07 	call	ra,($r27),ffffffff80910e90 <free_pages>
ffffffff8091160c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911610:	10 00 29 88 	ldw	$r1,16($r9)
ffffffff80911614:	f4 a9 bd fb 	ldi	$r29,-22028($r29)
ffffffff80911618:	9e 00 3f fa 	ldi	$r17,158
ffffffff8091161c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911620:	58 72 73 fa 	ldi	$r19,29272($r19)
ffffffff80911624:	01 65 20 48 	cmpeq	$r1,0x3,$r1
ffffffff80911628:	58 01 20 c0 	beq	$r1,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff8091162c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911630:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff80911634:	01 00 1f fa 	ldi	$r16,1
ffffffff80911638:	f5 fd 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff8091163c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911640:	c4 a9 bd fb 	ldi	$r29,-22076($r29)
ffffffff80911644:	4d 07 e0 43 	mov	$r0,$r13
ffffffff80911648:	a0 00 3f fa 	ldi	$r17,160
ffffffff8091164c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911650:	3b 71 73 fa 	ldi	$r19,28987($r19)
ffffffff80911654:	4d 01 00 c0 	beq	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911658:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091165c:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff80911660:	01 00 1f fa 	ldi	$r16,1
ffffffff80911664:	ea fd 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff80911668:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091166c:	98 a9 bd fb 	ldi	$r29,-22120($r29)
ffffffff80911670:	4f 07 e0 43 	mov	$r0,fp
ffffffff80911674:	a1 00 3f fa 	ldi	$r17,161
ffffffff80911678:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091167c:	57 71 73 fa 	ldi	$r19,29015($r19)
ffffffff80911680:	42 01 00 c0 	beq	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911684:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911688:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff8091168c:	01 00 1f fa 	ldi	$r16,1
ffffffff80911690:	df fd 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff80911694:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911698:	6c a9 bd fb 	ldi	$r29,-22164($r29)
ffffffff8091169c:	4e 07 e0 43 	mov	$r0,$r14
ffffffff809116a0:	a2 00 3f fa 	ldi	$r17,162
ffffffff809116a4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809116a8:	73 71 73 fa 	ldi	$r19,29043($r19)
ffffffff809116ac:	37 01 00 c0 	beq	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff809116b0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809116b4:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff809116b8:	01 00 1f fa 	ldi	$r16,1
ffffffff809116bc:	d4 fd 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff809116c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809116c4:	40 a9 bd fb 	ldi	$r29,-22208($r29)
ffffffff809116c8:	a3 00 3f fa 	ldi	$r17,163
ffffffff809116cc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809116d0:	43 72 73 fa 	ldi	$r19,29251($r19)
ffffffff809116d4:	2d 01 00 c4 	bne	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff809116d8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809116dc:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff809116e0:	01 00 3f fa 	ldi	$r17,1
ffffffff809116e4:	50 07 ed 43 	mov	$r13,$r16
ffffffff809116e8:	e9 fd 5b 07 	call	ra,($r27),ffffffff80910e90 <free_pages>
ffffffff809116ec:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809116f0:	08 00 29 8c 	ldl	$r1,8($r9)
ffffffff809116f4:	14 a9 bd fb 	ldi	$r29,-22252($r29)
ffffffff809116f8:	a6 00 3f fa 	ldi	$r17,166
ffffffff809116fc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911700:	65 72 73 fa 	ldi	$r19,29285($r19)
ffffffff80911704:	01 05 29 40 	cmpeq	$r1,$r9,$r1
ffffffff80911708:	20 01 20 c4 	bne	$r1,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff8091170c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911710:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff80911714:	01 00 1f fa 	ldi	$r16,1
ffffffff80911718:	bd fd 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff8091171c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911720:	e4 a8 bd fb 	ldi	$r29,-22300($r29)
ffffffff80911724:	00 05 a0 41 	cmpeq	$r13,$r0,$r0
ffffffff80911728:	a9 00 3f fa 	ldi	$r17,169
ffffffff8091172c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911730:	7d 72 73 fa 	ldi	$r19,29309($r19)
ffffffff80911734:	15 01 00 c0 	beq	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911738:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091173c:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff80911740:	01 00 1f fa 	ldi	$r16,1
ffffffff80911744:	b2 fd 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff80911748:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091174c:	b8 a8 bd fb 	ldi	$r29,-22344($r29)
ffffffff80911750:	aa 00 3f fa 	ldi	$r17,170
ffffffff80911754:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911758:	43 72 73 fa 	ldi	$r19,29251($r19)
ffffffff8091175c:	0b 01 00 c4 	bne	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911760:	10 00 29 88 	ldw	$r1,16($r9)
ffffffff80911764:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911768:	ab 00 3f fa 	ldi	$r17,171
ffffffff8091176c:	96 72 73 fa 	ldi	$r19,29334($r19)
ffffffff80911770:	06 01 20 c4 	bne	$r1,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911774:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff80911778:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091177c:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff80911780:	01 00 3f fa 	ldi	$r17,1
ffffffff80911784:	50 07 ed 43 	mov	$r13,$r16
ffffffff80911788:	38 e0 2c ac 	stl	$r1,-8136($r12)
ffffffff8091178c:	48 00 3e 8c 	ldl	$r1,72(sp)
ffffffff80911790:	08 00 29 ac 	stl	$r1,8($r9)
ffffffff80911794:	50 00 3e 8c 	ldl	$r1,80(sp)
ffffffff80911798:	10 00 29 a8 	stw	$r1,16($r9)
ffffffff8091179c:	bc fd 5b 07 	call	ra,($r27),ffffffff80910e90 <free_pages>
ffffffff809117a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809117a4:	60 a8 bd fb 	ldi	$r29,-22432($r29)
ffffffff809117a8:	01 00 3f fa 	ldi	$r17,1
ffffffff809117ac:	50 07 ef 43 	mov	fp,$r16
ffffffff809117b0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809117b4:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff809117b8:	b5 fd 5b 07 	call	ra,($r27),ffffffff80910e90 <free_pages>
ffffffff809117bc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809117c0:	44 a8 bd fb 	ldi	$r29,-22460($r29)
ffffffff809117c4:	01 00 3f fa 	ldi	$r17,1
ffffffff809117c8:	50 07 ee 43 	mov	$r14,$r16
ffffffff809117cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809117d0:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff809117d4:	ae fd 5b 07 	call	ra,($r27),ffffffff80910e90 <free_pages>
ffffffff809117d8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809117dc:	28 a8 bd fb 	ldi	$r29,-22488($r29)
ffffffff809117e0:	05 00 1f fa 	ldi	$r16,5
ffffffff809117e4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809117e8:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff809117ec:	88 fd 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff809117f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809117f4:	10 a8 bd fb 	ldi	$r29,-22512($r29)
ffffffff809117f8:	4e 07 e0 43 	mov	$r0,$r14
ffffffff809117fc:	c1 00 3f fa 	ldi	$r17,193
ffffffff80911800:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911804:	a3 72 73 fa 	ldi	$r19,29347($r19)
ffffffff80911808:	e0 00 00 c0 	beq	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff8091180c:	08 00 40 8c 	ldl	$r2,8($r0)
ffffffff80911810:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911814:	c2 00 3f fa 	ldi	$r17,194
ffffffff80911818:	ae 72 73 fa 	ldi	$r19,29358($r19)
ffffffff8091181c:	02 47 40 48 	and	$r2,0x2,$r2
ffffffff80911820:	62 05 e2 43 	cmpult	$r31,$r2,$r2
ffffffff80911824:	d9 00 40 c4 	bne	$r2,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911828:	38 e0 2c 8c 	ldl	$r1,-8136($r12)
ffffffff8091182c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911830:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff80911834:	01 00 1f fa 	ldi	$r16,1
ffffffff80911838:	38 e0 2c ad 	stl	$r9,-8136($r12)
ffffffff8091183c:	40 00 3e ac 	stl	$r1,64(sp)
ffffffff80911840:	08 00 29 8c 	ldl	$r1,8($r9)
ffffffff80911844:	08 00 29 ad 	stl	$r9,8($r9)
ffffffff80911848:	58 00 3e ac 	stl	$r1,88(sp)
ffffffff8091184c:	70 fd 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff80911850:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911854:	b0 a7 bd fb 	ldi	$r29,-22608($r29)
ffffffff80911858:	c7 00 3f fa 	ldi	$r17,199
ffffffff8091185c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911860:	43 72 73 fa 	ldi	$r19,29251($r19)
ffffffff80911864:	c9 00 00 c4 	bne	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911868:	10 00 29 88 	ldw	$r1,16($r9)
ffffffff8091186c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911870:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff80911874:	50 00 ae f9 	ldi	$r13,80($r14)
ffffffff80911878:	03 00 3f fa 	ldi	$r17,3
ffffffff8091187c:	50 07 ed 43 	mov	$r13,$r16
ffffffff80911880:	10 00 e9 ab 	stw	$r31,16($r9)
ffffffff80911884:	48 00 3e ac 	stl	$r1,72(sp)
ffffffff80911888:	81 fd 5b 07 	call	ra,($r27),ffffffff80910e90 <free_pages>
ffffffff8091188c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911890:	74 a7 bd fb 	ldi	$r29,-22668($r29)
ffffffff80911894:	04 00 1f fa 	ldi	$r16,4
ffffffff80911898:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091189c:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff809118a0:	5b fd 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff809118a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809118a8:	5c a7 bd fb 	ldi	$r29,-22692($r29)
ffffffff809118ac:	cd 00 3f fa 	ldi	$r17,205
ffffffff809118b0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809118b4:	c0 72 73 fa 	ldi	$r19,29376($r19)
ffffffff809118b8:	b4 00 00 c4 	bne	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff809118bc:	58 00 4e 8c 	ldl	$r2,88($r14)
ffffffff809118c0:	02 47 40 48 	and	$r2,0x2,$r2
ffffffff809118c4:	62 05 e2 43 	cmpult	$r31,$r2,$r2
ffffffff809118c8:	c3 00 40 c0 	beq	$r2,ffffffff80911bd8 <best_fit_check+0x878>
ffffffff809118cc:	60 00 4e 88 	ldw	$r2,96($r14)
ffffffff809118d0:	02 65 40 48 	cmpeq	$r2,0x3,$r2
ffffffff809118d4:	c0 00 40 c0 	beq	$r2,ffffffff80911bd8 <best_fit_check+0x878>
ffffffff809118d8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809118dc:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff809118e0:	03 00 1f fa 	ldi	$r16,3
ffffffff809118e4:	4a fd 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff809118e8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809118ec:	18 a7 bd fb 	ldi	$r29,-22760($r29)
ffffffff809118f0:	4f 07 e0 43 	mov	$r0,fp
ffffffff809118f4:	cf 00 3f fa 	ldi	$r17,207
ffffffff809118f8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809118fc:	03 73 73 fa 	ldi	$r19,29443($r19)
ffffffff80911900:	a2 00 00 c0 	beq	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911904:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911908:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff8091190c:	01 00 1f fa 	ldi	$r16,1
ffffffff80911910:	3f fd 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff80911914:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911918:	ec a6 bd fb 	ldi	$r29,-22804($r29)
ffffffff8091191c:	d0 00 3f fa 	ldi	$r17,208
ffffffff80911920:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911924:	43 72 73 fa 	ldi	$r19,29251($r19)
ffffffff80911928:	98 00 00 c4 	bne	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff8091192c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911930:	03 05 af 41 	cmpeq	$r13,fp,$r3
ffffffff80911934:	d1 00 3f fa 	ldi	$r17,209
ffffffff80911938:	21 73 73 fa 	ldi	$r19,29473($r19)
ffffffff8091193c:	93 00 60 c0 	beq	$r3,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911940:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911944:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff80911948:	28 00 2e f8 	ldi	$r1,40($r14)
ffffffff8091194c:	01 00 3f fa 	ldi	$r17,1
ffffffff80911950:	50 07 ee 43 	mov	$r14,$r16
ffffffff80911954:	50 00 3e ac 	stl	$r1,80(sp)
ffffffff80911958:	4d fd 5b 07 	call	ra,($r27),ffffffff80910e90 <free_pages>
ffffffff8091195c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911960:	a4 a6 bd fb 	ldi	$r29,-22876($r29)
ffffffff80911964:	03 00 3f fa 	ldi	$r17,3
ffffffff80911968:	50 07 ef 43 	mov	fp,$r16
ffffffff8091196c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911970:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff80911974:	46 fd 5b 07 	call	ra,($r27),ffffffff80910e90 <free_pages>
ffffffff80911978:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091197c:	08 00 4e 8c 	ldl	$r2,8($r14)
ffffffff80911980:	88 a6 bd fb 	ldi	$r29,-22904($r29)
ffffffff80911984:	02 47 40 48 	and	$r2,0x2,$r2
ffffffff80911988:	62 05 e2 43 	cmpult	$r31,$r2,$r2
ffffffff8091198c:	8e 00 40 c0 	beq	$r2,ffffffff80911bc8 <best_fit_check+0x868>
ffffffff80911990:	10 00 4e 88 	ldw	$r2,16($r14)
ffffffff80911994:	02 25 40 48 	cmpeq	$r2,0x1,$r2
ffffffff80911998:	8b 00 40 c0 	beq	$r2,ffffffff80911bc8 <best_fit_check+0x868>
ffffffff8091199c:	58 00 4e 8c 	ldl	$r2,88($r14)
ffffffff809119a0:	02 47 40 48 	and	$r2,0x2,$r2
ffffffff809119a4:	62 05 e2 43 	cmpult	$r31,$r2,$r2
ffffffff809119a8:	8f 00 40 c0 	beq	$r2,ffffffff80911be8 <best_fit_check+0x888>
ffffffff809119ac:	60 00 4e 88 	ldw	$r2,96($r14)
ffffffff809119b0:	02 65 40 48 	cmpeq	$r2,0x3,$r2
ffffffff809119b4:	8c 00 40 c0 	beq	$r2,ffffffff80911be8 <best_fit_check+0x888>
ffffffff809119b8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809119bc:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff809119c0:	01 00 1f fa 	ldi	$r16,1
ffffffff809119c4:	12 fd 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff809119c8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809119cc:	38 a6 bd fb 	ldi	$r29,-22984($r29)
ffffffff809119d0:	00 05 c0 41 	cmpeq	$r14,$r0,$r0
ffffffff809119d4:	d9 00 3f fa 	ldi	$r17,217
ffffffff809119d8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809119dc:	7a 73 73 fa 	ldi	$r19,29562($r19)
ffffffff809119e0:	6a 00 00 c0 	beq	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff809119e4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809119e8:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff809119ec:	01 00 3f fa 	ldi	$r17,1
ffffffff809119f0:	50 07 ee 43 	mov	$r14,$r16
ffffffff809119f4:	26 fd 5b 07 	call	ra,($r27),ffffffff80910e90 <free_pages>
ffffffff809119f8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809119fc:	08 a6 bd fb 	ldi	$r29,-23032($r29)
ffffffff80911a00:	02 00 1f fa 	ldi	$r16,2
ffffffff80911a04:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911a08:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff80911a0c:	00 fd 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff80911a10:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911a14:	f0 a5 bd fb 	ldi	$r29,-23056($r29)
ffffffff80911a18:	00 05 a0 41 	cmpeq	$r13,$r0,$r0
ffffffff80911a1c:	db 00 3f fa 	ldi	$r17,219
ffffffff80911a20:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911a24:	98 73 73 fa 	ldi	$r19,29592($r19)
ffffffff80911a28:	58 00 00 c0 	beq	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911a2c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911a30:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff80911a34:	50 07 ed 43 	mov	$r13,$r16
ffffffff80911a38:	02 00 3f fa 	ldi	$r17,2
ffffffff80911a3c:	14 fd 5b 07 	call	ra,($r27),ffffffff80910e90 <free_pages>
ffffffff80911a40:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911a44:	c0 a5 bd fb 	ldi	$r29,-23104($r29)
ffffffff80911a48:	50 00 1e 8e 	ldl	$r16,80(sp)
ffffffff80911a4c:	01 00 3f fa 	ldi	$r17,1
ffffffff80911a50:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911a54:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff80911a58:	0d fd 5b 07 	call	ra,($r27),ffffffff80910e90 <free_pages>
ffffffff80911a5c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911a60:	a4 a5 bd fb 	ldi	$r29,-23132($r29)
ffffffff80911a64:	05 00 1f fa 	ldi	$r16,5
ffffffff80911a68:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911a6c:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff80911a70:	e7 fc 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff80911a74:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911a78:	8c a5 bd fb 	ldi	$r29,-23156($r29)
ffffffff80911a7c:	4d 07 e0 43 	mov	$r0,$r13
ffffffff80911a80:	e0 00 3f fa 	ldi	$r17,224
ffffffff80911a84:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911a88:	b8 73 73 fa 	ldi	$r19,29624($r19)
ffffffff80911a8c:	3f 00 00 c0 	beq	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911a90:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911a94:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff80911a98:	01 00 1f fa 	ldi	$r16,1
ffffffff80911a9c:	dc fc 5b 07 	call	ra,($r27),ffffffff80910e10 <alloc_pages>
ffffffff80911aa0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911aa4:	60 a5 bd fb 	ldi	$r29,-23200($r29)
ffffffff80911aa8:	e1 00 3f fa 	ldi	$r17,225
ffffffff80911aac:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911ab0:	43 72 73 fa 	ldi	$r19,29251($r19)
ffffffff80911ab4:	35 00 00 c4 	bne	$r0,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911ab8:	10 00 29 88 	ldw	$r1,16($r9)
ffffffff80911abc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911ac0:	e3 00 3f fa 	ldi	$r17,227
ffffffff80911ac4:	96 72 73 fa 	ldi	$r19,29334($r19)
ffffffff80911ac8:	30 00 20 c4 	bne	$r1,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911acc:	48 00 3e 8c 	ldl	$r1,72(sp)
ffffffff80911ad0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911ad4:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff80911ad8:	05 00 3f fa 	ldi	$r17,5
ffffffff80911adc:	50 07 ed 43 	mov	$r13,$r16
ffffffff80911ae0:	10 00 29 a8 	stw	$r1,16($r9)
ffffffff80911ae4:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff80911ae8:	38 e0 2c ac 	stl	$r1,-8136($r12)
ffffffff80911aec:	58 00 3e 8c 	ldl	$r1,88(sp)
ffffffff80911af0:	08 00 29 ac 	stl	$r1,8($r9)
ffffffff80911af4:	e6 fc 5b 07 	call	ra,($r27),ffffffff80910e90 <free_pages>
ffffffff80911af8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911afc:	08 00 29 8c 	ldl	$r1,8($r9)
ffffffff80911b00:	08 a5 bd fb 	ldi	$r29,-23288($r29)
ffffffff80911b04:	02 05 29 40 	cmpeq	$r1,$r9,$r2
ffffffff80911b08:	07 00 40 c4 	bne	$r2,ffffffff80911b28 <best_fit_check+0x7c8>
ffffffff80911b0c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911b10:	f8 ff 61 88 	ldw	$r3,-8($r1)
ffffffff80911b14:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff80911b18:	2b 20 60 49 	subw	$r11,0x1,$r11
ffffffff80911b1c:	02 05 29 40 	cmpeq	$r1,$r9,$r2
ffffffff80911b20:	2a 00 43 41 	subw	$r10,$r3,$r10
ffffffff80911b24:	fa ff 5f c0 	beq	$r2,ffffffff80911b10 <best_fit_check+0x7b0>
ffffffff80911b28:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911b2c:	ee 00 3f fa 	ldi	$r17,238
ffffffff80911b30:	d6 73 73 fa 	ldi	$r19,29654($r19)
ffffffff80911b34:	15 00 60 c5 	bne	$r11,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911b38:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911b3c:	ef 00 3f fa 	ldi	$r17,239
ffffffff80911b40:	e1 73 73 fa 	ldi	$r19,29665($r19)
ffffffff80911b44:	11 00 40 c5 	bne	$r10,ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911b48:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911b4c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80911b50:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80911b54:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80911b58:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80911b5c:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80911b60:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80911b64:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80911b68:	60 00 de fb 	ldi	sp,96(sp)
ffffffff80911b6c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911b70:	4d 07 ff 43 	clr	$r13
ffffffff80911b74:	4a 07 ff 43 	clr	$r10
ffffffff80911b78:	4b 07 ff 43 	clr	$r11
ffffffff80911b7c:	1a fe ff 13 	br	ffffffff809113e8 <best_fit_check+0x88>
ffffffff80911b80:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911b84:	bc 00 3f fa 	ldi	$r17,188
ffffffff80911b88:	22 71 73 fa 	ldi	$r19,28962($r19)
ffffffff80911b8c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911b90:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff80911b94:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911b98:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911b9c:	f6 70 52 fa 	ldi	$r18,28918($r18)
ffffffff80911ba0:	0b 71 10 fa 	ldi	$r16,28939($r16)
ffffffff80911ba4:	ba f9 5b 07 	call	ra,($r27),ffffffff80910290 <__panic>
ffffffff80911ba8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911bac:	b9 00 3f fa 	ldi	$r17,185
ffffffff80911bb0:	01 74 73 fa 	ldi	$r19,29697($r19)
ffffffff80911bb4:	f5 ff ff 13 	br	ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911bb8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911bbc:	8e 00 3f fa 	ldi	$r17,142
ffffffff80911bc0:	b0 71 73 fa 	ldi	$r19,29104($r19)
ffffffff80911bc4:	f1 ff ff 13 	br	ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911bc8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911bcc:	d6 00 3f fa 	ldi	$r17,214
ffffffff80911bd0:	2e 73 73 fa 	ldi	$r19,29486($r19)
ffffffff80911bd4:	ed ff ff 13 	br	ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911bd8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911bdc:	ce 00 3f fa 	ldi	$r17,206
ffffffff80911be0:	d7 72 73 fa 	ldi	$r19,29399($r19)
ffffffff80911be4:	e9 ff ff 13 	br	ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911be8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911bec:	d7 00 3f fa 	ldi	$r17,215
ffffffff80911bf0:	54 73 73 fa 	ldi	$r19,29524($r19)
ffffffff80911bf4:	e5 ff ff 13 	br	ffffffff80911b8c <best_fit_check+0x82c>
ffffffff80911bf8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911bfc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911c00 <best_fit_free_pages>:
ffffffff80911c00:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911c04:	00 a4 bd fb 	ldi	$r29,-23552($r29)
ffffffff80911c08:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80911c0c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80911c10:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80911c14:	4b 07 f0 43 	mov	$r16,$r11
ffffffff80911c18:	4c 07 f1 43 	mov	$r17,$r12
ffffffff80911c1c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911c20:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80911c24:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80911c28:	9a 00 20 c2 	beq	$r17,ffffffff80911e94 <best_fit_free_pages+0x294>
ffffffff80911c2c:	4a 01 20 4a 	s4addl	$r17,0,$r10
ffffffff80911c30:	08 00 30 8c 	ldl	$r1,8($r16)
ffffffff80911c34:	0a 01 51 41 	addl	$r10,$r17,$r10
ffffffff80911c38:	8a 01 40 49 	s8addl	$r10,0,$r10
ffffffff80911c3c:	0a 01 0a 42 	addl	$r16,$r10,$r10
ffffffff80911c40:	02 05 0a 42 	cmpeq	$r16,$r10,$r2
ffffffff80911c44:	17 00 40 c4 	bne	$r2,ffffffff80911ca4 <best_fit_free_pages+0xa4>
ffffffff80911c48:	22 29 20 48 	srl	$r1,0x1,$r2
ffffffff80911c4c:	41 07 41 40 	or	$r2,$r1,$r1
ffffffff80911c50:	86 00 20 dc 	blbs	$r1,ffffffff80911e6c <best_fit_free_pages+0x26c>
ffffffff80911c54:	49 07 f0 43 	mov	$r16,$r9
ffffffff80911c58:	06 00 e0 13 	br	ffffffff80911c74 <best_fit_free_pages+0x74>
ffffffff80911c5c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911c60:	08 00 49 8c 	ldl	$r2,8($r9)
ffffffff80911c64:	28 03 e9 27 	fillcs	808($r9)
ffffffff80911c68:	21 29 40 48 	srl	$r2,0x1,$r1
ffffffff80911c6c:	41 07 22 40 	or	$r1,$r2,$r1
ffffffff80911c70:	7e 00 20 dc 	blbs	$r1,ffffffff80911e6c <best_fit_free_pages+0x26c>
ffffffff80911c74:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911c78:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80911c7c:	50 07 e9 43 	mov	$r9,$r16
ffffffff80911c80:	28 00 5f fa 	ldi	$r18,40
ffffffff80911c84:	51 07 ff 43 	clr	$r17
ffffffff80911c88:	28 00 29 f9 	ldi	$r9,40($r9)
ffffffff80911c8c:	54 01 5b 07 	call	ra,($r27),ffffffff809121e0 <memset>
ffffffff80911c90:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911c94:	01 05 2a 41 	cmpeq	$r9,$r10,$r1
ffffffff80911c98:	70 a3 bd fb 	ldi	$r29,-23696($r29)
ffffffff80911c9c:	f0 ff 3f c0 	beq	$r1,ffffffff80911c60 <best_fit_free_pages+0x60>
ffffffff80911ca0:	08 00 2b 8c 	ldl	$r1,8($r11)
ffffffff80911ca4:	00 00 dd fc 	ldih	$r6,0($r29)
ffffffff80911ca8:	41 47 20 48 	or	$r1,0x2,$r1
ffffffff80911cac:	0c 00 ec 43 	addw	$r31,$r12,$r12
ffffffff80911cb0:	38 e0 66 f8 	ldi	$r3,-8136($r6)
ffffffff80911cb4:	08 00 2b ac 	stl	$r1,8($r11)
ffffffff80911cb8:	10 00 8b a9 	stw	$r12,16($r11)
ffffffff80911cbc:	10 00 43 88 	ldw	$r2,16($r3)
ffffffff80911cc0:	08 00 23 8c 	ldl	$r1,8($r3)
ffffffff80911cc4:	0c 00 4c 40 	addw	$r2,$r12,$r12
ffffffff80911cc8:	02 05 23 40 	cmpeq	$r1,$r3,$r2
ffffffff80911ccc:	10 00 83 a9 	stw	$r12,16($r3)
ffffffff80911cd0:	4f 00 40 c4 	bne	$r2,ffffffff80911e10 <best_fit_free_pages+0x210>
ffffffff80911cd4:	e8 ff 41 f8 	ldi	$r2,-24($r1)
ffffffff80911cd8:	38 e0 e6 8c 	ldl	$r7,-8136($r6)
ffffffff80911cdc:	48 07 ff 43 	clr	$r8
ffffffff80911ce0:	18 00 ab f8 	ldi	$r5,24($r11)
ffffffff80911ce4:	64 05 62 41 	cmpult	$r11,$r2,$r4
ffffffff80911ce8:	08 00 80 c4 	bne	$r4,ffffffff80911d0c <best_fit_free_pages+0x10c>
ffffffff80911cec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911cf0:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff80911cf4:	04 05 43 40 	cmpeq	$r2,$r3,$r4
ffffffff80911cf8:	0d 00 80 c4 	bne	$r4,ffffffff80911d30 <best_fit_free_pages+0x130>
ffffffff80911cfc:	41 07 e2 43 	mov	$r2,$r1
ffffffff80911d00:	e8 ff 41 f8 	ldi	$r2,-24($r1)
ffffffff80911d04:	64 05 62 41 	cmpult	$r11,$r2,$r4
ffffffff80911d08:	f9 ff 9f c0 	beq	$r4,ffffffff80911cf0 <best_fit_free_pages+0xf0>
ffffffff80911d0c:	65 00 00 c5 	bne	$r8,ffffffff80911ea4 <best_fit_free_pages+0x2a4>
ffffffff80911d10:	00 00 81 8c 	ldl	$r4,0($r1)
ffffffff80911d14:	00 00 a1 ac 	stl	$r5,0($r1)
ffffffff80911d18:	08 00 a4 ac 	stl	$r5,8($r4)
ffffffff80911d1c:	05 05 83 40 	cmpeq	$r4,$r3,$r5
ffffffff80911d20:	20 00 2b ac 	stl	$r1,32($r11)
ffffffff80911d24:	18 00 8b ac 	stl	$r4,24($r11)
ffffffff80911d28:	11 00 a0 c0 	beq	$r5,ffffffff80911d70 <best_fit_free_pages+0x170>
ffffffff80911d2c:	1d 00 e0 13 	br	ffffffff80911da4 <best_fit_free_pages+0x1a4>
ffffffff80911d30:	08 00 a1 ac 	stl	$r5,8($r1)
ffffffff80911d34:	47 07 e5 43 	mov	$r5,$r7
ffffffff80911d38:	20 00 6b ac 	stl	$r3,32($r11)
ffffffff80911d3c:	18 00 2b ac 	stl	$r1,24($r11)
ffffffff80911d40:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff80911d44:	04 05 43 40 	cmpeq	$r2,$r3,$r4
ffffffff80911d48:	05 00 80 c4 	bne	$r4,ffffffff80911d60 <best_fit_free_pages+0x160>
ffffffff80911d4c:	01 00 1f f9 	ldi	$r8,1
ffffffff80911d50:	41 07 e2 43 	mov	$r2,$r1
ffffffff80911d54:	ea ff ff 13 	br	ffffffff80911d00 <best_fit_free_pages+0x100>
ffffffff80911d58:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911d5c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911d60:	38 e0 a6 ac 	stl	$r5,-8136($r6)
ffffffff80911d64:	02 05 23 40 	cmpeq	$r1,$r3,$r2
ffffffff80911d68:	44 07 e1 43 	mov	$r1,$r4
ffffffff80911d6c:	0a 00 40 c4 	bne	$r2,ffffffff80911d98 <best_fit_free_pages+0x198>
ffffffff80911d70:	f8 ff c4 88 	ldw	$r6,-8($r4)
ffffffff80911d74:	e8 ff a4 f8 	ldi	$r5,-24($r4)
ffffffff80911d78:	22 ed c1 48 	zapnot	$r6,0xf,$r2
ffffffff80911d7c:	41 01 40 48 	s4addl	$r2,0,$r1
ffffffff80911d80:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80911d84:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80911d88:	01 01 a1 40 	addl	$r5,$r1,$r1
ffffffff80911d8c:	01 05 61 41 	cmpeq	$r11,$r1,$r1
ffffffff80911d90:	2b 00 20 c4 	bne	$r1,ffffffff80911e40 <best_fit_free_pages+0x240>
ffffffff80911d94:	20 00 2b 8c 	ldl	$r1,32($r11)
ffffffff80911d98:	03 05 23 40 	cmpeq	$r1,$r3,$r3
ffffffff80911d9c:	e8 ff 41 f8 	ldi	$r2,-24($r1)
ffffffff80911da0:	12 00 60 c4 	bne	$r3,ffffffff80911dec <best_fit_free_pages+0x1ec>
ffffffff80911da4:	10 00 ab 88 	ldw	$r5,16($r11)
ffffffff80911da8:	24 ed a1 48 	zapnot	$r5,0xf,$r4
ffffffff80911dac:	43 01 80 48 	s4addl	$r4,0,$r3
ffffffff80911db0:	03 01 64 40 	addl	$r3,$r4,$r3
ffffffff80911db4:	83 01 60 48 	s8addl	$r3,0,$r3
ffffffff80911db8:	03 01 63 41 	addl	$r11,$r3,$r3
ffffffff80911dbc:	02 05 43 40 	cmpeq	$r2,$r3,$r2
ffffffff80911dc0:	0a 00 40 c0 	beq	$r2,ffffffff80911dec <best_fit_free_pages+0x1ec>
ffffffff80911dc4:	f8 ff 61 88 	ldw	$r3,-8($r1)
ffffffff80911dc8:	f0 ff 41 8c 	ldl	$r2,-16($r1)
ffffffff80911dcc:	00 00 c1 8c 	ldl	$r6,0($r1)
ffffffff80911dd0:	08 00 81 8c 	ldl	$r4,8($r1)
ffffffff80911dd4:	05 00 65 40 	addw	$r3,$r5,$r5
ffffffff80911dd8:	22 47 40 48 	bic	$r2,0x2,$r2
ffffffff80911ddc:	10 00 ab a8 	stw	$r5,16($r11)
ffffffff80911de0:	f0 ff 41 ac 	stl	$r2,-16($r1)
ffffffff80911de4:	08 00 86 ac 	stl	$r4,8($r6)
ffffffff80911de8:	00 00 c4 ac 	stl	$r6,0($r4)
ffffffff80911dec:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911df0:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80911df4:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80911df8:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80911dfc:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80911e00:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80911e04:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911e08:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911e0c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911e10:	18 00 4b f8 	ldi	$r2,24($r11)
ffffffff80911e14:	20 00 2b ac 	stl	$r1,32($r11)
ffffffff80911e18:	18 00 2b ac 	stl	$r1,24($r11)
ffffffff80911e1c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911e20:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80911e24:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80911e28:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80911e2c:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80911e30:	38 e0 46 ac 	stl	$r2,-8136($r6)
ffffffff80911e34:	08 00 41 ac 	stl	$r2,8($r1)
ffffffff80911e38:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80911e3c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911e40:	10 00 eb 88 	ldw	$r7,16($r11)
ffffffff80911e44:	08 00 4b 8c 	ldl	$r2,8($r11)
ffffffff80911e48:	20 00 2b 8c 	ldl	$r1,32($r11)
ffffffff80911e4c:	06 00 e6 40 	addw	$r7,$r6,$r6
ffffffff80911e50:	22 47 40 48 	bic	$r2,0x2,$r2
ffffffff80911e54:	f8 ff c4 a8 	stw	$r6,-8($r4)
ffffffff80911e58:	08 00 4b ac 	stl	$r2,8($r11)
ffffffff80911e5c:	4b 07 e5 43 	mov	$r5,$r11
ffffffff80911e60:	08 00 24 ac 	stl	$r1,8($r4)
ffffffff80911e64:	00 00 81 ac 	stl	$r4,0($r1)
ffffffff80911e68:	cb ff ff 13 	br	ffffffff80911d98 <best_fit_free_pages+0x198>
ffffffff80911e6c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911e70:	52 00 3f fa 	ldi	$r17,82
ffffffff80911e74:	ec 73 73 fa 	ldi	$r19,29676($r19)
ffffffff80911e78:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911e7c:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff80911e80:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911e84:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911e88:	f6 70 52 fa 	ldi	$r18,28918($r18)
ffffffff80911e8c:	0b 71 10 fa 	ldi	$r16,28939($r16)
ffffffff80911e90:	ff f8 5b 07 	call	ra,($r27),ffffffff80910290 <__panic>
ffffffff80911e94:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911e98:	4f 00 3f fa 	ldi	$r17,79
ffffffff80911e9c:	f0 70 73 fa 	ldi	$r19,28912($r19)
ffffffff80911ea0:	f5 ff ff 13 	br	ffffffff80911e78 <best_fit_free_pages+0x278>
ffffffff80911ea4:	38 e0 e6 ac 	stl	$r7,-8136($r6)
ffffffff80911ea8:	99 ff ff 13 	br	ffffffff80911d10 <best_fit_free_pages+0x110>
ffffffff80911eac:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911eb0 <best_fit_init_memmap>:
ffffffff80911eb0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911eb4:	50 a1 bd fb 	ldi	$r29,-24240($r29)
ffffffff80911eb8:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80911ebc:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80911ec0:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80911ec4:	4b 07 f0 43 	mov	$r16,$r11
ffffffff80911ec8:	4c 07 f1 43 	mov	$r17,$r12
ffffffff80911ecc:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911ed0:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80911ed4:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80911ed8:	67 00 20 c2 	beq	$r17,ffffffff80912078 <best_fit_init_memmap+0x1c8>
ffffffff80911edc:	4a 01 20 4a 	s4addl	$r17,0,$r10
ffffffff80911ee0:	08 00 30 8c 	ldl	$r1,8($r16)
ffffffff80911ee4:	0a 01 51 41 	addl	$r10,$r17,$r10
ffffffff80911ee8:	8a 01 40 49 	s8addl	$r10,0,$r10
ffffffff80911eec:	0a 01 0a 42 	addl	$r16,$r10,$r10
ffffffff80911ef0:	02 05 0a 42 	cmpeq	$r16,$r10,$r2
ffffffff80911ef4:	15 00 40 c4 	bne	$r2,ffffffff80911f4c <best_fit_init_memmap+0x9c>
ffffffff80911ef8:	55 00 20 d8 	blbc	$r1,ffffffff80912050 <best_fit_init_memmap+0x1a0>
ffffffff80911efc:	49 07 f0 43 	mov	$r16,$r9
ffffffff80911f00:	06 00 e0 13 	br	ffffffff80911f1c <best_fit_init_memmap+0x6c>
ffffffff80911f04:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911f08:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911f0c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911f10:	08 00 29 8c 	ldl	$r1,8($r9)
ffffffff80911f14:	28 03 e9 27 	fillcs	808($r9)
ffffffff80911f18:	4d 00 20 d8 	blbc	$r1,ffffffff80912050 <best_fit_init_memmap+0x1a0>
ffffffff80911f1c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911f20:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80911f24:	50 07 e9 43 	mov	$r9,$r16
ffffffff80911f28:	28 00 5f fa 	ldi	$r18,40
ffffffff80911f2c:	51 07 ff 43 	clr	$r17
ffffffff80911f30:	28 00 29 f9 	ldi	$r9,40($r9)
ffffffff80911f34:	aa 00 5b 07 	call	ra,($r27),ffffffff809121e0 <memset>
ffffffff80911f38:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911f3c:	01 05 2a 41 	cmpeq	$r9,$r10,$r1
ffffffff80911f40:	c8 a0 bd fb 	ldi	$r29,-24376($r29)
ffffffff80911f44:	f2 ff 3f c0 	beq	$r1,ffffffff80911f10 <best_fit_init_memmap+0x60>
ffffffff80911f48:	08 00 2b 8c 	ldl	$r1,8($r11)
ffffffff80911f4c:	00 00 dd fc 	ldih	$r6,0($r29)
ffffffff80911f50:	41 47 20 48 	or	$r1,0x2,$r1
ffffffff80911f54:	11 00 ec 43 	addw	$r31,$r12,$r17
ffffffff80911f58:	38 e0 66 f8 	ldi	$r3,-8136($r6)
ffffffff80911f5c:	08 00 2b ac 	stl	$r1,8($r11)
ffffffff80911f60:	10 00 2b aa 	stw	$r17,16($r11)
ffffffff80911f64:	10 00 43 88 	ldw	$r2,16($r3)
ffffffff80911f68:	08 00 23 8c 	ldl	$r1,8($r3)
ffffffff80911f6c:	11 00 51 40 	addw	$r2,$r17,$r17
ffffffff80911f70:	02 05 23 40 	cmpeq	$r1,$r3,$r2
ffffffff80911f74:	10 00 23 aa 	stw	$r17,16($r3)
ffffffff80911f78:	29 00 40 c4 	bne	$r2,ffffffff80912020 <best_fit_init_memmap+0x170>
ffffffff80911f7c:	e8 ff 41 f8 	ldi	$r2,-24($r1)
ffffffff80911f80:	38 e0 e6 8c 	ldl	$r7,-8136($r6)
ffffffff80911f84:	48 07 ff 43 	clr	$r8
ffffffff80911f88:	18 00 ab f8 	ldi	$r5,24($r11)
ffffffff80911f8c:	62 05 62 41 	cmpult	$r11,$r2,$r2
ffffffff80911f90:	0a 00 40 c4 	bne	$r2,ffffffff80911fbc <best_fit_init_memmap+0x10c>
ffffffff80911f94:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911f98:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911f9c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911fa0:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff80911fa4:	04 05 43 40 	cmpeq	$r2,$r3,$r4
ffffffff80911fa8:	11 00 80 c4 	bne	$r4,ffffffff80911ff0 <best_fit_init_memmap+0x140>
ffffffff80911fac:	41 07 e2 43 	mov	$r2,$r1
ffffffff80911fb0:	e8 ff 41 f8 	ldi	$r2,-24($r1)
ffffffff80911fb4:	62 05 62 41 	cmpult	$r11,$r2,$r2
ffffffff80911fb8:	f9 ff 5f c0 	beq	$r2,ffffffff80911fa0 <best_fit_init_memmap+0xf0>
ffffffff80911fbc:	34 00 00 c5 	bne	$r8,ffffffff80912090 <best_fit_init_memmap+0x1e0>
ffffffff80911fc0:	00 00 41 8c 	ldl	$r2,0($r1)
ffffffff80911fc4:	00 00 a1 ac 	stl	$r5,0($r1)
ffffffff80911fc8:	08 00 a2 ac 	stl	$r5,8($r2)
ffffffff80911fcc:	20 00 2b ac 	stl	$r1,32($r11)
ffffffff80911fd0:	18 00 4b ac 	stl	$r2,24($r11)
ffffffff80911fd4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911fd8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80911fdc:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80911fe0:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80911fe4:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80911fe8:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80911fec:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911ff0:	08 00 a1 ac 	stl	$r5,8($r1)
ffffffff80911ff4:	47 07 e5 43 	mov	$r5,$r7
ffffffff80911ff8:	20 00 6b ac 	stl	$r3,32($r11)
ffffffff80911ffc:	18 00 2b ac 	stl	$r1,24($r11)
ffffffff80912000:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff80912004:	01 05 43 40 	cmpeq	$r2,$r3,$r1
ffffffff80912008:	1f 00 20 c4 	bne	$r1,ffffffff80912088 <best_fit_init_memmap+0x1d8>
ffffffff8091200c:	01 00 1f f9 	ldi	$r8,1
ffffffff80912010:	41 07 e2 43 	mov	$r2,$r1
ffffffff80912014:	e6 ff ff 13 	br	ffffffff80911fb0 <best_fit_init_memmap+0x100>
ffffffff80912018:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091201c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912020:	18 00 4b f8 	ldi	$r2,24($r11)
ffffffff80912024:	20 00 2b ac 	stl	$r1,32($r11)
ffffffff80912028:	18 00 2b ac 	stl	$r1,24($r11)
ffffffff8091202c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912030:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912034:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912038:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff8091203c:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80912040:	38 e0 46 ac 	stl	$r2,-8136($r6)
ffffffff80912044:	08 00 41 ac 	stl	$r2,8($r1)
ffffffff80912048:	30 00 de fb 	ldi	sp,48(sp)
ffffffff8091204c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912050:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912054:	16 00 3f fa 	ldi	$r17,22
ffffffff80912058:	11 74 73 fa 	ldi	$r19,29713($r19)
ffffffff8091205c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912060:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff80912064:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912068:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091206c:	f6 70 52 fa 	ldi	$r18,28918($r18)
ffffffff80912070:	0b 71 10 fa 	ldi	$r16,28939($r16)
ffffffff80912074:	86 f8 5b 07 	call	ra,($r27),ffffffff80910290 <__panic>
ffffffff80912078:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091207c:	13 00 3f fa 	ldi	$r17,19
ffffffff80912080:	f0 70 73 fa 	ldi	$r19,28912($r19)
ffffffff80912084:	f5 ff ff 13 	br	ffffffff8091205c <best_fit_init_memmap+0x1ac>
ffffffff80912088:	38 e0 a6 ac 	stl	$r5,-8136($r6)
ffffffff8091208c:	d1 ff ff 13 	br	ffffffff80911fd4 <best_fit_init_memmap+0x124>
ffffffff80912090:	38 e0 e6 ac 	stl	$r7,-8136($r6)
ffffffff80912094:	ca ff ff 13 	br	ffffffff80911fc0 <best_fit_init_memmap+0x110>
ffffffff80912098:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091209c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809120a0 <strnlen>:
ffffffff809120a0:	13 00 20 c2 	beq	$r17,ffffffff809120f0 <strnlen+0x50>
ffffffff809120a4:	00 00 50 80 	ldbu	$r2,0($r16)
ffffffff809120a8:	01 00 30 f8 	ldi	$r1,1($r16)
ffffffff809120ac:	10 00 40 c0 	beq	$r2,ffffffff809120f0 <strnlen+0x50>
ffffffff809120b0:	11 01 11 42 	addl	$r16,$r17,$r17
ffffffff809120b4:	04 00 e0 13 	br	ffffffff809120c8 <strnlen+0x28>
ffffffff809120b8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809120bc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809120c0:	ff ff 41 80 	ldbu	$r2,-1($r1)
ffffffff809120c4:	06 00 40 c0 	beq	$r2,ffffffff809120e0 <strnlen+0x40>
ffffffff809120c8:	02 05 31 40 	cmpeq	$r1,$r17,$r2
ffffffff809120cc:	20 01 30 40 	subl	$r1,$r16,$r0
ffffffff809120d0:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff809120d4:	fa ff 5f c0 	beq	$r2,ffffffff809120c0 <strnlen+0x20>
ffffffff809120d8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809120dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809120e0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809120e4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809120e8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809120ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809120f0:	40 07 ff 43 	clr	$r0
ffffffff809120f4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809120f8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809120fc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912100 <strcmp>:
ffffffff80912100:	00 00 30 80 	ldbu	$r1,0($r16)
ffffffff80912104:	00 00 11 80 	ldbu	$r0,0($r17)
ffffffff80912108:	42 0d e1 43 	sextb	$r1,$r2
ffffffff8091210c:	40 0d e0 43 	sextb	$r0,$r0
ffffffff80912110:	1b 00 40 c0 	beq	$r2,ffffffff80912180 <strcmp+0x80>
ffffffff80912114:	02 05 40 40 	cmpeq	$r2,$r0,$r2
ffffffff80912118:	01 00 e1 43 	addw	$r31,$r1,$r1
ffffffff8091211c:	08 00 40 c4 	bne	$r2,ffffffff80912140 <strcmp+0x40>
ffffffff80912120:	0e 00 e0 13 	br	ffffffff8091215c <strcmp+0x5c>
ffffffff80912124:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912128:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091212c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912130:	40 0d e0 43 	sextb	$r0,$r0
ffffffff80912134:	51 07 e2 43 	mov	$r2,$r17
ffffffff80912138:	02 05 20 40 	cmpeq	$r1,$r0,$r2
ffffffff8091213c:	0c 00 40 c0 	beq	$r2,ffffffff80912170 <strcmp+0x70>
ffffffff80912140:	01 00 10 fa 	ldi	$r16,1($r16)
ffffffff80912144:	00 00 30 80 	ldbu	$r1,0($r16)
ffffffff80912148:	01 00 51 f8 	ldi	$r2,1($r17)
ffffffff8091214c:	01 00 11 80 	ldbu	$r0,1($r17)
ffffffff80912150:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80912154:	f6 ff 3f c4 	bne	$r1,ffffffff80912130 <strcmp+0x30>
ffffffff80912158:	40 0d e0 43 	sextb	$r0,$r0
ffffffff8091215c:	00 e7 1f 48 	and	$r0,0xff,$r0
ffffffff80912160:	20 00 20 40 	subw	$r1,$r0,$r0
ffffffff80912164:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912168:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091216c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912170:	01 e7 3f 48 	and	$r1,0xff,$r1
ffffffff80912174:	00 e7 1f 48 	and	$r0,0xff,$r0
ffffffff80912178:	20 00 20 40 	subw	$r1,$r0,$r0
ffffffff8091217c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912180:	41 07 ff 43 	clr	$r1
ffffffff80912184:	f5 ff ff 13 	br	ffffffff8091215c <strcmp+0x5c>
ffffffff80912188:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091218c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912190 <strchr>:
ffffffff80912190:	00 00 30 80 	ldbu	$r1,0($r16)
ffffffff80912194:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80912198:	0b 00 20 c0 	beq	$r1,ffffffff809121c8 <strchr+0x38>
ffffffff8091219c:	01 05 21 42 	cmpeq	$r17,$r1,$r1
ffffffff809121a0:	04 00 20 c0 	beq	$r1,ffffffff809121b4 <strchr+0x24>
ffffffff809121a4:	0a 00 e0 13 	br	ffffffff809121d0 <strchr+0x40>
ffffffff809121a8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809121ac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809121b0:	07 00 40 c4 	bne	$r2,ffffffff809121d0 <strchr+0x40>
ffffffff809121b4:	01 00 10 fa 	ldi	$r16,1($r16)
ffffffff809121b8:	00 00 30 80 	ldbu	$r1,0($r16)
ffffffff809121bc:	41 0d e1 43 	sextb	$r1,$r1
ffffffff809121c0:	02 05 31 40 	cmpeq	$r1,$r17,$r2
ffffffff809121c4:	fa ff 3f c4 	bne	$r1,ffffffff809121b0 <strchr+0x20>
ffffffff809121c8:	40 07 ff 43 	clr	$r0
ffffffff809121cc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809121d0:	40 07 f0 43 	mov	$r16,$r0
ffffffff809121d4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809121d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809121dc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809121e0 <memset>:
ffffffff809121e0:	ff ff 52 f8 	ldi	$r2,-1($r18)
ffffffff809121e4:	16 00 40 c2 	beq	$r18,ffffffff80912240 <memset+0x60>
ffffffff809121e8:	83 65 40 48 	cmpule	$r2,0x3,$r3
ffffffff809121ec:	41 07 f0 43 	mov	$r16,$r1
ffffffff809121f0:	0c 00 60 c4 	bne	$r3,ffffffff80912224 <memset+0x44>
ffffffff809121f4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809121f8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809121fc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912200:	50 00 e1 9b 	fillde	80($r1)
ffffffff80912204:	00 00 21 a2 	stb	$r17,0($r1)
ffffffff80912208:	fc ff 42 f8 	ldi	$r2,-4($r2)
ffffffff8091220c:	04 00 21 f8 	ldi	$r1,4($r1)
ffffffff80912210:	83 65 40 48 	cmpule	$r2,0x3,$r3
ffffffff80912214:	fd ff 21 a2 	stb	$r17,-3($r1)
ffffffff80912218:	fe ff 21 a2 	stb	$r17,-2($r1)
ffffffff8091221c:	ff ff 21 a2 	stb	$r17,-1($r1)
ffffffff80912220:	f7 ff 7f c0 	beq	$r3,ffffffff80912200 <memset+0x20>
ffffffff80912224:	01 00 42 f8 	ldi	$r2,1($r2)
ffffffff80912228:	02 01 22 40 	addl	$r1,$r2,$r2
ffffffff8091222c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912230:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80912234:	ff ff 21 a2 	stb	$r17,-1($r1)
ffffffff80912238:	03 05 22 40 	cmpeq	$r1,$r2,$r3
ffffffff8091223c:	fc ff 7f c0 	beq	$r3,ffffffff80912230 <memset+0x50>
ffffffff80912240:	40 07 f0 43 	mov	$r16,$r0
ffffffff80912244:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912248:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091224c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912250 <printnum>:
ffffffff80912250:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912254:	b0 9d bd fb 	ldi	$r29,-25168($r29)
ffffffff80912258:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091225c:	28 80 7b 8f 	ldl	$r27,-32728($r27)
ffffffff80912260:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80912264:	39 ed 61 4a 	zapnot	$r19,0xf,$r25
ffffffff80912268:	58 07 f2 43 	mov	$r18,$r24
ffffffff8091226c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80912270:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80912274:	81 05 32 43 	cmpule	$r25,$r18,$r1
ffffffff80912278:	29 20 80 4a 	subw	$r20,0x1,$r9
ffffffff8091227c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80912280:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80912284:	4b 07 f0 43 	mov	$r16,$r11
ffffffff80912288:	4c 07 f1 43 	mov	$r17,$r12
ffffffff8091228c:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80912290:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912294:	4d 07 f5 43 	mov	$r21,$r13
ffffffff80912298:	5f 02 fb 06 	call	$r23,($r27),ffffffff80912c18 <__remlu>
ffffffff8091229c:	0a 00 fb 43 	addw	$r31,$r27,$r10
ffffffff809122a0:	1f 00 20 c4 	bne	$r1,ffffffff80912320 <printnum+0xd0>
ffffffff809122a4:	0a 00 20 cd 	ble	$r9,ffffffff809122d0 <printnum+0x80>
ffffffff809122a8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809122ac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809122b0:	29 20 20 49 	subw	$r9,0x1,$r9
ffffffff809122b4:	51 07 ec 43 	mov	$r12,$r17
ffffffff809122b8:	50 07 ed 43 	mov	$r13,$r16
ffffffff809122bc:	5b 07 eb 43 	mov	$r11,$r27
ffffffff809122c0:	00 00 5b 07 	call	ra,($r27),ffffffff809122c4 <printnum+0x74>
ffffffff809122c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809122c8:	3c 9d bd fb 	ldi	$r29,-25284($r29)
ffffffff809122cc:	f8 ff 3f c5 	bne	$r9,ffffffff809122b0 <printnum+0x60>
ffffffff809122d0:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff809122d4:	2a ed 41 49 	zapnot	$r10,0xf,$r10
ffffffff809122d8:	51 07 ec 43 	mov	$r12,$r17
ffffffff809122dc:	5b 07 eb 43 	mov	$r11,$r27
ffffffff809122e0:	78 74 21 f8 	ldi	$r1,29816($r1)
ffffffff809122e4:	0a 01 41 41 	addl	$r10,$r1,$r10
ffffffff809122e8:	00 00 0a 82 	ldbu	$r16,0($r10)
ffffffff809122ec:	50 0d f0 43 	sextb	$r16,$r16
ffffffff809122f0:	00 00 5b 07 	call	ra,($r27),ffffffff809122f4 <printnum+0xa4>
ffffffff809122f4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809122f8:	0c 9d bd fb 	ldi	$r29,-25332($r29)
ffffffff809122fc:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912300:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912304:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912308:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff8091230c:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80912310:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80912314:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80912318:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091231c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912320:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912324:	b8 80 7b 8f 	ldl	$r27,-32584($r27)
ffffffff80912328:	54 07 e9 43 	mov	$r9,$r20
ffffffff8091232c:	04 02 fb 06 	call	$r23,($r27),ffffffff80912b40 <__divlu>
ffffffff80912330:	52 07 fb 43 	mov	$r27,$r18
ffffffff80912334:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912338:	68 81 7b 8f 	ldl	$r27,-32408($r27)
ffffffff8091233c:	c4 ff 5b 07 	call	ra,($r27),ffffffff80912250 <printnum>
ffffffff80912340:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912344:	c0 9c bd fb 	ldi	$r29,-25408($r29)
ffffffff80912348:	e1 ff ff 13 	br	ffffffff809122d0 <printnum+0x80>
ffffffff8091234c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912350 <vprintfmt>:
ffffffff80912350:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912354:	b0 9c bd fb 	ldi	$r29,-25424($r29)
ffffffff80912358:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff8091235c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80912360:	ff ff 7d fd 	ldih	$r11,-1($r29)
ffffffff80912364:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80912368:	49 07 f1 43 	mov	$r17,$r9
ffffffff8091236c:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80912370:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80912374:	4a 07 f0 43 	mov	$r16,$r10
ffffffff80912378:	0c 00 f4 43 	addw	$r31,$r20,$r12
ffffffff8091237c:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80912380:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912384:	4f 07 f2 43 	mov	$r18,fp
ffffffff80912388:	9c 74 6b f9 	ldi	$r11,29852($r11)
ffffffff8091238c:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80912390:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80912394:	40 00 7e ae 	stl	$r19,64(sp)
ffffffff80912398:	48 00 9e ae 	stl	$r20,72(sp)
ffffffff8091239c:	50 00 7e ae 	stl	$r19,80(sp)
ffffffff809123a0:	00 00 0f 82 	ldbu	$r16,0(fp)
ffffffff809123a4:	01 00 cf f9 	ldi	$r14,1(fp)
ffffffff809123a8:	02 a5 04 4a 	cmpeq	$r16,0x25,$r2
ffffffff809123ac:	0b 00 40 c4 	bne	$r2,ffffffff809123dc <vprintfmt+0x8c>
ffffffff809123b0:	1b 00 00 c2 	beq	$r16,ffffffff80912420 <vprintfmt+0xd0>
ffffffff809123b4:	51 07 e9 43 	mov	$r9,$r17
ffffffff809123b8:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809123bc:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff809123c0:	00 00 5b 07 	call	ra,($r27),ffffffff809123c4 <vprintfmt+0x74>
ffffffff809123c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809123c8:	3c 9c bd fb 	ldi	$r29,-25540($r29)
ffffffff809123cc:	11 00 ee 27 	fillcs	17($r14)
ffffffff809123d0:	ff ff 0e 82 	ldbu	$r16,-1($r14)
ffffffff809123d4:	02 a5 04 4a 	cmpeq	$r16,0x25,$r2
ffffffff809123d8:	f5 ff 5f c0 	beq	$r2,ffffffff809123b0 <vprintfmt+0x60>
ffffffff809123dc:	ff ff 9f f8 	ldi	$r4,-1
ffffffff809123e0:	20 00 bf fa 	ldi	$r21,32
ffffffff809123e4:	45 07 ff 43 	clr	$r5
ffffffff809123e8:	48 07 ff 43 	clr	$r8
ffffffff809123ec:	4d 07 e4 43 	mov	$r4,$r13
ffffffff809123f0:	00 00 ce 80 	ldbu	$r6,0($r14)
ffffffff809123f4:	01 00 ee f9 	ldi	fp,1($r14)
ffffffff809123f8:	22 60 c4 48 	subw	$r6,0x23,$r2
ffffffff809123fc:	02 e7 5f 48 	and	$r2,0xff,$r2
ffffffff80912400:	87 a5 4a 48 	cmpule	$r2,0x55,$r7
ffffffff80912404:	f2 00 e0 c0 	beq	$r7,ffffffff809127d0 <vprintfmt+0x480>
ffffffff80912408:	42 01 40 48 	s4addl	$r2,0,$r2
ffffffff8091240c:	02 01 4b 40 	addl	$r2,$r11,$r2
ffffffff80912410:	00 00 42 88 	ldw	$r2,0($r2)
ffffffff80912414:	02 01 a2 43 	addl	$r29,$r2,$r2
ffffffff80912418:	00 00 e2 0f 	jmp	$r31,($r2),ffffffff8091241c <vprintfmt+0xcc>
ffffffff8091241c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912420:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912424:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912428:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff8091242c:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80912430:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80912434:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80912438:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff8091243c:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80912440:	80 00 de fb 	ldi	sp,128(sp)
ffffffff80912444:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912448:	4e 07 ef 43 	mov	fp,$r14
ffffffff8091244c:	30 00 bf fa 	ldi	$r21,48
ffffffff80912450:	e7 ff ff 13 	br	ffffffff809123f0 <vprintfmt+0xa0>
ffffffff80912454:	01 00 4e 80 	ldbu	$r2,1($r14)
ffffffff80912458:	24 00 c6 48 	subw	$r6,0x30,$r4
ffffffff8091245c:	4e 07 ef 43 	mov	fp,$r14
ffffffff80912460:	46 0d e2 43 	sextb	$r2,$r6
ffffffff80912464:	22 00 c6 48 	subw	$r6,0x30,$r2
ffffffff80912468:	06 00 e6 43 	addw	$r31,$r6,$r6
ffffffff8091246c:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff80912470:	82 25 41 48 	cmpule	$r2,0x9,$r2
ffffffff80912474:	c8 00 40 c0 	beq	$r2,ffffffff80912798 <vprintfmt+0x448>
ffffffff80912478:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091247c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912480:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff80912484:	00 00 6e 80 	ldbu	$r3,0($r14)
ffffffff80912488:	42 01 80 48 	s4addl	$r4,0,$r2
ffffffff8091248c:	04 00 82 40 	addw	$r4,$r2,$r4
ffffffff80912490:	04 01 84 40 	addl	$r4,$r4,$r4
ffffffff80912494:	43 0d e3 43 	sextb	$r3,$r3
ffffffff80912498:	04 00 86 40 	addw	$r4,$r6,$r4
ffffffff8091249c:	22 00 66 48 	subw	$r3,0x30,$r2
ffffffff809124a0:	24 00 86 48 	subw	$r4,0x30,$r4
ffffffff809124a4:	06 00 e3 43 	addw	$r31,$r3,$r6
ffffffff809124a8:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff809124ac:	82 25 41 48 	cmpule	$r2,0x9,$r2
ffffffff809124b0:	f3 ff 5f c4 	bne	$r2,ffffffff80912480 <vprintfmt+0x130>
ffffffff809124b4:	b8 00 e0 13 	br	ffffffff80912798 <vprintfmt+0x448>
ffffffff809124b8:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff809124bc:	51 07 e9 43 	mov	$r9,$r17
ffffffff809124c0:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809124c4:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff809124c8:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff809124cc:	00 00 01 8a 	ldw	$r16,0($r1)
ffffffff809124d0:	00 00 5b 07 	call	ra,($r27),ffffffff809124d4 <vprintfmt+0x184>
ffffffff809124d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809124d8:	2c 9b bd fb 	ldi	$r29,-25812($r29)
ffffffff809124dc:	b0 ff ff 13 	br	ffffffff809123a0 <vprintfmt+0x50>
ffffffff809124e0:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff809124e4:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff809124e8:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff809124ec:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff809124f0:	e0 00 20 c4 	bne	$r1,ffffffff80912874 <vprintfmt+0x524>
ffffffff809124f4:	00 00 cc 8d 	ldl	$r14,0($r12)
ffffffff809124f8:	52 07 ee 43 	mov	$r14,$r18
ffffffff809124fc:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80912500:	0a 00 7f fa 	ldi	$r19,10
ffffffff80912504:	2e 00 c0 d5 	bge	$r14,ffffffff809125c0 <vprintfmt+0x270>
ffffffff80912508:	60 00 be ae 	stl	$r21,96(sp)
ffffffff8091250c:	51 07 e9 43 	mov	$r9,$r17
ffffffff80912510:	2d 00 1f fa 	ldi	$r16,45
ffffffff80912514:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80912518:	00 00 5b 07 	call	ra,($r27),ffffffff8091251c <vprintfmt+0x1cc>
ffffffff8091251c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912520:	e4 9a bd fb 	ldi	$r29,-25884($r29)
ffffffff80912524:	32 01 ee 43 	negl	$r14,$r18
ffffffff80912528:	0a 00 7f fa 	ldi	$r19,10
ffffffff8091252c:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80912530:	23 00 e0 13 	br	ffffffff809125c0 <vprintfmt+0x270>
ffffffff80912534:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff80912538:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff8091253c:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80912540:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff80912544:	21 01 e2 43 	negl	$r2,$r1
ffffffff80912548:	21 04 42 44 	selge	$r2,$r2,$r1,$r1
ffffffff8091254c:	13 00 e1 43 	addw	$r31,$r1,$r19
ffffffff80912550:	41 c5 60 4a 	cmple	$r19,0x6,$r1
ffffffff80912554:	af 00 20 c0 	beq	$r1,ffffffff80912814 <vprintfmt+0x4c4>
ffffffff80912558:	ff ff 5d fc 	ldih	$r2,-1($r29)
ffffffff8091255c:	81 01 60 4a 	s8addl	$r19,0,$r1
ffffffff80912560:	58 76 42 f8 	ldi	$r2,30296($r2)
ffffffff80912564:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80912568:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091256c:	a9 00 20 c0 	beq	$r1,ffffffff80912814 <vprintfmt+0x4c4>
ffffffff80912570:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912574:	53 07 e1 43 	mov	$r1,$r19
ffffffff80912578:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091257c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80912580:	08 71 52 fa 	ldi	$r18,28936($r18)
ffffffff80912584:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912588:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff8091258c:	f8 00 5b 07 	call	ra,($r27),ffffffff80912970 <printfmt>
ffffffff80912590:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912594:	70 9a bd fb 	ldi	$r29,-26000($r29)
ffffffff80912598:	81 ff ff 13 	br	ffffffff809123a0 <vprintfmt+0x50>
ffffffff8091259c:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff809125a0:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff809125a4:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff809125a8:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff809125ac:	c0 00 20 c4 	bne	$r1,ffffffff809128b0 <vprintfmt+0x560>
ffffffff809125b0:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff809125b4:	08 00 7f fa 	ldi	$r19,8
ffffffff809125b8:	4c 07 e2 43 	mov	$r2,$r12
ffffffff809125bc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809125c0:	54 07 ed 43 	mov	$r13,$r20
ffffffff809125c4:	51 07 e9 43 	mov	$r9,$r17
ffffffff809125c8:	50 07 ea 43 	mov	$r10,$r16
ffffffff809125cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809125d0:	68 81 7b 8f 	ldl	$r27,-32408($r27)
ffffffff809125d4:	1e ff 5b 07 	call	ra,($r27),ffffffff80912250 <printnum>
ffffffff809125d8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809125dc:	28 9a bd fb 	ldi	$r29,-26072($r29)
ffffffff809125e0:	6f ff ff 13 	br	ffffffff809123a0 <vprintfmt+0x50>
ffffffff809125e4:	08 20 00 49 	addw	$r8,0x1,$r8
ffffffff809125e8:	4e 07 ef 43 	mov	fp,$r14
ffffffff809125ec:	80 ff ff 13 	br	ffffffff809123f0 <vprintfmt+0xa0>
ffffffff809125f0:	60 00 be ae 	stl	$r21,96(sp)
ffffffff809125f4:	30 00 1f fa 	ldi	$r16,48
ffffffff809125f8:	51 07 e9 43 	mov	$r9,$r17
ffffffff809125fc:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80912600:	00 00 5b 07 	call	ra,($r27),ffffffff80912604 <vprintfmt+0x2b4>
ffffffff80912604:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912608:	fc 99 bd fb 	ldi	$r29,-26116($r29)
ffffffff8091260c:	51 07 e9 43 	mov	$r9,$r17
ffffffff80912610:	78 00 1f fa 	ldi	$r16,120
ffffffff80912614:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80912618:	00 00 5b 07 	call	ra,($r27),ffffffff8091261c <vprintfmt+0x2cc>
ffffffff8091261c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912620:	e4 99 bd fb 	ldi	$r29,-26140($r29)
ffffffff80912624:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff80912628:	10 00 7f fa 	ldi	$r19,16
ffffffff8091262c:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80912630:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff80912634:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80912638:	00 00 41 8e 	ldl	$r18,0($r1)
ffffffff8091263c:	e0 ff ff 13 	br	ffffffff809125c0 <vprintfmt+0x270>
ffffffff80912640:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80912644:	06 a5 a5 4a 	cmpeq	$r21,0x2d,$r6
ffffffff80912648:	21 05 ed 43 	cmplt	$r31,$r13,$r1
ffffffff8091264c:	ff ff 7d ff 	ldih	$r27,-1($r29)
ffffffff80912650:	06 05 c0 48 	cmpeq	$r6,0,$r6
ffffffff80912654:	89 74 7b fb 	ldi	$r27,29833($r27)
ffffffff80912658:	01 07 26 40 	and	$r1,$r6,$r1
ffffffff8091265c:	02 01 6c 40 	addl	$r3,$r12,$r2
ffffffff80912660:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80912664:	00 00 42 8c 	ldl	$r2,0($r2)
ffffffff80912668:	42 00 5b 44 	seleq	$r2,$r27,$r2,$r2
ffffffff8091266c:	96 00 20 c4 	bne	$r1,ffffffff809128c8 <vprintfmt+0x578>
ffffffff80912670:	00 00 22 80 	ldbu	$r1,0($r2)
ffffffff80912674:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80912678:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff8091267c:	19 00 00 c2 	beq	$r16,ffffffff809126e4 <vprintfmt+0x394>
ffffffff80912680:	0b 00 c2 f9 	ldi	$r14,11($r2)
ffffffff80912684:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912688:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091268c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912690:	03 00 80 c8 	blt	$r4,ffffffff809126a0 <vprintfmt+0x350>
ffffffff80912694:	24 20 80 48 	subw	$r4,0x1,$r4
ffffffff80912698:	01 00 c4 f8 	ldi	$r6,1($r4)
ffffffff8091269c:	11 00 c0 c0 	beq	$r6,ffffffff809126e4 <vprintfmt+0x394>
ffffffff809126a0:	51 07 e9 43 	mov	$r9,$r17
ffffffff809126a4:	65 00 a0 c4 	bne	$r5,ffffffff8091283c <vprintfmt+0x4ec>
ffffffff809126a8:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff809126ac:	68 00 be ac 	stl	$r5,104(sp)
ffffffff809126b0:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809126b4:	00 00 5b 07 	call	ra,($r27),ffffffff809126b8 <vprintfmt+0x368>
ffffffff809126b8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809126bc:	48 99 bd fb 	ldi	$r29,-26296($r29)
ffffffff809126c0:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff809126c4:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff809126c8:	f6 ff 2e 80 	ldbu	$r1,-10($r14)
ffffffff809126cc:	00 00 ee 27 	fillcs	0($r14)
ffffffff809126d0:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff809126d4:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff809126d8:	41 0d e1 43 	sextb	$r1,$r1
ffffffff809126dc:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff809126e0:	eb ff 1f c6 	bne	$r16,ffffffff80912690 <vprintfmt+0x340>
ffffffff809126e4:	2e ff bf cd 	ble	$r13,ffffffff809123a0 <vprintfmt+0x50>
ffffffff809126e8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809126ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809126f0:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff809126f4:	51 07 e9 43 	mov	$r9,$r17
ffffffff809126f8:	20 00 1f fa 	ldi	$r16,32
ffffffff809126fc:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80912700:	00 00 5b 07 	call	ra,($r27),ffffffff80912704 <vprintfmt+0x3b4>
ffffffff80912704:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912708:	fc 98 bd fb 	ldi	$r29,-26372($r29)
ffffffff8091270c:	f8 ff bf c5 	bne	$r13,ffffffff809126f0 <vprintfmt+0x3a0>
ffffffff80912710:	23 ff ff 13 	br	ffffffff809123a0 <vprintfmt+0x50>
ffffffff80912714:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80912718:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff8091271c:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80912720:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80912724:	5c 00 20 c4 	bne	$r1,ffffffff80912898 <vprintfmt+0x548>
ffffffff80912728:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff8091272c:	0a 00 7f fa 	ldi	$r19,10
ffffffff80912730:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80912734:	a2 ff ff 13 	br	ffffffff809125c0 <vprintfmt+0x270>
ffffffff80912738:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff8091273c:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff80912740:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80912744:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80912748:	4d 00 20 c4 	bne	$r1,ffffffff80912880 <vprintfmt+0x530>
ffffffff8091274c:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff80912750:	10 00 7f fa 	ldi	$r19,16
ffffffff80912754:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80912758:	99 ff ff 13 	br	ffffffff809125c0 <vprintfmt+0x270>
ffffffff8091275c:	4e 07 ef 43 	mov	fp,$r14
ffffffff80912760:	01 00 bf f8 	ldi	$r5,1
ffffffff80912764:	22 ff ff 13 	br	ffffffff809123f0 <vprintfmt+0xa0>
ffffffff80912768:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091276c:	25 00 1f fa 	ldi	$r16,37
ffffffff80912770:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80912774:	00 00 5b 07 	call	ra,($r27),ffffffff80912778 <vprintfmt+0x428>
ffffffff80912778:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091277c:	88 98 bd fb 	ldi	$r29,-26488($r29)
ffffffff80912780:	07 ff ff 13 	br	ffffffff809123a0 <vprintfmt+0x50>
ffffffff80912784:	50 00 3e 8c 	ldl	$r1,80(sp)
ffffffff80912788:	4e 07 ef 43 	mov	fp,$r14
ffffffff8091278c:	02 01 2c 40 	addl	$r1,$r12,$r2
ffffffff80912790:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80912794:	00 00 82 88 	ldw	$r4,0($r2)
ffffffff80912798:	42 07 ed 43 	mov	$r13,$r2
ffffffff8091279c:	ff ff 7f f8 	ldi	$r3,-1
ffffffff809127a0:	42 10 a4 45 	sellt	$r13,$r4,$r2,$r2
ffffffff809127a4:	84 10 a3 45 	sellt	$r13,$r3,$r4,$r4
ffffffff809127a8:	4d 07 e2 43 	mov	$r2,$r13
ffffffff809127ac:	10 ff ff 13 	br	ffffffff809123f0 <vprintfmt+0xa0>
ffffffff809127b0:	4e 07 ef 43 	mov	fp,$r14
ffffffff809127b4:	2d 00 bf fa 	ldi	$r21,45
ffffffff809127b8:	0d ff ff 13 	br	ffffffff809123f0 <vprintfmt+0xa0>
ffffffff809127bc:	54 07 ed 43 	mov	$r13,$r20
ffffffff809127c0:	4e 07 ef 43 	mov	fp,$r14
ffffffff809127c4:	94 12 80 4e 	sellt	$r20,0,$r20,$r20
ffffffff809127c8:	0d 00 f4 43 	addw	$r31,$r20,$r13
ffffffff809127cc:	08 ff ff 13 	br	ffffffff809123f0 <vprintfmt+0xa0>
ffffffff809127d0:	51 07 e9 43 	mov	$r9,$r17
ffffffff809127d4:	25 00 1f fa 	ldi	$r16,37
ffffffff809127d8:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809127dc:	4f 07 ee 43 	mov	$r14,fp
ffffffff809127e0:	00 00 5b 07 	call	ra,($r27),ffffffff809127e4 <vprintfmt+0x494>
ffffffff809127e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809127e8:	1c 98 bd fb 	ldi	$r29,-26596($r29)
ffffffff809127ec:	ff ff 2e 80 	ldbu	$r1,-1($r14)
ffffffff809127f0:	01 a5 24 48 	cmpeq	$r1,0x25,$r1
ffffffff809127f4:	ea fe 3f c4 	bne	$r1,ffffffff809123a0 <vprintfmt+0x50>
ffffffff809127f8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809127fc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912800:	ff ff ef f9 	ldi	fp,-1(fp)
ffffffff80912804:	ff ff 2f 80 	ldbu	$r1,-1(fp)
ffffffff80912808:	01 a5 24 48 	cmpeq	$r1,0x25,$r1
ffffffff8091280c:	fc ff 3f c0 	beq	$r1,ffffffff80912800 <vprintfmt+0x4b0>
ffffffff80912810:	e3 fe ff 13 	br	ffffffff809123a0 <vprintfmt+0x50>
ffffffff80912814:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912818:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091281c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80912820:	90 74 52 fa 	ldi	$r18,29840($r18)
ffffffff80912824:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912828:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff8091282c:	50 00 5b 07 	call	ra,($r27),ffffffff80912970 <printfmt>
ffffffff80912830:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912834:	d0 97 bd fb 	ldi	$r29,-26672($r29)
ffffffff80912838:	d9 fe ff 13 	br	ffffffff809123a0 <vprintfmt+0x50>
ffffffff8091283c:	21 00 24 48 	subw	$r1,0x20,$r1
ffffffff80912840:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80912844:	81 c5 2b 48 	cmpule	$r1,0x5e,$r1
ffffffff80912848:	97 ff 3f c4 	bne	$r1,ffffffff809126a8 <vprintfmt+0x358>
ffffffff8091284c:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff80912850:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80912854:	3f 00 1f fa 	ldi	$r16,63
ffffffff80912858:	5b 07 ea 43 	mov	$r10,$r27
ffffffff8091285c:	00 00 5b 07 	call	ra,($r27),ffffffff80912860 <vprintfmt+0x510>
ffffffff80912860:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912864:	a0 97 bd fb 	ldi	$r29,-26720($r29)
ffffffff80912868:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff8091286c:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80912870:	95 ff ff 13 	br	ffffffff809126c8 <vprintfmt+0x378>
ffffffff80912874:	1f ff 1f c5 	bne	$r8,ffffffff809124f4 <vprintfmt+0x1a4>
ffffffff80912878:	00 00 cc 89 	ldw	$r14,0($r12)
ffffffff8091287c:	1e ff ff 13 	br	ffffffff809124f8 <vprintfmt+0x1a8>
ffffffff80912880:	b2 ff 1f c5 	bne	$r8,ffffffff8091274c <vprintfmt+0x3fc>
ffffffff80912884:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80912888:	10 00 7f fa 	ldi	$r19,16
ffffffff8091288c:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80912890:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff80912894:	4a ff ff 13 	br	ffffffff809125c0 <vprintfmt+0x270>
ffffffff80912898:	a3 ff 1f c5 	bne	$r8,ffffffff80912728 <vprintfmt+0x3d8>
ffffffff8091289c:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff809128a0:	0a 00 7f fa 	ldi	$r19,10
ffffffff809128a4:	4c 07 e2 43 	mov	$r2,$r12
ffffffff809128a8:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff809128ac:	44 ff ff 13 	br	ffffffff809125c0 <vprintfmt+0x270>
ffffffff809128b0:	3f ff 1f c5 	bne	$r8,ffffffff809125b0 <vprintfmt+0x260>
ffffffff809128b4:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff809128b8:	08 00 7f fa 	ldi	$r19,8
ffffffff809128bc:	4c 07 e2 43 	mov	$r2,$r12
ffffffff809128c0:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff809128c4:	3e ff ff 13 	br	ffffffff809125c0 <vprintfmt+0x270>
ffffffff809128c8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809128cc:	80 80 7b 8f 	ldl	$r27,-32640($r27)
ffffffff809128d0:	51 07 e4 43 	mov	$r4,$r17
ffffffff809128d4:	50 07 e2 43 	mov	$r2,$r16
ffffffff809128d8:	58 00 5e ac 	stl	$r2,88(sp)
ffffffff809128dc:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff809128e0:	68 00 be ac 	stl	$r5,104(sp)
ffffffff809128e4:	60 00 be ae 	stl	$r21,96(sp)
ffffffff809128e8:	ed fd 5b 07 	call	ra,($r27),ffffffff809120a0 <strnlen>
ffffffff809128ec:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809128f0:	2d 00 a0 41 	subw	$r13,$r0,$r13
ffffffff809128f4:	14 97 bd fb 	ldi	$r29,-26860($r29)
ffffffff809128f8:	58 00 5e 8c 	ldl	$r2,88(sp)
ffffffff809128fc:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff80912900:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80912904:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80912908:	10 00 a0 cd 	ble	$r13,ffffffff8091294c <vprintfmt+0x5fc>
ffffffff8091290c:	0e 00 f5 43 	addw	$r31,$r21,$r14
ffffffff80912910:	58 00 5e ac 	stl	$r2,88(sp)
ffffffff80912914:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff80912918:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091291c:	50 07 ee 43 	mov	$r14,$r16
ffffffff80912920:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80912924:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80912928:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff8091292c:	00 00 5b 07 	call	ra,($r27),ffffffff80912930 <vprintfmt+0x5e0>
ffffffff80912930:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912934:	d0 96 bd fb 	ldi	$r29,-26928($r29)
ffffffff80912938:	58 00 5e 8c 	ldl	$r2,88(sp)
ffffffff8091293c:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff80912940:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80912944:	f2 ff bf c5 	bne	$r13,ffffffff80912910 <vprintfmt+0x5c0>
ffffffff80912948:	4d 07 ff 43 	clr	$r13
ffffffff8091294c:	00 00 22 80 	ldbu	$r1,0($r2)
ffffffff80912950:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80912954:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff80912958:	91 fe 1f c2 	beq	$r16,ffffffff809123a0 <vprintfmt+0x50>
ffffffff8091295c:	0b 00 c2 f9 	ldi	$r14,11($r2)
ffffffff80912960:	4b ff ff 13 	br	ffffffff80912690 <vprintfmt+0x340>
ffffffff80912964:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912968:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091296c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912970 <printfmt>:
ffffffff80912970:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912974:	90 96 bd fb 	ldi	$r29,-26992($r29)
ffffffff80912978:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff8091297c:	18 00 5f f8 	ldi	$r2,24
ffffffff80912980:	18 00 5e a8 	stw	$r2,24(sp)
ffffffff80912984:	70 00 9e ae 	stl	$r20,112(sp)
ffffffff80912988:	50 00 3e f8 	ldi	$r1,80(sp)
ffffffff8091298c:	38 00 7e be 	fstd	$f19,56(sp)
ffffffff80912990:	18 00 9e 8e 	ldl	$r20,24(sp)
ffffffff80912994:	68 00 7e ae 	stl	$r19,104(sp)
ffffffff80912998:	53 07 e1 43 	mov	$r1,$r19
ffffffff8091299c:	40 00 9e be 	fstd	$f20,64(sp)
ffffffff809129a0:	00 00 5e af 	stl	ra,0(sp)
ffffffff809129a4:	48 00 be be 	fstd	$f21,72(sp)
ffffffff809129a8:	78 00 be ae 	stl	$r21,120(sp)
ffffffff809129ac:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff809129b0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809129b4:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809129b8:	65 fe 5b 07 	call	ra,($r27),ffffffff80912350 <vprintfmt>
ffffffff809129bc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809129c0:	44 96 bd fb 	ldi	$r29,-27068($r29)
ffffffff809129c4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809129c8:	80 00 de fb 	ldi	sp,128(sp)
ffffffff809129cc:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff809129d0 <readline>:
ffffffff809129d0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809129d4:	30 96 bd fb 	ldi	$r29,-27088($r29)
ffffffff809129d8:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff809129dc:	00 00 5e af 	stl	ra,0(sp)
ffffffff809129e0:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809129e4:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809129e8:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff809129ec:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff809129f0:	08 00 00 c2 	beq	$r16,ffffffff80912a14 <readline+0x44>
ffffffff809129f4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809129f8:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff809129fc:	51 07 f0 43 	mov	$r16,$r17
ffffffff80912a00:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912a04:	08 71 10 fa 	ldi	$r16,28936($r16)
ffffffff80912a08:	e5 f5 5b 07 	call	ra,($r27),ffffffff809101a0 <cprintf>
ffffffff80912a0c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912a10:	f4 95 bd fb 	ldi	$r29,-27148($r29)
ffffffff80912a14:	00 00 7d fd 	ldih	$r11,0($r29)
ffffffff80912a18:	4c 07 ff 43 	clr	$r12
ffffffff80912a1c:	fe 03 5f f9 	ldi	$r10,1022
ffffffff80912a20:	50 e0 6b f9 	ldi	$r11,-8112($r11)
ffffffff80912a24:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912a28:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912a2c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912a30:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912a34:	f0 80 7b 8f 	ldl	$r27,-32528($r27)
ffffffff80912a38:	11 f6 5b 07 	call	ra,($r27),ffffffff80910280 <getchar>
ffffffff80912a3c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912a40:	1f 00 3f f8 	ldi	$r1,31
ffffffff80912a44:	42 05 8a 41 	cmple	$r12,$r10,$r2
ffffffff80912a48:	23 05 ec 43 	cmplt	$r31,$r12,$r3
ffffffff80912a4c:	04 05 01 48 	cmpeq	$r0,0x8,$r4
ffffffff80912a50:	21 05 20 40 	cmplt	$r1,$r0,$r1
ffffffff80912a54:	c4 95 bd fb 	ldi	$r29,-27196($r29)
ffffffff80912a58:	49 07 e0 43 	mov	$r0,$r9
ffffffff80912a5c:	05 45 01 48 	cmpeq	$r0,0xa,$r5
ffffffff80912a60:	06 a5 01 48 	cmpeq	$r0,0xd,$r6
ffffffff80912a64:	03 07 83 40 	and	$r4,$r3,$r3
ffffffff80912a68:	01 07 22 40 	and	$r1,$r2,$r1
ffffffff80912a6c:	2c 00 00 c8 	blt	$r0,ffffffff80912b20 <readline+0x150>
ffffffff80912a70:	45 07 a6 40 	or	$r5,$r6,$r5
ffffffff80912a74:	16 00 20 c4 	bne	$r1,ffffffff80912ad0 <readline+0x100>
ffffffff80912a78:	21 00 60 c4 	bne	$r3,ffffffff80912b00 <readline+0x130>
ffffffff80912a7c:	ec ff bf c0 	beq	$r5,ffffffff80912a30 <readline+0x60>
ffffffff80912a80:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912a84:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff80912a88:	50 07 e0 43 	mov	$r0,$r16
ffffffff80912a8c:	ec f5 5b 07 	call	ra,($r27),ffffffff80910240 <cputchar>
ffffffff80912a90:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912a94:	70 95 bd fb 	ldi	$r29,-27280($r29)
ffffffff80912a98:	00 00 1d fc 	ldih	$r0,0($r29)
ffffffff80912a9c:	50 e0 00 f8 	ldi	$r0,-8112($r0)
ffffffff80912aa0:	0c 01 80 41 	addl	$r12,$r0,$r12
ffffffff80912aa4:	00 00 ec a3 	stb	$r31,0($r12)
ffffffff80912aa8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912aac:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912ab0:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912ab4:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80912ab8:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80912abc:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80912ac0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912ac4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912ac8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912acc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912ad0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912ad4:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff80912ad8:	50 07 e0 43 	mov	$r0,$r16
ffffffff80912adc:	d8 f5 5b 07 	call	ra,($r27),ffffffff80910240 <cputchar>
ffffffff80912ae0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912ae4:	01 01 8b 41 	addl	$r12,$r11,$r1
ffffffff80912ae8:	20 95 bd fb 	ldi	$r29,-27360($r29)
ffffffff80912aec:	0c 20 80 49 	addw	$r12,0x1,$r12
ffffffff80912af0:	00 00 21 a1 	stb	$r9,0($r1)
ffffffff80912af4:	ce ff ff 13 	br	ffffffff80912a30 <readline+0x60>
ffffffff80912af8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912afc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912b00:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912b04:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff80912b08:	08 00 1f fa 	ldi	$r16,8
ffffffff80912b0c:	2c 20 80 49 	subw	$r12,0x1,$r12
ffffffff80912b10:	cb f5 5b 07 	call	ra,($r27),ffffffff80910240 <cputchar>
ffffffff80912b14:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912b18:	ec 94 bd fb 	ldi	$r29,-27412($r29)
ffffffff80912b1c:	c4 ff ff 13 	br	ffffffff80912a30 <readline+0x60>
ffffffff80912b20:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912b24:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912b28:	40 07 ff 43 	clr	$r0
ffffffff80912b2c:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912b30:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80912b34:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80912b38:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80912b3c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80912b40 <__divlu>:
ffffffff80912b40:	3e 01 c6 4b 	subl	sp,0x30,sp
ffffffff80912b44:	00 00 3e ac 	stl	$r1,0(sp)
ffffffff80912b48:	41 07 39 43 	or	$r25,$r25,$r1
ffffffff80912b4c:	08 00 5e ac 	stl	$r2,8(sp)
ffffffff80912b50:	42 07 18 43 	or	$r24,$r24,$r2
ffffffff80912b54:	10 00 1e ac 	stl	$r0,16(sp)
ffffffff80912b58:	5b 07 ff 43 	clr	$r27
ffffffff80912b5c:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80912b60:	40 27 e0 4b 	mov	0x1,$r0
ffffffff80912b64:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80912b68:	0d 00 20 c0 	beq	$r1,ffffffff80912ba0 <__divlu+0x60>
ffffffff80912b6c:	7c 05 22 40 	cmpult	$r1,$r2,$r28
ffffffff80912b70:	03 00 20 c8 	blt	$r1,ffffffff80912b80 <__divlu+0x40>
ffffffff80912b74:	01 01 21 40 	addl	$r1,$r1,$r1
ffffffff80912b78:	00 01 00 40 	addl	$r0,$r0,$r0
ffffffff80912b7c:	fb ff 9f c7 	bne	$r28,ffffffff80912b6c <__divlu+0x2c>
ffffffff80912b80:	04 01 60 43 	addl	$r27,$r0,$r4
ffffffff80912b84:	20 29 00 48 	srl	$r0,0x1,$r0
ffffffff80912b88:	9c 05 22 40 	cmpule	$r1,$r2,$r28
ffffffff80912b8c:	23 01 41 40 	subl	$r2,$r1,$r3
ffffffff80912b90:	7b 17 84 47 	selne	$r28,$r4,$r27,$r27
ffffffff80912b94:	21 29 20 48 	srl	$r1,0x1,$r1
ffffffff80912b98:	42 14 83 47 	selne	$r28,$r3,$r2,$r2
ffffffff80912b9c:	f8 ff 1f c4 	bne	$r0,ffffffff80912b80 <__divlu+0x40>
ffffffff80912ba0:	00 00 3e 8c 	ldl	$r1,0(sp)
ffffffff80912ba4:	08 00 5e 8c 	ldl	$r2,8(sp)
ffffffff80912ba8:	10 00 1e 8c 	ldl	$r0,16(sp)
ffffffff80912bac:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80912bb0:	20 00 9e 8c 	ldl	$r4,32(sp)
ffffffff80912bb4:	1e 01 c6 4b 	addl	sp,0x30,sp
ffffffff80912bb8:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80912bbc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912bc0 <__divl>:
ffffffff80912bc0:	3e 01 c6 4b 	subl	sp,0x30,sp
ffffffff80912bc4:	5c 07 19 43 	or	$r24,$r25,$r28
ffffffff80912bc8:	de ff 9f d7 	bge	$r28,ffffffff80912b44 <__divlu+0x4>
ffffffff80912bcc:	00 00 1e af 	stl	$r24,0(sp)
ffffffff80912bd0:	3c 01 f8 43 	negl	$r24,$r28
ffffffff80912bd4:	08 00 3e af 	stl	$r25,8(sp)
ffffffff80912bd8:	18 13 1c 47 	sellt	$r24,$r28,$r24,$r24
ffffffff80912bdc:	10 00 fe ae 	stl	$r23,16(sp)
ffffffff80912be0:	3c 01 f9 43 	negl	$r25,$r28
ffffffff80912be4:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80912be8:	39 13 3c 47 	sellt	$r25,$r28,$r25,$r25
ffffffff80912bec:	d4 ff ff 16 	bsr	$r23,ffffffff80912b40 <__divlu>
ffffffff80912bf0:	00 00 1e 8f 	ldl	$r24,0(sp)
ffffffff80912bf4:	08 00 3e 8f 	ldl	$r25,8(sp)
ffffffff80912bf8:	9c 07 19 43 	xor	$r24,$r25,$r28
ffffffff80912bfc:	23 01 fb 43 	negl	$r27,$r3
ffffffff80912c00:	10 00 fe 8e 	ldl	$r23,16(sp)
ffffffff80912c04:	7b 13 83 47 	sellt	$r28,$r3,$r27,$r27
ffffffff80912c08:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80912c0c:	1e 01 c6 4b 	addl	sp,0x30,sp
ffffffff80912c10:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80912c14:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912c18 <__remlu>:
ffffffff80912c18:	3e 01 c4 4b 	subl	sp,0x20,sp
ffffffff80912c1c:	00 00 3e ac 	stl	$r1,0(sp)
ffffffff80912c20:	41 07 39 43 	or	$r25,$r25,$r1
ffffffff80912c24:	08 00 5e ac 	stl	$r2,8(sp)
ffffffff80912c28:	5b 07 18 43 	or	$r24,$r24,$r27
ffffffff80912c2c:	10 00 1e ac 	stl	$r0,16(sp)
ffffffff80912c30:	42 07 ff 43 	clr	$r2
ffffffff80912c34:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80912c38:	40 27 e0 4b 	mov	0x1,$r0
ffffffff80912c3c:	0b 00 20 c0 	beq	$r1,ffffffff80912c6c <__remlu+0x54>
ffffffff80912c40:	7c 05 3b 40 	cmpult	$r1,$r27,$r28
ffffffff80912c44:	03 00 20 c8 	blt	$r1,ffffffff80912c54 <__remlu+0x3c>
ffffffff80912c48:	01 01 21 40 	addl	$r1,$r1,$r1
ffffffff80912c4c:	00 01 00 40 	addl	$r0,$r0,$r0
ffffffff80912c50:	fb ff 9f c7 	bne	$r28,ffffffff80912c40 <__remlu+0x28>
ffffffff80912c54:	20 29 00 48 	srl	$r0,0x1,$r0
ffffffff80912c58:	9c 05 3b 40 	cmpule	$r1,$r27,$r28
ffffffff80912c5c:	23 01 61 43 	subl	$r27,$r1,$r3
ffffffff80912c60:	21 29 20 48 	srl	$r1,0x1,$r1
ffffffff80912c64:	7b 17 83 47 	selne	$r28,$r3,$r27,$r27
ffffffff80912c68:	fa ff 1f c4 	bne	$r0,ffffffff80912c54 <__remlu+0x3c>
ffffffff80912c6c:	00 00 3e 8c 	ldl	$r1,0(sp)
ffffffff80912c70:	08 00 5e 8c 	ldl	$r2,8(sp)
ffffffff80912c74:	10 00 1e 8c 	ldl	$r0,16(sp)
ffffffff80912c78:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80912c7c:	1e 01 c4 4b 	addl	sp,0x20,sp
ffffffff80912c80:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80912c84:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912c88 <__reml>:
ffffffff80912c88:	3e 01 c4 4b 	subl	sp,0x20,sp
ffffffff80912c8c:	5c 07 19 43 	or	$r24,$r25,$r28
ffffffff80912c90:	e2 ff 9f d7 	bge	$r28,ffffffff80912c1c <__remlu+0x4>
ffffffff80912c94:	00 00 1e af 	stl	$r24,0(sp)
ffffffff80912c98:	3c 01 f8 43 	negl	$r24,$r28
ffffffff80912c9c:	08 00 3e af 	stl	$r25,8(sp)
ffffffff80912ca0:	18 13 1c 47 	sellt	$r24,$r28,$r24,$r24
ffffffff80912ca4:	10 00 fe ae 	stl	$r23,16(sp)
ffffffff80912ca8:	3c 01 f9 43 	negl	$r25,$r28
ffffffff80912cac:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80912cb0:	39 13 3c 47 	sellt	$r25,$r28,$r25,$r25
ffffffff80912cb4:	d8 ff ff 16 	bsr	$r23,ffffffff80912c18 <__remlu>
ffffffff80912cb8:	00 00 1e 8f 	ldl	$r24,0(sp)
ffffffff80912cbc:	08 00 3e 8f 	ldl	$r25,8(sp)
ffffffff80912cc0:	5c 07 18 43 	or	$r24,$r24,$r28
ffffffff80912cc4:	23 01 fb 43 	negl	$r27,$r3
ffffffff80912cc8:	10 00 fe 8e 	ldl	$r23,16(sp)
ffffffff80912ccc:	7b 13 83 47 	sellt	$r28,$r3,$r27,$r27
ffffffff80912cd0:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80912cd4:	1e 01 c4 4b 	addl	sp,0x20,sp
ffffffff80912cd8:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80912cdc:	00 00 fe ff 	ldih	$r31,0(sp)
