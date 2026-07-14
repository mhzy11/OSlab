
bin/kernel:     file format elf64-sw_64


Disassembly of section .text:

ffffffff80910000 <kern_entry>:
ffffffff80910000:	00 00 60 13 	br	$r27,ffffffff80910004 <kern_entry+0x4>
ffffffff80910004:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910008:	fc 9f bd fb 	ldi	$r29,-24580($r29)
ffffffff8091000c:	50 80 dd 8f 	ldl	sp,-32688($r29)
ffffffff80910010:	18 80 7d 8f 	ldl	$r27,-32744($r29)
ffffffff80910014:	02 00 5b 07 	call	ra,($r27),ffffffff80910020 <kern_init>
	...

ffffffff80910020 <kern_init>:
ffffffff80910020:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910024:	e0 9f bd fb 	ldi	$r29,-24608($r29)
ffffffff80910028:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091002c:	20 80 21 8c 	ldl	$r1,-32736($r1)
ffffffff80910030:	00 00 5d fe 	ldih	$r18,0($r29)
ffffffff80910034:	30 80 52 8e 	ldl	$r18,-32720($r18)
ffffffff80910038:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091003c:	51 07 ff 43 	clr	$r17
ffffffff80910040:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910044:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910048:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091004c:	50 07 e1 43 	mov	$r1,$r16
ffffffff80910050:	32 01 41 42 	subl	$r18,$r1,$r18
ffffffff80910054:	5e 00 5b 07 	call	ra,($r27),ffffffff809101d0 <memset>
ffffffff80910058:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091005c:	a8 9f bd fb 	ldi	$r29,-24664($r29)
ffffffff80910060:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910064:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80910068:	ff ff 3d fe 	ldih	$r17,-1($r29)
ffffffff8091006c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910070:	60 6b 31 fa 	ldi	$r17,27488($r17)
ffffffff80910074:	7d 6b 10 fa 	ldi	$r16,27517($r16)
ffffffff80910078:	15 00 5b 07 	call	ra,($r27),ffffffff809100d0 <cprintf>
ffffffff8091007c:	ff ff ff 13 	br	ffffffff8091007c <kern_init+0x5c>

ffffffff80910080 <cputch>:
ffffffff80910080:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910084:	80 9f bd fb 	ldi	$r29,-24704($r29)
ffffffff80910088:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff8091008c:	10 00 3f fc 	ldih	$r1,16
ffffffff80910090:	01 00 9f f8 	ldi	$r4,1
ffffffff80910094:	70 80 bf fc 	ldih	$r5,-32656
ffffffff80910098:	00 e0 62 8c 	ldl	$r3,-8192($r2)
ffffffff8091009c:	fe ff 21 f8 	ldi	$r1,-2($r1)
ffffffff809100a0:	81 05 61 40 	cmpule	$r3,$r1,$r1
ffffffff809100a4:	02 00 20 c0 	beq	$r1,ffffffff809100b0 <cputch+0x30>
ffffffff809100a8:	05 01 65 40 	addl	$r3,$r5,$r5
ffffffff809100ac:	01 00 83 f8 	ldi	$r4,1($r3)
ffffffff809100b0:	00 00 05 a2 	stb	$r16,0($r5)
ffffffff809100b4:	00 e0 82 ac 	stl	$r4,-8192($r2)
ffffffff809100b8:	00 00 31 88 	ldw	$r1,0($r17)
ffffffff809100bc:	01 20 20 48 	addw	$r1,0x1,$r1
ffffffff809100c0:	00 00 31 a8 	stw	$r1,0($r17)
ffffffff809100c4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809100c8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809100cc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809100d0 <cprintf>:
ffffffff809100d0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809100d4:	30 9f bd fb 	ldi	$r29,-24784($r29)
ffffffff809100d8:	60 ff de fb 	ldi	sp,-160(sp)
ffffffff809100dc:	08 00 5f f8 	ldi	$r2,8
ffffffff809100e0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100e4:	00 80 7b 8f 	ldl	$r27,-32768($r27)
ffffffff809100e8:	28 00 5e a8 	stw	$r2,40(sp)
ffffffff809100ec:	48 00 3e be 	fstd	$f17,72(sp)
ffffffff809100f0:	50 00 5e be 	fstd	$f18,80(sp)
ffffffff809100f4:	70 00 3e f8 	ldi	$r1,112(sp)
ffffffff809100f8:	28 00 5e 8c 	ldl	$r2,40(sp)
ffffffff809100fc:	58 00 7e be 	fstd	$f19,88(sp)
ffffffff80910100:	60 00 9e be 	fstd	$f20,96(sp)
ffffffff80910104:	80 00 5e ae 	stl	$r18,128(sp)
ffffffff80910108:	68 00 be be 	fstd	$f21,104(sp)
ffffffff8091010c:	52 07 f0 43 	mov	$r16,$r18
ffffffff80910110:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910114:	80 60 10 fa 	ldi	$r16,24704($r16)
ffffffff80910118:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091011c:	78 00 3e ae 	stl	$r17,120(sp)
ffffffff80910120:	88 00 7e ae 	stl	$r19,136(sp)
ffffffff80910124:	30 00 3e fa 	ldi	$r17,48(sp)
ffffffff80910128:	53 07 e1 43 	mov	$r1,$r19
ffffffff8091012c:	90 00 9e ae 	stl	$r20,144(sp)
ffffffff80910130:	98 00 be ae 	stl	$r21,152(sp)
ffffffff80910134:	54 07 e2 43 	mov	$r2,$r20
ffffffff80910138:	20 00 3e ac 	stl	$r1,32(sp)
ffffffff8091013c:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff80910140:	18 00 5e ac 	stl	$r2,24(sp)
ffffffff80910144:	30 00 fe ab 	stw	$r31,48(sp)
ffffffff80910148:	7d 00 5b 07 	call	ra,($r27),ffffffff80910340 <vprintfmt>
ffffffff8091014c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910150:	30 00 1e 88 	ldw	$r0,48(sp)
ffffffff80910154:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910158:	b4 9e bd fb 	ldi	$r29,-24908($r29)
ffffffff8091015c:	a0 00 de fb 	ldi	sp,160(sp)
ffffffff80910160:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910164:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910168:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091016c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910170 <strnlen>:
ffffffff80910170:	13 00 20 c2 	beq	$r17,ffffffff809101c0 <strnlen+0x50>
ffffffff80910174:	00 00 50 80 	ldbu	$r2,0($r16)
ffffffff80910178:	01 00 30 f8 	ldi	$r1,1($r16)
ffffffff8091017c:	10 00 40 c0 	beq	$r2,ffffffff809101c0 <strnlen+0x50>
ffffffff80910180:	11 01 11 42 	addl	$r16,$r17,$r17
ffffffff80910184:	04 00 e0 13 	br	ffffffff80910198 <strnlen+0x28>
ffffffff80910188:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091018c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910190:	ff ff 41 80 	ldbu	$r2,-1($r1)
ffffffff80910194:	06 00 40 c0 	beq	$r2,ffffffff809101b0 <strnlen+0x40>
ffffffff80910198:	02 05 31 40 	cmpeq	$r1,$r17,$r2
ffffffff8091019c:	20 01 30 40 	subl	$r1,$r16,$r0
ffffffff809101a0:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff809101a4:	fa ff 5f c0 	beq	$r2,ffffffff80910190 <strnlen+0x20>
ffffffff809101a8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809101ac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809101b0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809101b4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809101b8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809101bc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809101c0:	40 07 ff 43 	clr	$r0
ffffffff809101c4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809101c8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809101cc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809101d0 <memset>:
ffffffff809101d0:	ff ff 52 f8 	ldi	$r2,-1($r18)
ffffffff809101d4:	16 00 40 c2 	beq	$r18,ffffffff80910230 <memset+0x60>
ffffffff809101d8:	83 65 40 48 	cmpule	$r2,0x3,$r3
ffffffff809101dc:	41 07 f0 43 	mov	$r16,$r1
ffffffff809101e0:	0c 00 60 c4 	bne	$r3,ffffffff80910214 <memset+0x44>
ffffffff809101e4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809101e8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809101ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809101f0:	50 00 e1 9b 	fillde	80($r1)
ffffffff809101f4:	00 00 21 a2 	stb	$r17,0($r1)
ffffffff809101f8:	fc ff 42 f8 	ldi	$r2,-4($r2)
ffffffff809101fc:	04 00 21 f8 	ldi	$r1,4($r1)
ffffffff80910200:	83 65 40 48 	cmpule	$r2,0x3,$r3
ffffffff80910204:	fd ff 21 a2 	stb	$r17,-3($r1)
ffffffff80910208:	fe ff 21 a2 	stb	$r17,-2($r1)
ffffffff8091020c:	ff ff 21 a2 	stb	$r17,-1($r1)
ffffffff80910210:	f7 ff 7f c0 	beq	$r3,ffffffff809101f0 <memset+0x20>
ffffffff80910214:	01 00 42 f8 	ldi	$r2,1($r2)
ffffffff80910218:	02 01 22 40 	addl	$r1,$r2,$r2
ffffffff8091021c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910220:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80910224:	ff ff 21 a2 	stb	$r17,-1($r1)
ffffffff80910228:	03 05 22 40 	cmpeq	$r1,$r2,$r3
ffffffff8091022c:	fc ff 7f c0 	beq	$r3,ffffffff80910220 <memset+0x50>
ffffffff80910230:	40 07 f0 43 	mov	$r16,$r0
ffffffff80910234:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910238:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091023c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910240 <printnum>:
ffffffff80910240:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910244:	c0 9d bd fb 	ldi	$r29,-25152($r29)
ffffffff80910248:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091024c:	08 80 7b 8f 	ldl	$r27,-32760($r27)
ffffffff80910250:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80910254:	39 ed 61 4a 	zapnot	$r19,0xf,$r25
ffffffff80910258:	58 07 f2 43 	mov	$r18,$r24
ffffffff8091025c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910260:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80910264:	81 05 32 43 	cmpule	$r25,$r18,$r1
ffffffff80910268:	29 20 80 4a 	subw	$r20,0x1,$r9
ffffffff8091026c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80910270:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80910274:	4b 07 f0 43 	mov	$r16,$r11
ffffffff80910278:	4c 07 f1 43 	mov	$r17,$r12
ffffffff8091027c:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80910280:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910284:	4d 07 f5 43 	mov	$r21,$r13
ffffffff80910288:	03 02 fb 06 	call	$r23,($r27),ffffffff80910a98 <__remlu>
ffffffff8091028c:	0a 00 fb 43 	addw	$r31,$r27,$r10
ffffffff80910290:	1f 00 20 c4 	bne	$r1,ffffffff80910310 <printnum+0xd0>
ffffffff80910294:	0a 00 20 cd 	ble	$r9,ffffffff809102c0 <printnum+0x80>
ffffffff80910298:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091029c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809102a0:	29 20 20 49 	subw	$r9,0x1,$r9
ffffffff809102a4:	51 07 ec 43 	mov	$r12,$r17
ffffffff809102a8:	50 07 ed 43 	mov	$r13,$r16
ffffffff809102ac:	5b 07 eb 43 	mov	$r11,$r27
ffffffff809102b0:	00 00 5b 07 	call	ra,($r27),ffffffff809102b4 <printnum+0x74>
ffffffff809102b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102b8:	4c 9d bd fb 	ldi	$r29,-25268($r29)
ffffffff809102bc:	f8 ff 3f c5 	bne	$r9,ffffffff809102a0 <printnum+0x60>
ffffffff809102c0:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff809102c4:	2a ed 41 49 	zapnot	$r10,0xf,$r10
ffffffff809102c8:	51 07 ec 43 	mov	$r12,$r17
ffffffff809102cc:	5b 07 eb 43 	mov	$r11,$r27
ffffffff809102d0:	82 6b 21 f8 	ldi	$r1,27522($r1)
ffffffff809102d4:	0a 01 41 41 	addl	$r10,$r1,$r10
ffffffff809102d8:	00 00 0a 82 	ldbu	$r16,0($r10)
ffffffff809102dc:	50 0d f0 43 	sextb	$r16,$r16
ffffffff809102e0:	00 00 5b 07 	call	ra,($r27),ffffffff809102e4 <printnum+0xa4>
ffffffff809102e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102e8:	1c 9d bd fb 	ldi	$r29,-25316($r29)
ffffffff809102ec:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809102f0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809102f4:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809102f8:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff809102fc:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80910300:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80910304:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80910308:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091030c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910310:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910314:	38 80 7b 8f 	ldl	$r27,-32712($r27)
ffffffff80910318:	54 07 e9 43 	mov	$r9,$r20
ffffffff8091031c:	a8 01 fb 06 	call	$r23,($r27),ffffffff809109c0 <__divlu>
ffffffff80910320:	52 07 fb 43 	mov	$r27,$r18
ffffffff80910324:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910328:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff8091032c:	c4 ff 5b 07 	call	ra,($r27),ffffffff80910240 <printnum>
ffffffff80910330:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910334:	d0 9c bd fb 	ldi	$r29,-25392($r29)
ffffffff80910338:	e1 ff ff 13 	br	ffffffff809102c0 <printnum+0x80>
ffffffff8091033c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910340 <vprintfmt>:
ffffffff80910340:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910344:	c0 9c bd fb 	ldi	$r29,-25408($r29)
ffffffff80910348:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff8091034c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80910350:	ff ff 7d fd 	ldih	$r11,-1($r29)
ffffffff80910354:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910358:	49 07 f1 43 	mov	$r17,$r9
ffffffff8091035c:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80910360:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80910364:	4a 07 f0 43 	mov	$r16,$r10
ffffffff80910368:	0c 00 f4 43 	addw	$r31,$r20,$r12
ffffffff8091036c:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80910370:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910374:	4f 07 f2 43 	mov	$r18,fp
ffffffff80910378:	a8 6b 6b f9 	ldi	$r11,27560($r11)
ffffffff8091037c:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80910380:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80910384:	40 00 7e ae 	stl	$r19,64(sp)
ffffffff80910388:	48 00 9e ae 	stl	$r20,72(sp)
ffffffff8091038c:	50 00 7e ae 	stl	$r19,80(sp)
ffffffff80910390:	00 00 0f 82 	ldbu	$r16,0(fp)
ffffffff80910394:	01 00 cf f9 	ldi	$r14,1(fp)
ffffffff80910398:	02 a5 04 4a 	cmpeq	$r16,0x25,$r2
ffffffff8091039c:	0b 00 40 c4 	bne	$r2,ffffffff809103cc <vprintfmt+0x8c>
ffffffff809103a0:	1b 00 00 c2 	beq	$r16,ffffffff80910410 <vprintfmt+0xd0>
ffffffff809103a4:	51 07 e9 43 	mov	$r9,$r17
ffffffff809103a8:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809103ac:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff809103b0:	00 00 5b 07 	call	ra,($r27),ffffffff809103b4 <vprintfmt+0x74>
ffffffff809103b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809103b8:	4c 9c bd fb 	ldi	$r29,-25524($r29)
ffffffff809103bc:	11 00 ee 27 	fillcs	17($r14)
ffffffff809103c0:	ff ff 0e 82 	ldbu	$r16,-1($r14)
ffffffff809103c4:	02 a5 04 4a 	cmpeq	$r16,0x25,$r2
ffffffff809103c8:	f5 ff 5f c0 	beq	$r2,ffffffff809103a0 <vprintfmt+0x60>
ffffffff809103cc:	ff ff 9f f8 	ldi	$r4,-1
ffffffff809103d0:	20 00 bf fa 	ldi	$r21,32
ffffffff809103d4:	45 07 ff 43 	clr	$r5
ffffffff809103d8:	48 07 ff 43 	clr	$r8
ffffffff809103dc:	4d 07 e4 43 	mov	$r4,$r13
ffffffff809103e0:	00 00 ce 80 	ldbu	$r6,0($r14)
ffffffff809103e4:	01 00 ee f9 	ldi	fp,1($r14)
ffffffff809103e8:	22 60 c4 48 	subw	$r6,0x23,$r2
ffffffff809103ec:	02 e7 5f 48 	and	$r2,0xff,$r2
ffffffff809103f0:	87 a5 4a 48 	cmpule	$r2,0x55,$r7
ffffffff809103f4:	f2 00 e0 c0 	beq	$r7,ffffffff809107c0 <vprintfmt+0x480>
ffffffff809103f8:	42 01 40 48 	s4addl	$r2,0,$r2
ffffffff809103fc:	02 01 4b 40 	addl	$r2,$r11,$r2
ffffffff80910400:	00 00 42 88 	ldw	$r2,0($r2)
ffffffff80910404:	02 01 a2 43 	addl	$r29,$r2,$r2
ffffffff80910408:	00 00 e2 0f 	jmp	$r31,($r2),ffffffff8091040c <vprintfmt+0xcc>
ffffffff8091040c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910410:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910414:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910418:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff8091041c:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80910420:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80910424:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80910428:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff8091042c:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80910430:	80 00 de fb 	ldi	sp,128(sp)
ffffffff80910434:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910438:	4e 07 ef 43 	mov	fp,$r14
ffffffff8091043c:	30 00 bf fa 	ldi	$r21,48
ffffffff80910440:	e7 ff ff 13 	br	ffffffff809103e0 <vprintfmt+0xa0>
ffffffff80910444:	01 00 4e 80 	ldbu	$r2,1($r14)
ffffffff80910448:	24 00 c6 48 	subw	$r6,0x30,$r4
ffffffff8091044c:	4e 07 ef 43 	mov	fp,$r14
ffffffff80910450:	46 0d e2 43 	sextb	$r2,$r6
ffffffff80910454:	22 00 c6 48 	subw	$r6,0x30,$r2
ffffffff80910458:	06 00 e6 43 	addw	$r31,$r6,$r6
ffffffff8091045c:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff80910460:	82 25 41 48 	cmpule	$r2,0x9,$r2
ffffffff80910464:	c8 00 40 c0 	beq	$r2,ffffffff80910788 <vprintfmt+0x448>
ffffffff80910468:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091046c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910470:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff80910474:	00 00 6e 80 	ldbu	$r3,0($r14)
ffffffff80910478:	42 01 80 48 	s4addl	$r4,0,$r2
ffffffff8091047c:	04 00 82 40 	addw	$r4,$r2,$r4
ffffffff80910480:	04 01 84 40 	addl	$r4,$r4,$r4
ffffffff80910484:	43 0d e3 43 	sextb	$r3,$r3
ffffffff80910488:	04 00 86 40 	addw	$r4,$r6,$r4
ffffffff8091048c:	22 00 66 48 	subw	$r3,0x30,$r2
ffffffff80910490:	24 00 86 48 	subw	$r4,0x30,$r4
ffffffff80910494:	06 00 e3 43 	addw	$r31,$r3,$r6
ffffffff80910498:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff8091049c:	82 25 41 48 	cmpule	$r2,0x9,$r2
ffffffff809104a0:	f3 ff 5f c4 	bne	$r2,ffffffff80910470 <vprintfmt+0x130>
ffffffff809104a4:	b8 00 e0 13 	br	ffffffff80910788 <vprintfmt+0x448>
ffffffff809104a8:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff809104ac:	51 07 e9 43 	mov	$r9,$r17
ffffffff809104b0:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809104b4:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff809104b8:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff809104bc:	00 00 01 8a 	ldw	$r16,0($r1)
ffffffff809104c0:	00 00 5b 07 	call	ra,($r27),ffffffff809104c4 <vprintfmt+0x184>
ffffffff809104c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104c8:	3c 9b bd fb 	ldi	$r29,-25796($r29)
ffffffff809104cc:	b0 ff ff 13 	br	ffffffff80910390 <vprintfmt+0x50>
ffffffff809104d0:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff809104d4:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff809104d8:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff809104dc:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff809104e0:	e0 00 20 c4 	bne	$r1,ffffffff80910864 <vprintfmt+0x524>
ffffffff809104e4:	00 00 cc 8d 	ldl	$r14,0($r12)
ffffffff809104e8:	52 07 ee 43 	mov	$r14,$r18
ffffffff809104ec:	4c 07 e2 43 	mov	$r2,$r12
ffffffff809104f0:	0a 00 7f fa 	ldi	$r19,10
ffffffff809104f4:	2e 00 c0 d5 	bge	$r14,ffffffff809105b0 <vprintfmt+0x270>
ffffffff809104f8:	60 00 be ae 	stl	$r21,96(sp)
ffffffff809104fc:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910500:	2d 00 1f fa 	ldi	$r16,45
ffffffff80910504:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80910508:	00 00 5b 07 	call	ra,($r27),ffffffff8091050c <vprintfmt+0x1cc>
ffffffff8091050c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910510:	f4 9a bd fb 	ldi	$r29,-25868($r29)
ffffffff80910514:	32 01 ee 43 	negl	$r14,$r18
ffffffff80910518:	0a 00 7f fa 	ldi	$r19,10
ffffffff8091051c:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80910520:	23 00 e0 13 	br	ffffffff809105b0 <vprintfmt+0x270>
ffffffff80910524:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff80910528:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff8091052c:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80910530:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff80910534:	21 01 e2 43 	negl	$r2,$r1
ffffffff80910538:	21 04 42 44 	selge	$r2,$r2,$r1,$r1
ffffffff8091053c:	13 00 e1 43 	addw	$r31,$r1,$r19
ffffffff80910540:	41 c5 60 4a 	cmple	$r19,0x6,$r1
ffffffff80910544:	af 00 20 c0 	beq	$r1,ffffffff80910804 <vprintfmt+0x4c4>
ffffffff80910548:	ff ff 5d fc 	ldih	$r2,-1($r29)
ffffffff8091054c:	81 01 60 4a 	s8addl	$r19,0,$r1
ffffffff80910550:	68 6d 42 f8 	ldi	$r2,28008($r2)
ffffffff80910554:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80910558:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091055c:	a9 00 20 c0 	beq	$r1,ffffffff80910804 <vprintfmt+0x4c4>
ffffffff80910560:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80910564:	53 07 e1 43 	mov	$r1,$r19
ffffffff80910568:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091056c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80910570:	a3 6b 52 fa 	ldi	$r18,27555($r18)
ffffffff80910574:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910578:	48 80 7b 8f 	ldl	$r27,-32696($r27)
ffffffff8091057c:	f8 00 5b 07 	call	ra,($r27),ffffffff80910960 <printfmt>
ffffffff80910580:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910584:	80 9a bd fb 	ldi	$r29,-25984($r29)
ffffffff80910588:	81 ff ff 13 	br	ffffffff80910390 <vprintfmt+0x50>
ffffffff8091058c:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80910590:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff80910594:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80910598:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff8091059c:	c0 00 20 c4 	bne	$r1,ffffffff809108a0 <vprintfmt+0x560>
ffffffff809105a0:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff809105a4:	08 00 7f fa 	ldi	$r19,8
ffffffff809105a8:	4c 07 e2 43 	mov	$r2,$r12
ffffffff809105ac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809105b0:	54 07 ed 43 	mov	$r13,$r20
ffffffff809105b4:	51 07 e9 43 	mov	$r9,$r17
ffffffff809105b8:	50 07 ea 43 	mov	$r10,$r16
ffffffff809105bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105c0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809105c4:	1e ff 5b 07 	call	ra,($r27),ffffffff80910240 <printnum>
ffffffff809105c8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105cc:	38 9a bd fb 	ldi	$r29,-26056($r29)
ffffffff809105d0:	6f ff ff 13 	br	ffffffff80910390 <vprintfmt+0x50>
ffffffff809105d4:	08 20 00 49 	addw	$r8,0x1,$r8
ffffffff809105d8:	4e 07 ef 43 	mov	fp,$r14
ffffffff809105dc:	80 ff ff 13 	br	ffffffff809103e0 <vprintfmt+0xa0>
ffffffff809105e0:	60 00 be ae 	stl	$r21,96(sp)
ffffffff809105e4:	30 00 1f fa 	ldi	$r16,48
ffffffff809105e8:	51 07 e9 43 	mov	$r9,$r17
ffffffff809105ec:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809105f0:	00 00 5b 07 	call	ra,($r27),ffffffff809105f4 <vprintfmt+0x2b4>
ffffffff809105f4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105f8:	0c 9a bd fb 	ldi	$r29,-26100($r29)
ffffffff809105fc:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910600:	78 00 1f fa 	ldi	$r16,120
ffffffff80910604:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80910608:	00 00 5b 07 	call	ra,($r27),ffffffff8091060c <vprintfmt+0x2cc>
ffffffff8091060c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910610:	f4 99 bd fb 	ldi	$r29,-26124($r29)
ffffffff80910614:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff80910618:	10 00 7f fa 	ldi	$r19,16
ffffffff8091061c:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80910620:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff80910624:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80910628:	00 00 41 8e 	ldl	$r18,0($r1)
ffffffff8091062c:	e0 ff ff 13 	br	ffffffff809105b0 <vprintfmt+0x270>
ffffffff80910630:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80910634:	06 a5 a5 4a 	cmpeq	$r21,0x2d,$r6
ffffffff80910638:	21 05 ed 43 	cmplt	$r31,$r13,$r1
ffffffff8091063c:	ff ff 7d ff 	ldih	$r27,-1($r29)
ffffffff80910640:	06 05 c0 48 	cmpeq	$r6,0,$r6
ffffffff80910644:	93 6b 7b fb 	ldi	$r27,27539($r27)
ffffffff80910648:	01 07 26 40 	and	$r1,$r6,$r1
ffffffff8091064c:	02 01 6c 40 	addl	$r3,$r12,$r2
ffffffff80910650:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80910654:	00 00 42 8c 	ldl	$r2,0($r2)
ffffffff80910658:	42 00 5b 44 	seleq	$r2,$r27,$r2,$r2
ffffffff8091065c:	96 00 20 c4 	bne	$r1,ffffffff809108b8 <vprintfmt+0x578>
ffffffff80910660:	00 00 22 80 	ldbu	$r1,0($r2)
ffffffff80910664:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80910668:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff8091066c:	19 00 00 c2 	beq	$r16,ffffffff809106d4 <vprintfmt+0x394>
ffffffff80910670:	0b 00 c2 f9 	ldi	$r14,11($r2)
ffffffff80910674:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910678:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091067c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910680:	03 00 80 c8 	blt	$r4,ffffffff80910690 <vprintfmt+0x350>
ffffffff80910684:	24 20 80 48 	subw	$r4,0x1,$r4
ffffffff80910688:	01 00 c4 f8 	ldi	$r6,1($r4)
ffffffff8091068c:	11 00 c0 c0 	beq	$r6,ffffffff809106d4 <vprintfmt+0x394>
ffffffff80910690:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910694:	65 00 a0 c4 	bne	$r5,ffffffff8091082c <vprintfmt+0x4ec>
ffffffff80910698:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff8091069c:	68 00 be ac 	stl	$r5,104(sp)
ffffffff809106a0:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809106a4:	00 00 5b 07 	call	ra,($r27),ffffffff809106a8 <vprintfmt+0x368>
ffffffff809106a8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106ac:	58 99 bd fb 	ldi	$r29,-26280($r29)
ffffffff809106b0:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff809106b4:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff809106b8:	f6 ff 2e 80 	ldbu	$r1,-10($r14)
ffffffff809106bc:	00 00 ee 27 	fillcs	0($r14)
ffffffff809106c0:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff809106c4:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff809106c8:	41 0d e1 43 	sextb	$r1,$r1
ffffffff809106cc:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff809106d0:	eb ff 1f c6 	bne	$r16,ffffffff80910680 <vprintfmt+0x340>
ffffffff809106d4:	2e ff bf cd 	ble	$r13,ffffffff80910390 <vprintfmt+0x50>
ffffffff809106d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809106dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809106e0:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff809106e4:	51 07 e9 43 	mov	$r9,$r17
ffffffff809106e8:	20 00 1f fa 	ldi	$r16,32
ffffffff809106ec:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809106f0:	00 00 5b 07 	call	ra,($r27),ffffffff809106f4 <vprintfmt+0x3b4>
ffffffff809106f4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106f8:	0c 99 bd fb 	ldi	$r29,-26356($r29)
ffffffff809106fc:	f8 ff bf c5 	bne	$r13,ffffffff809106e0 <vprintfmt+0x3a0>
ffffffff80910700:	23 ff ff 13 	br	ffffffff80910390 <vprintfmt+0x50>
ffffffff80910704:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80910708:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff8091070c:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80910710:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80910714:	5c 00 20 c4 	bne	$r1,ffffffff80910888 <vprintfmt+0x548>
ffffffff80910718:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff8091071c:	0a 00 7f fa 	ldi	$r19,10
ffffffff80910720:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80910724:	a2 ff ff 13 	br	ffffffff809105b0 <vprintfmt+0x270>
ffffffff80910728:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff8091072c:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff80910730:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80910734:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80910738:	4d 00 20 c4 	bne	$r1,ffffffff80910870 <vprintfmt+0x530>
ffffffff8091073c:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff80910740:	10 00 7f fa 	ldi	$r19,16
ffffffff80910744:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80910748:	99 ff ff 13 	br	ffffffff809105b0 <vprintfmt+0x270>
ffffffff8091074c:	4e 07 ef 43 	mov	fp,$r14
ffffffff80910750:	01 00 bf f8 	ldi	$r5,1
ffffffff80910754:	22 ff ff 13 	br	ffffffff809103e0 <vprintfmt+0xa0>
ffffffff80910758:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091075c:	25 00 1f fa 	ldi	$r16,37
ffffffff80910760:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80910764:	00 00 5b 07 	call	ra,($r27),ffffffff80910768 <vprintfmt+0x428>
ffffffff80910768:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091076c:	98 98 bd fb 	ldi	$r29,-26472($r29)
ffffffff80910770:	07 ff ff 13 	br	ffffffff80910390 <vprintfmt+0x50>
ffffffff80910774:	50 00 3e 8c 	ldl	$r1,80(sp)
ffffffff80910778:	4e 07 ef 43 	mov	fp,$r14
ffffffff8091077c:	02 01 2c 40 	addl	$r1,$r12,$r2
ffffffff80910780:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80910784:	00 00 82 88 	ldw	$r4,0($r2)
ffffffff80910788:	42 07 ed 43 	mov	$r13,$r2
ffffffff8091078c:	ff ff 7f f8 	ldi	$r3,-1
ffffffff80910790:	42 10 a4 45 	sellt	$r13,$r4,$r2,$r2
ffffffff80910794:	84 10 a3 45 	sellt	$r13,$r3,$r4,$r4
ffffffff80910798:	4d 07 e2 43 	mov	$r2,$r13
ffffffff8091079c:	10 ff ff 13 	br	ffffffff809103e0 <vprintfmt+0xa0>
ffffffff809107a0:	4e 07 ef 43 	mov	fp,$r14
ffffffff809107a4:	2d 00 bf fa 	ldi	$r21,45
ffffffff809107a8:	0d ff ff 13 	br	ffffffff809103e0 <vprintfmt+0xa0>
ffffffff809107ac:	54 07 ed 43 	mov	$r13,$r20
ffffffff809107b0:	4e 07 ef 43 	mov	fp,$r14
ffffffff809107b4:	94 12 80 4e 	sellt	$r20,0,$r20,$r20
ffffffff809107b8:	0d 00 f4 43 	addw	$r31,$r20,$r13
ffffffff809107bc:	08 ff ff 13 	br	ffffffff809103e0 <vprintfmt+0xa0>
ffffffff809107c0:	51 07 e9 43 	mov	$r9,$r17
ffffffff809107c4:	25 00 1f fa 	ldi	$r16,37
ffffffff809107c8:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809107cc:	4f 07 ee 43 	mov	$r14,fp
ffffffff809107d0:	00 00 5b 07 	call	ra,($r27),ffffffff809107d4 <vprintfmt+0x494>
ffffffff809107d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107d8:	2c 98 bd fb 	ldi	$r29,-26580($r29)
ffffffff809107dc:	ff ff 2e 80 	ldbu	$r1,-1($r14)
ffffffff809107e0:	01 a5 24 48 	cmpeq	$r1,0x25,$r1
ffffffff809107e4:	ea fe 3f c4 	bne	$r1,ffffffff80910390 <vprintfmt+0x50>
ffffffff809107e8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809107ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809107f0:	ff ff ef f9 	ldi	fp,-1(fp)
ffffffff809107f4:	ff ff 2f 80 	ldbu	$r1,-1(fp)
ffffffff809107f8:	01 a5 24 48 	cmpeq	$r1,0x25,$r1
ffffffff809107fc:	fc ff 3f c0 	beq	$r1,ffffffff809107f0 <vprintfmt+0x4b0>
ffffffff80910800:	e3 fe ff 13 	br	ffffffff80910390 <vprintfmt+0x50>
ffffffff80910804:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80910808:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091080c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80910810:	9a 6b 52 fa 	ldi	$r18,27546($r18)
ffffffff80910814:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910818:	48 80 7b 8f 	ldl	$r27,-32696($r27)
ffffffff8091081c:	50 00 5b 07 	call	ra,($r27),ffffffff80910960 <printfmt>
ffffffff80910820:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910824:	e0 97 bd fb 	ldi	$r29,-26656($r29)
ffffffff80910828:	d9 fe ff 13 	br	ffffffff80910390 <vprintfmt+0x50>
ffffffff8091082c:	21 00 24 48 	subw	$r1,0x20,$r1
ffffffff80910830:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80910834:	81 c5 2b 48 	cmpule	$r1,0x5e,$r1
ffffffff80910838:	97 ff 3f c4 	bne	$r1,ffffffff80910698 <vprintfmt+0x358>
ffffffff8091083c:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff80910840:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80910844:	3f 00 1f fa 	ldi	$r16,63
ffffffff80910848:	5b 07 ea 43 	mov	$r10,$r27
ffffffff8091084c:	00 00 5b 07 	call	ra,($r27),ffffffff80910850 <vprintfmt+0x510>
ffffffff80910850:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910854:	b0 97 bd fb 	ldi	$r29,-26704($r29)
ffffffff80910858:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff8091085c:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80910860:	95 ff ff 13 	br	ffffffff809106b8 <vprintfmt+0x378>
ffffffff80910864:	1f ff 1f c5 	bne	$r8,ffffffff809104e4 <vprintfmt+0x1a4>
ffffffff80910868:	00 00 cc 89 	ldw	$r14,0($r12)
ffffffff8091086c:	1e ff ff 13 	br	ffffffff809104e8 <vprintfmt+0x1a8>
ffffffff80910870:	b2 ff 1f c5 	bne	$r8,ffffffff8091073c <vprintfmt+0x3fc>
ffffffff80910874:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80910878:	10 00 7f fa 	ldi	$r19,16
ffffffff8091087c:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80910880:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff80910884:	4a ff ff 13 	br	ffffffff809105b0 <vprintfmt+0x270>
ffffffff80910888:	a3 ff 1f c5 	bne	$r8,ffffffff80910718 <vprintfmt+0x3d8>
ffffffff8091088c:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80910890:	0a 00 7f fa 	ldi	$r19,10
ffffffff80910894:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80910898:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff8091089c:	44 ff ff 13 	br	ffffffff809105b0 <vprintfmt+0x270>
ffffffff809108a0:	3f ff 1f c5 	bne	$r8,ffffffff809105a0 <vprintfmt+0x260>
ffffffff809108a4:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff809108a8:	08 00 7f fa 	ldi	$r19,8
ffffffff809108ac:	4c 07 e2 43 	mov	$r2,$r12
ffffffff809108b0:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff809108b4:	3e ff ff 13 	br	ffffffff809105b0 <vprintfmt+0x270>
ffffffff809108b8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108bc:	28 80 7b 8f 	ldl	$r27,-32728($r27)
ffffffff809108c0:	51 07 e4 43 	mov	$r4,$r17
ffffffff809108c4:	50 07 e2 43 	mov	$r2,$r16
ffffffff809108c8:	58 00 5e ac 	stl	$r2,88(sp)
ffffffff809108cc:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff809108d0:	68 00 be ac 	stl	$r5,104(sp)
ffffffff809108d4:	60 00 be ae 	stl	$r21,96(sp)
ffffffff809108d8:	25 fe 5b 07 	call	ra,($r27),ffffffff80910170 <strnlen>
ffffffff809108dc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809108e0:	2d 00 a0 41 	subw	$r13,$r0,$r13
ffffffff809108e4:	24 97 bd fb 	ldi	$r29,-26844($r29)
ffffffff809108e8:	58 00 5e 8c 	ldl	$r2,88(sp)
ffffffff809108ec:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff809108f0:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff809108f4:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff809108f8:	10 00 a0 cd 	ble	$r13,ffffffff8091093c <vprintfmt+0x5fc>
ffffffff809108fc:	0e 00 f5 43 	addw	$r31,$r21,$r14
ffffffff80910900:	58 00 5e ac 	stl	$r2,88(sp)
ffffffff80910904:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff80910908:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091090c:	50 07 ee 43 	mov	$r14,$r16
ffffffff80910910:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80910914:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80910918:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff8091091c:	00 00 5b 07 	call	ra,($r27),ffffffff80910920 <vprintfmt+0x5e0>
ffffffff80910920:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910924:	e0 96 bd fb 	ldi	$r29,-26912($r29)
ffffffff80910928:	58 00 5e 8c 	ldl	$r2,88(sp)
ffffffff8091092c:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff80910930:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80910934:	f2 ff bf c5 	bne	$r13,ffffffff80910900 <vprintfmt+0x5c0>
ffffffff80910938:	4d 07 ff 43 	clr	$r13
ffffffff8091093c:	00 00 22 80 	ldbu	$r1,0($r2)
ffffffff80910940:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80910944:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff80910948:	91 fe 1f c2 	beq	$r16,ffffffff80910390 <vprintfmt+0x50>
ffffffff8091094c:	0b 00 c2 f9 	ldi	$r14,11($r2)
ffffffff80910950:	4b ff ff 13 	br	ffffffff80910680 <vprintfmt+0x340>
ffffffff80910954:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910958:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091095c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910960 <printfmt>:
ffffffff80910960:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910964:	a0 96 bd fb 	ldi	$r29,-26976($r29)
ffffffff80910968:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff8091096c:	18 00 5f f8 	ldi	$r2,24
ffffffff80910970:	18 00 5e a8 	stw	$r2,24(sp)
ffffffff80910974:	70 00 9e ae 	stl	$r20,112(sp)
ffffffff80910978:	50 00 3e f8 	ldi	$r1,80(sp)
ffffffff8091097c:	38 00 7e be 	fstd	$f19,56(sp)
ffffffff80910980:	18 00 9e 8e 	ldl	$r20,24(sp)
ffffffff80910984:	68 00 7e ae 	stl	$r19,104(sp)
ffffffff80910988:	53 07 e1 43 	mov	$r1,$r19
ffffffff8091098c:	40 00 9e be 	fstd	$f20,64(sp)
ffffffff80910990:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910994:	48 00 be be 	fstd	$f21,72(sp)
ffffffff80910998:	78 00 be ae 	stl	$r21,120(sp)
ffffffff8091099c:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff809109a0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809109a4:	00 80 7b 8f 	ldl	$r27,-32768($r27)
ffffffff809109a8:	65 fe 5b 07 	call	ra,($r27),ffffffff80910340 <vprintfmt>
ffffffff809109ac:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809109b0:	54 96 bd fb 	ldi	$r29,-27052($r29)
ffffffff809109b4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809109b8:	80 00 de fb 	ldi	sp,128(sp)
ffffffff809109bc:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff809109c0 <__divlu>:
ffffffff809109c0:	3e 01 c6 4b 	subl	sp,0x30,sp
ffffffff809109c4:	00 00 3e ac 	stl	$r1,0(sp)
ffffffff809109c8:	41 07 39 43 	or	$r25,$r25,$r1
ffffffff809109cc:	08 00 5e ac 	stl	$r2,8(sp)
ffffffff809109d0:	42 07 18 43 	or	$r24,$r24,$r2
ffffffff809109d4:	10 00 1e ac 	stl	$r0,16(sp)
ffffffff809109d8:	5b 07 ff 43 	clr	$r27
ffffffff809109dc:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff809109e0:	40 27 e0 4b 	mov	0x1,$r0
ffffffff809109e4:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff809109e8:	0d 00 20 c0 	beq	$r1,ffffffff80910a20 <__divlu+0x60>
ffffffff809109ec:	7c 05 22 40 	cmpult	$r1,$r2,$r28
ffffffff809109f0:	03 00 20 c8 	blt	$r1,ffffffff80910a00 <__divlu+0x40>
ffffffff809109f4:	01 01 21 40 	addl	$r1,$r1,$r1
ffffffff809109f8:	00 01 00 40 	addl	$r0,$r0,$r0
ffffffff809109fc:	fb ff 9f c7 	bne	$r28,ffffffff809109ec <__divlu+0x2c>
ffffffff80910a00:	04 01 60 43 	addl	$r27,$r0,$r4
ffffffff80910a04:	20 29 00 48 	srl	$r0,0x1,$r0
ffffffff80910a08:	9c 05 22 40 	cmpule	$r1,$r2,$r28
ffffffff80910a0c:	23 01 41 40 	subl	$r2,$r1,$r3
ffffffff80910a10:	7b 17 84 47 	selne	$r28,$r4,$r27,$r27
ffffffff80910a14:	21 29 20 48 	srl	$r1,0x1,$r1
ffffffff80910a18:	42 14 83 47 	selne	$r28,$r3,$r2,$r2
ffffffff80910a1c:	f8 ff 1f c4 	bne	$r0,ffffffff80910a00 <__divlu+0x40>
ffffffff80910a20:	00 00 3e 8c 	ldl	$r1,0(sp)
ffffffff80910a24:	08 00 5e 8c 	ldl	$r2,8(sp)
ffffffff80910a28:	10 00 1e 8c 	ldl	$r0,16(sp)
ffffffff80910a2c:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80910a30:	20 00 9e 8c 	ldl	$r4,32(sp)
ffffffff80910a34:	1e 01 c6 4b 	addl	sp,0x30,sp
ffffffff80910a38:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80910a3c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910a40 <__divl>:
ffffffff80910a40:	3e 01 c6 4b 	subl	sp,0x30,sp
ffffffff80910a44:	5c 07 19 43 	or	$r24,$r25,$r28
ffffffff80910a48:	de ff 9f d7 	bge	$r28,ffffffff809109c4 <__divlu+0x4>
ffffffff80910a4c:	00 00 1e af 	stl	$r24,0(sp)
ffffffff80910a50:	3c 01 f8 43 	negl	$r24,$r28
ffffffff80910a54:	08 00 3e af 	stl	$r25,8(sp)
ffffffff80910a58:	18 13 1c 47 	sellt	$r24,$r28,$r24,$r24
ffffffff80910a5c:	10 00 fe ae 	stl	$r23,16(sp)
ffffffff80910a60:	3c 01 f9 43 	negl	$r25,$r28
ffffffff80910a64:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910a68:	39 13 3c 47 	sellt	$r25,$r28,$r25,$r25
ffffffff80910a6c:	d4 ff ff 16 	bsr	$r23,ffffffff809109c0 <__divlu>
ffffffff80910a70:	00 00 1e 8f 	ldl	$r24,0(sp)
ffffffff80910a74:	08 00 3e 8f 	ldl	$r25,8(sp)
ffffffff80910a78:	9c 07 19 43 	xor	$r24,$r25,$r28
ffffffff80910a7c:	23 01 fb 43 	negl	$r27,$r3
ffffffff80910a80:	10 00 fe 8e 	ldl	$r23,16(sp)
ffffffff80910a84:	7b 13 83 47 	sellt	$r28,$r3,$r27,$r27
ffffffff80910a88:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80910a8c:	1e 01 c6 4b 	addl	sp,0x30,sp
ffffffff80910a90:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80910a94:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910a98 <__remlu>:
ffffffff80910a98:	3e 01 c4 4b 	subl	sp,0x20,sp
ffffffff80910a9c:	00 00 3e ac 	stl	$r1,0(sp)
ffffffff80910aa0:	41 07 39 43 	or	$r25,$r25,$r1
ffffffff80910aa4:	08 00 5e ac 	stl	$r2,8(sp)
ffffffff80910aa8:	5b 07 18 43 	or	$r24,$r24,$r27
ffffffff80910aac:	10 00 1e ac 	stl	$r0,16(sp)
ffffffff80910ab0:	42 07 ff 43 	clr	$r2
ffffffff80910ab4:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910ab8:	40 27 e0 4b 	mov	0x1,$r0
ffffffff80910abc:	0b 00 20 c0 	beq	$r1,ffffffff80910aec <__remlu+0x54>
ffffffff80910ac0:	7c 05 3b 40 	cmpult	$r1,$r27,$r28
ffffffff80910ac4:	03 00 20 c8 	blt	$r1,ffffffff80910ad4 <__remlu+0x3c>
ffffffff80910ac8:	01 01 21 40 	addl	$r1,$r1,$r1
ffffffff80910acc:	00 01 00 40 	addl	$r0,$r0,$r0
ffffffff80910ad0:	fb ff 9f c7 	bne	$r28,ffffffff80910ac0 <__remlu+0x28>
ffffffff80910ad4:	20 29 00 48 	srl	$r0,0x1,$r0
ffffffff80910ad8:	9c 05 3b 40 	cmpule	$r1,$r27,$r28
ffffffff80910adc:	23 01 61 43 	subl	$r27,$r1,$r3
ffffffff80910ae0:	21 29 20 48 	srl	$r1,0x1,$r1
ffffffff80910ae4:	7b 17 83 47 	selne	$r28,$r3,$r27,$r27
ffffffff80910ae8:	fa ff 1f c4 	bne	$r0,ffffffff80910ad4 <__remlu+0x3c>
ffffffff80910aec:	00 00 3e 8c 	ldl	$r1,0(sp)
ffffffff80910af0:	08 00 5e 8c 	ldl	$r2,8(sp)
ffffffff80910af4:	10 00 1e 8c 	ldl	$r0,16(sp)
ffffffff80910af8:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80910afc:	1e 01 c4 4b 	addl	sp,0x20,sp
ffffffff80910b00:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80910b04:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910b08 <__reml>:
ffffffff80910b08:	3e 01 c4 4b 	subl	sp,0x20,sp
ffffffff80910b0c:	5c 07 19 43 	or	$r24,$r25,$r28
ffffffff80910b10:	e2 ff 9f d7 	bge	$r28,ffffffff80910a9c <__remlu+0x4>
ffffffff80910b14:	00 00 1e af 	stl	$r24,0(sp)
ffffffff80910b18:	3c 01 f8 43 	negl	$r24,$r28
ffffffff80910b1c:	08 00 3e af 	stl	$r25,8(sp)
ffffffff80910b20:	18 13 1c 47 	sellt	$r24,$r28,$r24,$r24
ffffffff80910b24:	10 00 fe ae 	stl	$r23,16(sp)
ffffffff80910b28:	3c 01 f9 43 	negl	$r25,$r28
ffffffff80910b2c:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910b30:	39 13 3c 47 	sellt	$r25,$r28,$r25,$r25
ffffffff80910b34:	d8 ff ff 16 	bsr	$r23,ffffffff80910a98 <__remlu>
ffffffff80910b38:	00 00 1e 8f 	ldl	$r24,0(sp)
ffffffff80910b3c:	08 00 3e 8f 	ldl	$r25,8(sp)
ffffffff80910b40:	5c 07 18 43 	or	$r24,$r24,$r28
ffffffff80910b44:	23 01 fb 43 	negl	$r27,$r3
ffffffff80910b48:	10 00 fe 8e 	ldl	$r23,16(sp)
ffffffff80910b4c:	7b 13 83 47 	sellt	$r28,$r3,$r27,$r27
ffffffff80910b50:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80910b54:	1e 01 c4 4b 	addl	sp,0x20,sp
ffffffff80910b58:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80910b5c:	00 00 fe ff 	ldih	$r31,0(sp)
