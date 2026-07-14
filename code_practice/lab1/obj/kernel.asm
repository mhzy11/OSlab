
bin/kernel:     file format elf64-sw_64


Disassembly of section .text:

ffffffff80910000 <kern_entry>:
ffffffff80910000:	00 00 60 13 	br	$r27,ffffffff80910004 <kern_entry+0x4>
ffffffff80910004:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910008:	fc 9f bd fb 	ldi	$r29,-24580($r29)
ffffffff8091000c:	b0 80 dd 8f 	ldl	sp,-32592($r29)
ffffffff80910010:	30 80 7d 8f 	ldl	$r27,-32720($r29)
ffffffff80910014:	02 00 5b 07 	call	ra,($r27),ffffffff80910020 <kern_init>
	...

ffffffff80910020 <kern_init>:
ffffffff80910020:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910024:	e0 9f bd fb 	ldi	$r29,-24608($r29)
ffffffff80910028:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff8091002c:	38 80 10 8e 	ldl	$r16,-32712($r16)
ffffffff80910030:	00 00 5d fe 	ldih	$r18,0($r29)
ffffffff80910034:	68 80 52 8e 	ldl	$r18,-32664($r18)
ffffffff80910038:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091003c:	51 07 ff 43 	clr	$r17
ffffffff80910040:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910044:	80 80 7b 8f 	ldl	$r27,-32640($r27)
ffffffff80910048:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091004c:	32 01 50 42 	subl	$r18,$r16,$r18
ffffffff80910050:	d3 01 5b 07 	call	ra,($r27),ffffffff809107a0 <memset>
ffffffff80910054:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910058:	ac 9f bd fb 	ldi	$r29,-24660($r29)
ffffffff8091005c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910060:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910064:	72 00 5b 07 	call	ra,($r27),ffffffff80910230 <cons_init>
ffffffff80910068:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091006c:	98 9f bd fb 	ldi	$r29,-24680($r29)
ffffffff80910070:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910074:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff80910078:	ff ff 3d fe 	ldih	$r17,-1($r29)
ffffffff8091007c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910080:	30 71 31 fa 	ldi	$r17,28976($r17)
ffffffff80910084:	4d 71 10 fa 	ldi	$r16,29005($r16)
ffffffff80910088:	29 00 5b 07 	call	ra,($r27),ffffffff80910130 <cprintf>
ffffffff8091008c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910090:	74 9f bd fb 	ldi	$r29,-24716($r29)
ffffffff80910094:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910098:	b8 80 7b 8f 	ldl	$r27,-32584($r27)
ffffffff8091009c:	6c 00 5b 07 	call	ra,($r27),ffffffff80910250 <trap_init>
ffffffff809100a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100a4:	60 9f bd fb 	ldi	$r29,-24736($r29)
ffffffff809100a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100ac:	60 80 7b 8f 	ldl	$r27,-32672($r27)
ffffffff809100b0:	47 00 5b 07 	call	ra,($r27),ffffffff809101d0 <clock_init>
ffffffff809100b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100b8:	4c 9f bd fb 	ldi	$r29,-24756($r29)
ffffffff809100bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100c0:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff809100c4:	5e 00 5b 07 	call	ra,($r27),ffffffff80910240 <intr_enable>
ffffffff809100c8:	80 00 00 02 	sys_call	0x80
ffffffff809100cc:	00 00 00 7a 	.long 0x7a000000
ffffffff809100d0:	ff ff ff 13 	br	ffffffff809100d0 <kern_init+0xb0>
ffffffff809100d4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809100d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809100dc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809100e0 <cputch>:
ffffffff809100e0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809100e4:	20 9f bd fb 	ldi	$r29,-24800($r29)
ffffffff809100e8:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff809100ec:	10 00 3f fc 	ldih	$r1,16
ffffffff809100f0:	01 00 9f f8 	ldi	$r4,1
ffffffff809100f4:	70 80 bf fc 	ldih	$r5,-32656
ffffffff809100f8:	00 e0 62 8c 	ldl	$r3,-8192($r2)
ffffffff809100fc:	fe ff 21 f8 	ldi	$r1,-2($r1)
ffffffff80910100:	81 05 61 40 	cmpule	$r3,$r1,$r1
ffffffff80910104:	02 00 20 c0 	beq	$r1,ffffffff80910110 <cputch+0x30>
ffffffff80910108:	05 01 65 40 	addl	$r3,$r5,$r5
ffffffff8091010c:	01 00 83 f8 	ldi	$r4,1($r3)
ffffffff80910110:	00 00 05 a2 	stb	$r16,0($r5)
ffffffff80910114:	00 e0 82 ac 	stl	$r4,-8192($r2)
ffffffff80910118:	00 00 31 88 	ldw	$r1,0($r17)
ffffffff8091011c:	01 20 20 48 	addw	$r1,0x1,$r1
ffffffff80910120:	00 00 31 a8 	stw	$r1,0($r17)
ffffffff80910124:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910128:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091012c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910130 <cprintf>:
ffffffff80910130:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910134:	d0 9e bd fb 	ldi	$r29,-24880($r29)
ffffffff80910138:	60 ff de fb 	ldi	sp,-160(sp)
ffffffff8091013c:	08 00 5f f8 	ldi	$r2,8
ffffffff80910140:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910144:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80910148:	28 00 5e a8 	stw	$r2,40(sp)
ffffffff8091014c:	48 00 3e be 	fstd	$f17,72(sp)
ffffffff80910150:	50 00 5e be 	fstd	$f18,80(sp)
ffffffff80910154:	70 00 3e f8 	ldi	$r1,112(sp)
ffffffff80910158:	28 00 5e 8c 	ldl	$r2,40(sp)
ffffffff8091015c:	58 00 7e be 	fstd	$f19,88(sp)
ffffffff80910160:	60 00 9e be 	fstd	$f20,96(sp)
ffffffff80910164:	80 00 5e ae 	stl	$r18,128(sp)
ffffffff80910168:	68 00 be be 	fstd	$f21,104(sp)
ffffffff8091016c:	52 07 f0 43 	mov	$r16,$r18
ffffffff80910170:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910174:	e0 60 10 fa 	ldi	$r16,24800($r16)
ffffffff80910178:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091017c:	78 00 3e ae 	stl	$r17,120(sp)
ffffffff80910180:	88 00 7e ae 	stl	$r19,136(sp)
ffffffff80910184:	30 00 3e fa 	ldi	$r17,48(sp)
ffffffff80910188:	53 07 e1 43 	mov	$r1,$r19
ffffffff8091018c:	90 00 9e ae 	stl	$r20,144(sp)
ffffffff80910190:	98 00 be ae 	stl	$r21,152(sp)
ffffffff80910194:	54 07 e2 43 	mov	$r2,$r20
ffffffff80910198:	20 00 3e ac 	stl	$r1,32(sp)
ffffffff8091019c:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff809101a0:	18 00 5e ac 	stl	$r2,24(sp)
ffffffff809101a4:	30 00 fe ab 	stw	$r31,48(sp)
ffffffff809101a8:	d9 01 5b 07 	call	ra,($r27),ffffffff80910910 <vprintfmt>
ffffffff809101ac:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809101b0:	30 00 1e 88 	ldw	$r0,48(sp)
ffffffff809101b4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809101b8:	54 9e bd fb 	ldi	$r29,-25004($r29)
ffffffff809101bc:	a0 00 de fb 	ldi	sp,160(sp)
ffffffff809101c0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809101c4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809101c8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809101cc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809101d0 <clock_init>:
ffffffff809101d0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809101d4:	30 9e bd fb 	ldi	$r29,-25040($r29)
ffffffff809101d8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809101dc:	01 00 1f fa 	ldi	$r16,1
ffffffff809101e0:	00 00 5e af 	stl	ra,0(sp)
ffffffff809101e4:	3b 00 00 02 	sys_call	0x3b
ffffffff809101e8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809101ec:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff809101f0:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809101f4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809101f8:	52 71 10 fa 	ldi	$r16,29010($r16)
ffffffff809101fc:	08 e0 e1 af 	stl	$r31,-8184($r1)
ffffffff80910200:	cb ff 5b 07 	call	ra,($r27),ffffffff80910130 <cprintf>
ffffffff80910204:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910208:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091020c:	fc 9d bd fb 	ldi	$r29,-25092($r29)
ffffffff80910210:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910214:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910218:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091021c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910220 <clock_set_next_event>:
ffffffff80910220:	01 00 1f fa 	ldi	$r16,1
ffffffff80910224:	3b 00 00 02 	sys_call	0x3b
ffffffff80910228:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091022c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910230 <cons_init>:
ffffffff80910230:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910234:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910238:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091023c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910240 <intr_enable>:
ffffffff80910240:	50 07 ff 43 	clr	$r16
ffffffff80910244:	35 00 00 02 	sys_call	0x35
ffffffff80910248:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091024c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910250 <trap_init>:
ffffffff80910250:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910254:	b0 9d bd fb 	ldi	$r29,-25168($r29)
ffffffff80910258:	50 07 fd 43 	mov	$r29,$r16
ffffffff8091025c:	37 00 00 02 	sys_call	0x37
ffffffff80910260:	51 07 ff 43 	clr	$r17
ffffffff80910264:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910268:	48 80 10 8e 	ldl	$r16,-32696($r16)
ffffffff8091026c:	34 00 00 02 	sys_call	0x34
ffffffff80910270:	03 00 3f fa 	ldi	$r17,3
ffffffff80910274:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910278:	98 80 10 8e 	ldl	$r16,-32616($r16)
ffffffff8091027c:	34 00 00 02 	sys_call	0x34
ffffffff80910280:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910284:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910288:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091028c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910290 <print_trapframe>:
ffffffff80910290:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910294:	70 9d bd fb 	ldi	$r29,-25232($r29)
ffffffff80910298:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091029c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809102a0:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff809102a4:	51 07 f0 43 	mov	$r16,$r17
ffffffff809102a8:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809102ac:	49 07 f0 43 	mov	$r16,$r9
ffffffff809102b0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809102b4:	00 00 5e af 	stl	ra,0(sp)
ffffffff809102b8:	6d 71 10 fa 	ldi	$r16,29037($r16)
ffffffff809102bc:	9c ff 5b 07 	call	ra,($r27),ffffffff80910130 <cprintf>
ffffffff809102c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102c4:	40 9d bd fb 	ldi	$r29,-25280($r29)
ffffffff809102c8:	f8 00 29 8e 	ldl	$r17,248($r9)
ffffffff809102cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809102d0:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff809102d4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809102d8:	7e 71 10 fa 	ldi	$r16,29054($r16)
ffffffff809102dc:	94 ff 5b 07 	call	ra,($r27),ffffffff80910130 <cprintf>
ffffffff809102e0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102e4:	20 9d bd fb 	ldi	$r29,-25312($r29)
ffffffff809102e8:	f0 00 29 8e 	ldl	$r17,240($r9)
ffffffff809102ec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809102f0:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff809102f4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809102f8:	8e 71 10 fa 	ldi	$r16,29070($r16)
ffffffff809102fc:	8c ff 5b 07 	call	ra,($r27),ffffffff80910130 <cprintf>
ffffffff80910300:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910304:	00 9d bd fb 	ldi	$r29,-25344($r29)
ffffffff80910308:	00 01 29 8e 	ldl	$r17,256($r9)
ffffffff8091030c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910310:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff80910314:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910318:	9e 71 10 fa 	ldi	$r16,29086($r16)
ffffffff8091031c:	84 ff 5b 07 	call	ra,($r27),ffffffff80910130 <cprintf>
ffffffff80910320:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910324:	e0 9c bd fb 	ldi	$r29,-25376($r29)
ffffffff80910328:	80 00 29 8e 	ldl	$r17,128($r9)
ffffffff8091032c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910330:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff80910334:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910338:	ae 71 10 fa 	ldi	$r16,29102($r16)
ffffffff8091033c:	7c ff 5b 07 	call	ra,($r27),ffffffff80910130 <cprintf>
ffffffff80910340:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910344:	c0 9c bd fb 	ldi	$r29,-25408($r29)
ffffffff80910348:	88 00 29 8e 	ldl	$r17,136($r9)
ffffffff8091034c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910350:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff80910354:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910358:	be 71 10 fa 	ldi	$r16,29118($r16)
ffffffff8091035c:	74 ff 5b 07 	call	ra,($r27),ffffffff80910130 <cprintf>
ffffffff80910360:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910364:	a0 9c bd fb 	ldi	$r29,-25440($r29)
ffffffff80910368:	90 00 29 8e 	ldl	$r17,144($r9)
ffffffff8091036c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910370:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff80910374:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910378:	ce 71 10 fa 	ldi	$r16,29134($r16)
ffffffff8091037c:	6c ff 5b 07 	call	ra,($r27),ffffffff80910130 <cprintf>
ffffffff80910380:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910384:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910388:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091038c:	80 9c bd fb 	ldi	$r29,-25472($r29)
ffffffff80910390:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910394:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910398:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091039c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809103a0 <do_entInt>:
ffffffff809103a0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809103a4:	60 9c bd fb 	ldi	$r29,-25504($r29)
ffffffff809103a8:	80 00 30 8e 	ldl	$r17,128($r16)
ffffffff809103ac:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809103b0:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809103b4:	00 00 5e af 	stl	ra,0(sp)
ffffffff809103b8:	49 07 f0 43 	mov	$r16,$r9
ffffffff809103bc:	01 25 21 4a 	cmpeq	$r17,0x9,$r1
ffffffff809103c0:	1b 00 20 c0 	beq	$r1,ffffffff80910430 <do_entInt+0x90>
ffffffff809103c4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809103c8:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff809103cc:	94 ff 5b 07 	call	ra,($r27),ffffffff80910220 <clock_set_next_event>
ffffffff809103d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809103d4:	30 9c bd fb 	ldi	$r29,-25552($r29)
ffffffff809103d8:	00 00 9d fc 	ldih	$r4,0($r29)
ffffffff809103dc:	a0 80 84 8c 	ldl	$r4,-32608($r4)
ffffffff809103e0:	00 00 24 8c 	ldl	$r1,0($r4)
ffffffff809103e4:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff809103e8:	00 00 24 ac 	stl	$r1,0($r4)
ffffffff809103ec:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff809103f0:	00 00 64 8c 	ldl	$r3,0($r4)
ffffffff809103f4:	30 72 21 8c 	ldl	$r1,29232($r1)
ffffffff809103f8:	22 49 60 48 	srl	$r3,0x2,$r2
ffffffff809103fc:	22 03 41 40 	umulh	$r2,$r1,$r2
ffffffff80910400:	22 49 40 48 	srl	$r2,0x2,$r2
ffffffff80910404:	41 01 40 48 	s4addl	$r2,0,$r1
ffffffff80910408:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff8091040c:	42 01 20 48 	s4addl	$r1,0,$r2
ffffffff80910410:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80910414:	41 01 20 48 	s4addl	$r1,0,$r1
ffffffff80910418:	21 01 61 40 	subl	$r3,$r1,$r1
ffffffff8091041c:	14 00 20 c0 	beq	$r1,ffffffff80910470 <do_entInt+0xd0>
ffffffff80910420:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910424:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910428:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091042c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910430:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910434:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff80910438:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091043c:	e8 71 10 fa 	ldi	$r16,29160($r16)
ffffffff80910440:	3b ff 5b 07 	call	ra,($r27),ffffffff80910130 <cprintf>
ffffffff80910444:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910448:	50 07 e9 43 	mov	$r9,$r16
ffffffff8091044c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910450:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910454:	bc 9b bd fb 	ldi	$r29,-25668($r29)
ffffffff80910458:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091045c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910460:	08 80 7b 8f 	ldl	$r27,-32760($r27)
ffffffff80910464:	8a ff fb 0f 	jmp	$r31,($r27),ffffffff80910290 <print_trapframe>
ffffffff80910468:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091046c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910470:	00 00 24 8e 	ldl	$r17,0($r4)
ffffffff80910474:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910478:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff8091047c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910480:	de 71 10 fa 	ldi	$r16,29150($r16)
ffffffff80910484:	2a ff 5b 07 	call	ra,($r27),ffffffff80910130 <cprintf>
ffffffff80910488:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091048c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910490:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910494:	78 9b bd fb 	ldi	$r29,-25736($r29)
ffffffff80910498:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091049c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff809104a0 <do_entIF>:
ffffffff809104a0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809104a4:	60 9b bd fb 	ldi	$r29,-25760($r29)
ffffffff809104a8:	80 00 30 8c 	ldl	$r1,128($r16)
ffffffff809104ac:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809104b0:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809104b4:	00 00 5e af 	stl	ra,0(sp)
ffffffff809104b8:	49 07 f0 43 	mov	$r16,$r9
ffffffff809104bc:	1c 00 20 c0 	beq	$r1,ffffffff80910530 <do_entIF+0x90>
ffffffff809104c0:	01 85 20 48 	cmpeq	$r1,0x4,$r1
ffffffff809104c4:	12 00 20 c0 	beq	$r1,ffffffff80910510 <do_entIF+0x70>
ffffffff809104c8:	f8 00 30 8e 	ldl	$r17,248($r16)
ffffffff809104cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809104d0:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff809104d4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809104d8:	1a 72 10 fa 	ldi	$r16,29210($r16)
ffffffff809104dc:	14 ff 5b 07 	call	ra,($r27),ffffffff80910130 <cprintf>
ffffffff809104e0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104e4:	f8 00 29 8c 	ldl	$r1,248($r9)
ffffffff809104e8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809104ec:	20 9b bd fb 	ldi	$r29,-25824($r29)
ffffffff809104f0:	04 00 21 f8 	ldi	$r1,4($r1)
ffffffff809104f4:	f8 00 29 ac 	stl	$r1,248($r9)
ffffffff809104f8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809104fc:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910500:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910504:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910508:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091050c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910510:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910514:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910518:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091051c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910520:	08 80 7b 8f 	ldl	$r27,-32760($r27)
ffffffff80910524:	5a ff fb 0f 	jmp	$r31,($r27),ffffffff80910290 <print_trapframe>
ffffffff80910528:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091052c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910530:	f8 00 30 8e 	ldl	$r17,248($r16)
ffffffff80910534:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910538:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff8091053c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910540:	04 72 10 fa 	ldi	$r16,29188($r16)
ffffffff80910544:	fc ff 31 fa 	ldi	$r17,-4($r17)
ffffffff80910548:	f9 fe 5b 07 	call	ra,($r27),ffffffff80910130 <cprintf>
ffffffff8091054c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910550:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910554:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910558:	b4 9a bd fb 	ldi	$r29,-25932($r29)
ffffffff8091055c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910560:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910564:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910568:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091056c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910570 <trap>:
ffffffff80910570:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910574:	90 9a bd fb 	ldi	$r29,-25968($r29)
ffffffff80910578:	e8 00 30 8c 	ldl	$r1,232($r16)
ffffffff8091057c:	04 00 20 c0 	beq	$r1,ffffffff80910590 <trap+0x20>
ffffffff80910580:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910584:	28 80 7b 8f 	ldl	$r27,-32728($r27)
ffffffff80910588:	c5 ff fb 0f 	jmp	$r31,($r27),ffffffff809104a0 <do_entIF>
ffffffff8091058c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910590:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910594:	00 80 7b 8f 	ldl	$r27,-32768($r27)
ffffffff80910598:	81 ff fb 0f 	jmp	$r31,($r27),ffffffff809103a0 <do_entInt>
ffffffff8091059c:	5f 07 ff 43 	nop	

ffffffff809105a0 <entInt>:
ffffffff809105a0:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff809105a4:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff809105a8:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff809105ac:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff809105b0:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff809105b4:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff809105b8:	28 00 be ac 	stl	$r5,40(sp)
ffffffff809105bc:	30 00 de ac 	stl	$r6,48(sp)
ffffffff809105c0:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff809105c4:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff809105c8:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff809105cc:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff809105d0:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff809105d4:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff809105d8:	68 00 be ad 	stl	$r13,104(sp)
ffffffff809105dc:	70 00 de ad 	stl	$r14,112(sp)
ffffffff809105e0:	78 00 fe ad 	stl	fp,120(sp)
ffffffff809105e4:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff809105e8:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff809105ec:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff809105f0:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff809105f4:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff809105f8:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff809105fc:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910600:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910604:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910608:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff8091060c:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910610:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910614:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910618:	00 00 1f fa 	ldi	$r16,0
ffffffff8091061c:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910620:	a8 80 5d 8f 	ldl	ra,-32600($r29)
ffffffff80910624:	50 07 fe 43 	mov	sp,$r16
ffffffff80910628:	90 80 7d 8f 	ldl	$r27,-32624($r29)
ffffffff8091062c:	d0 ff fb 07 	call	$r31,($r27),ffffffff80910570 <trap>

ffffffff80910630 <entIF>:
ffffffff80910630:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910634:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910638:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff8091063c:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910640:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910644:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910648:	28 00 be ac 	stl	$r5,40(sp)
ffffffff8091064c:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910650:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910654:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910658:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff8091065c:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910660:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910664:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910668:	68 00 be ad 	stl	$r13,104(sp)
ffffffff8091066c:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910670:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910674:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910678:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff8091067c:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910680:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910684:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910688:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff8091068c:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910690:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910694:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910698:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff8091069c:	d0 00 5e af 	stl	ra,208(sp)
ffffffff809106a0:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff809106a4:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff809106a8:	03 00 1f fa 	ldi	$r16,3
ffffffff809106ac:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff809106b0:	a8 80 5d 8f 	ldl	ra,-32600($r29)
ffffffff809106b4:	50 07 fe 43 	mov	sp,$r16
ffffffff809106b8:	90 80 7d 8f 	ldl	$r27,-32624($r29)
ffffffff809106bc:	ac ff fb 07 	call	$r31,($r27),ffffffff80910570 <trap>

ffffffff809106c0 <__trapret>:
ffffffff809106c0:	00 00 1e 8c 	ldl	$r0,0(sp)
ffffffff809106c4:	08 00 3e 8c 	ldl	$r1,8(sp)
ffffffff809106c8:	10 00 5e 8c 	ldl	$r2,16(sp)
ffffffff809106cc:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff809106d0:	20 00 9e 8c 	ldl	$r4,32(sp)
ffffffff809106d4:	28 00 be 8c 	ldl	$r5,40(sp)
ffffffff809106d8:	30 00 de 8c 	ldl	$r6,48(sp)
ffffffff809106dc:	38 00 fe 8c 	ldl	$r7,56(sp)
ffffffff809106e0:	40 00 1e 8d 	ldl	$r8,64(sp)
ffffffff809106e4:	48 00 3e 8d 	ldl	$r9,72(sp)
ffffffff809106e8:	50 00 5e 8d 	ldl	$r10,80(sp)
ffffffff809106ec:	58 00 7e 8d 	ldl	$r11,88(sp)
ffffffff809106f0:	60 00 9e 8d 	ldl	$r12,96(sp)
ffffffff809106f4:	68 00 be 8d 	ldl	$r13,104(sp)
ffffffff809106f8:	70 00 de 8d 	ldl	$r14,112(sp)
ffffffff809106fc:	78 00 fe 8d 	ldl	fp,120(sp)
ffffffff80910700:	80 00 1e 8e 	ldl	$r16,128(sp)
ffffffff80910704:	88 00 3e 8e 	ldl	$r17,136(sp)
ffffffff80910708:	90 00 5e 8e 	ldl	$r18,144(sp)
ffffffff8091070c:	98 00 7e 8e 	ldl	$r19,152(sp)
ffffffff80910710:	a0 00 9e 8e 	ldl	$r20,160(sp)
ffffffff80910714:	a8 00 be 8e 	ldl	$r21,168(sp)
ffffffff80910718:	b0 00 de 8e 	ldl	$r22,176(sp)
ffffffff8091071c:	b8 00 fe 8e 	ldl	$r23,184(sp)
ffffffff80910720:	c0 00 1e 8f 	ldl	$r24,192(sp)
ffffffff80910724:	c8 00 3e 8f 	ldl	$r25,200(sp)
ffffffff80910728:	d0 00 5e 8f 	ldl	ra,208(sp)
ffffffff8091072c:	d8 00 7e 8f 	ldl	$r27,216(sp)
ffffffff80910730:	e0 00 9e 8f 	ldl	$r28,224(sp)
ffffffff80910734:	f0 00 de fb 	ldi	sp,240(sp)
ffffffff80910738:	3f 00 00 02 	sys_call	0x3f
ffffffff8091073c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910740 <strnlen>:
ffffffff80910740:	13 00 20 c2 	beq	$r17,ffffffff80910790 <strnlen+0x50>
ffffffff80910744:	00 00 50 80 	ldbu	$r2,0($r16)
ffffffff80910748:	01 00 30 f8 	ldi	$r1,1($r16)
ffffffff8091074c:	10 00 40 c0 	beq	$r2,ffffffff80910790 <strnlen+0x50>
ffffffff80910750:	11 01 11 42 	addl	$r16,$r17,$r17
ffffffff80910754:	04 00 e0 13 	br	ffffffff80910768 <strnlen+0x28>
ffffffff80910758:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091075c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910760:	ff ff 41 80 	ldbu	$r2,-1($r1)
ffffffff80910764:	06 00 40 c0 	beq	$r2,ffffffff80910780 <strnlen+0x40>
ffffffff80910768:	02 05 31 40 	cmpeq	$r1,$r17,$r2
ffffffff8091076c:	20 01 30 40 	subl	$r1,$r16,$r0
ffffffff80910770:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80910774:	fa ff 5f c0 	beq	$r2,ffffffff80910760 <strnlen+0x20>
ffffffff80910778:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091077c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910780:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910784:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910788:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091078c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910790:	40 07 ff 43 	clr	$r0
ffffffff80910794:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910798:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091079c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809107a0 <memset>:
ffffffff809107a0:	ff ff 52 f8 	ldi	$r2,-1($r18)
ffffffff809107a4:	16 00 40 c2 	beq	$r18,ffffffff80910800 <memset+0x60>
ffffffff809107a8:	83 65 40 48 	cmpule	$r2,0x3,$r3
ffffffff809107ac:	41 07 f0 43 	mov	$r16,$r1
ffffffff809107b0:	0c 00 60 c4 	bne	$r3,ffffffff809107e4 <memset+0x44>
ffffffff809107b4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809107b8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809107bc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809107c0:	50 00 e1 9b 	fillde	80($r1)
ffffffff809107c4:	00 00 21 a2 	stb	$r17,0($r1)
ffffffff809107c8:	fc ff 42 f8 	ldi	$r2,-4($r2)
ffffffff809107cc:	04 00 21 f8 	ldi	$r1,4($r1)
ffffffff809107d0:	83 65 40 48 	cmpule	$r2,0x3,$r3
ffffffff809107d4:	fd ff 21 a2 	stb	$r17,-3($r1)
ffffffff809107d8:	fe ff 21 a2 	stb	$r17,-2($r1)
ffffffff809107dc:	ff ff 21 a2 	stb	$r17,-1($r1)
ffffffff809107e0:	f7 ff 7f c0 	beq	$r3,ffffffff809107c0 <memset+0x20>
ffffffff809107e4:	01 00 42 f8 	ldi	$r2,1($r2)
ffffffff809107e8:	02 01 22 40 	addl	$r1,$r2,$r2
ffffffff809107ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809107f0:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff809107f4:	ff ff 21 a2 	stb	$r17,-1($r1)
ffffffff809107f8:	03 05 22 40 	cmpeq	$r1,$r2,$r3
ffffffff809107fc:	fc ff 7f c0 	beq	$r3,ffffffff809107f0 <memset+0x50>
ffffffff80910800:	40 07 f0 43 	mov	$r16,$r0
ffffffff80910804:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910808:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091080c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910810 <printnum>:
ffffffff80910810:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910814:	f0 97 bd fb 	ldi	$r29,-26640($r29)
ffffffff80910818:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091081c:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910820:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80910824:	39 ed 61 4a 	zapnot	$r19,0xf,$r25
ffffffff80910828:	58 07 f2 43 	mov	$r18,$r24
ffffffff8091082c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910830:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80910834:	81 05 32 43 	cmpule	$r25,$r18,$r1
ffffffff80910838:	29 20 80 4a 	subw	$r20,0x1,$r9
ffffffff8091083c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80910840:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80910844:	4b 07 f0 43 	mov	$r16,$r11
ffffffff80910848:	4c 07 f1 43 	mov	$r17,$r12
ffffffff8091084c:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80910850:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910854:	4d 07 f5 43 	mov	$r21,$r13
ffffffff80910858:	03 02 fb 06 	call	$r23,($r27),ffffffff80911068 <__remlu>
ffffffff8091085c:	0a 00 fb 43 	addw	$r31,$r27,$r10
ffffffff80910860:	1f 00 20 c4 	bne	$r1,ffffffff809108e0 <printnum+0xd0>
ffffffff80910864:	0a 00 20 cd 	ble	$r9,ffffffff80910890 <printnum+0x80>
ffffffff80910868:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091086c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910870:	29 20 20 49 	subw	$r9,0x1,$r9
ffffffff80910874:	51 07 ec 43 	mov	$r12,$r17
ffffffff80910878:	50 07 ed 43 	mov	$r13,$r16
ffffffff8091087c:	5b 07 eb 43 	mov	$r11,$r27
ffffffff80910880:	00 00 5b 07 	call	ra,($r27),ffffffff80910884 <printnum+0x74>
ffffffff80910884:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910888:	7c 97 bd fb 	ldi	$r29,-26756($r29)
ffffffff8091088c:	f8 ff 3f c5 	bne	$r9,ffffffff80910870 <printnum+0x60>
ffffffff80910890:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80910894:	2a ed 41 49 	zapnot	$r10,0xf,$r10
ffffffff80910898:	51 07 ec 43 	mov	$r12,$r17
ffffffff8091089c:	5b 07 eb 43 	mov	$r11,$r27
ffffffff809108a0:	38 72 21 f8 	ldi	$r1,29240($r1)
ffffffff809108a4:	0a 01 41 41 	addl	$r10,$r1,$r10
ffffffff809108a8:	00 00 0a 82 	ldbu	$r16,0($r10)
ffffffff809108ac:	50 0d f0 43 	sextb	$r16,$r16
ffffffff809108b0:	00 00 5b 07 	call	ra,($r27),ffffffff809108b4 <printnum+0xa4>
ffffffff809108b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809108b8:	4c 97 bd fb 	ldi	$r29,-26804($r29)
ffffffff809108bc:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809108c0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809108c4:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809108c8:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff809108cc:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff809108d0:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff809108d4:	30 00 de fb 	ldi	sp,48(sp)
ffffffff809108d8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809108dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809108e0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108e4:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff809108e8:	54 07 e9 43 	mov	$r9,$r20
ffffffff809108ec:	a8 01 fb 06 	call	$r23,($r27),ffffffff80910f90 <__divlu>
ffffffff809108f0:	52 07 fb 43 	mov	$r27,$r18
ffffffff809108f4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108f8:	c0 80 7b 8f 	ldl	$r27,-32576($r27)
ffffffff809108fc:	c4 ff 5b 07 	call	ra,($r27),ffffffff80910810 <printnum>
ffffffff80910900:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910904:	00 97 bd fb 	ldi	$r29,-26880($r29)
ffffffff80910908:	e1 ff ff 13 	br	ffffffff80910890 <printnum+0x80>
ffffffff8091090c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910910 <vprintfmt>:
ffffffff80910910:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910914:	f0 96 bd fb 	ldi	$r29,-26896($r29)
ffffffff80910918:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff8091091c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80910920:	ff ff 7d fd 	ldih	$r11,-1($r29)
ffffffff80910924:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910928:	49 07 f1 43 	mov	$r17,$r9
ffffffff8091092c:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80910930:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80910934:	4a 07 f0 43 	mov	$r16,$r10
ffffffff80910938:	0c 00 f4 43 	addw	$r31,$r20,$r12
ffffffff8091093c:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80910940:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910944:	4f 07 f2 43 	mov	$r18,fp
ffffffff80910948:	5c 72 6b f9 	ldi	$r11,29276($r11)
ffffffff8091094c:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80910950:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80910954:	40 00 7e ae 	stl	$r19,64(sp)
ffffffff80910958:	48 00 9e ae 	stl	$r20,72(sp)
ffffffff8091095c:	50 00 7e ae 	stl	$r19,80(sp)
ffffffff80910960:	00 00 0f 82 	ldbu	$r16,0(fp)
ffffffff80910964:	01 00 cf f9 	ldi	$r14,1(fp)
ffffffff80910968:	02 a5 04 4a 	cmpeq	$r16,0x25,$r2
ffffffff8091096c:	0b 00 40 c4 	bne	$r2,ffffffff8091099c <vprintfmt+0x8c>
ffffffff80910970:	1b 00 00 c2 	beq	$r16,ffffffff809109e0 <vprintfmt+0xd0>
ffffffff80910974:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910978:	5b 07 ea 43 	mov	$r10,$r27
ffffffff8091097c:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff80910980:	00 00 5b 07 	call	ra,($r27),ffffffff80910984 <vprintfmt+0x74>
ffffffff80910984:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910988:	7c 96 bd fb 	ldi	$r29,-27012($r29)
ffffffff8091098c:	11 00 ee 27 	fillcs	17($r14)
ffffffff80910990:	ff ff 0e 82 	ldbu	$r16,-1($r14)
ffffffff80910994:	02 a5 04 4a 	cmpeq	$r16,0x25,$r2
ffffffff80910998:	f5 ff 5f c0 	beq	$r2,ffffffff80910970 <vprintfmt+0x60>
ffffffff8091099c:	ff ff 9f f8 	ldi	$r4,-1
ffffffff809109a0:	20 00 bf fa 	ldi	$r21,32
ffffffff809109a4:	45 07 ff 43 	clr	$r5
ffffffff809109a8:	48 07 ff 43 	clr	$r8
ffffffff809109ac:	4d 07 e4 43 	mov	$r4,$r13
ffffffff809109b0:	00 00 ce 80 	ldbu	$r6,0($r14)
ffffffff809109b4:	01 00 ee f9 	ldi	fp,1($r14)
ffffffff809109b8:	22 60 c4 48 	subw	$r6,0x23,$r2
ffffffff809109bc:	02 e7 5f 48 	and	$r2,0xff,$r2
ffffffff809109c0:	87 a5 4a 48 	cmpule	$r2,0x55,$r7
ffffffff809109c4:	f2 00 e0 c0 	beq	$r7,ffffffff80910d90 <vprintfmt+0x480>
ffffffff809109c8:	42 01 40 48 	s4addl	$r2,0,$r2
ffffffff809109cc:	02 01 4b 40 	addl	$r2,$r11,$r2
ffffffff809109d0:	00 00 42 88 	ldw	$r2,0($r2)
ffffffff809109d4:	02 01 a2 43 	addl	$r29,$r2,$r2
ffffffff809109d8:	00 00 e2 0f 	jmp	$r31,($r2),ffffffff809109dc <vprintfmt+0xcc>
ffffffff809109dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809109e0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809109e4:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809109e8:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809109ec:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff809109f0:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff809109f4:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff809109f8:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff809109fc:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80910a00:	80 00 de fb 	ldi	sp,128(sp)
ffffffff80910a04:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910a08:	4e 07 ef 43 	mov	fp,$r14
ffffffff80910a0c:	30 00 bf fa 	ldi	$r21,48
ffffffff80910a10:	e7 ff ff 13 	br	ffffffff809109b0 <vprintfmt+0xa0>
ffffffff80910a14:	01 00 4e 80 	ldbu	$r2,1($r14)
ffffffff80910a18:	24 00 c6 48 	subw	$r6,0x30,$r4
ffffffff80910a1c:	4e 07 ef 43 	mov	fp,$r14
ffffffff80910a20:	46 0d e2 43 	sextb	$r2,$r6
ffffffff80910a24:	22 00 c6 48 	subw	$r6,0x30,$r2
ffffffff80910a28:	06 00 e6 43 	addw	$r31,$r6,$r6
ffffffff80910a2c:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff80910a30:	82 25 41 48 	cmpule	$r2,0x9,$r2
ffffffff80910a34:	c8 00 40 c0 	beq	$r2,ffffffff80910d58 <vprintfmt+0x448>
ffffffff80910a38:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a3c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a40:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff80910a44:	00 00 6e 80 	ldbu	$r3,0($r14)
ffffffff80910a48:	42 01 80 48 	s4addl	$r4,0,$r2
ffffffff80910a4c:	04 00 82 40 	addw	$r4,$r2,$r4
ffffffff80910a50:	04 01 84 40 	addl	$r4,$r4,$r4
ffffffff80910a54:	43 0d e3 43 	sextb	$r3,$r3
ffffffff80910a58:	04 00 86 40 	addw	$r4,$r6,$r4
ffffffff80910a5c:	22 00 66 48 	subw	$r3,0x30,$r2
ffffffff80910a60:	24 00 86 48 	subw	$r4,0x30,$r4
ffffffff80910a64:	06 00 e3 43 	addw	$r31,$r3,$r6
ffffffff80910a68:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff80910a6c:	82 25 41 48 	cmpule	$r2,0x9,$r2
ffffffff80910a70:	f3 ff 5f c4 	bne	$r2,ffffffff80910a40 <vprintfmt+0x130>
ffffffff80910a74:	b8 00 e0 13 	br	ffffffff80910d58 <vprintfmt+0x448>
ffffffff80910a78:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff80910a7c:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910a80:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80910a84:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff80910a88:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80910a8c:	00 00 01 8a 	ldw	$r16,0($r1)
ffffffff80910a90:	00 00 5b 07 	call	ra,($r27),ffffffff80910a94 <vprintfmt+0x184>
ffffffff80910a94:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a98:	6c 95 bd fb 	ldi	$r29,-27284($r29)
ffffffff80910a9c:	b0 ff ff 13 	br	ffffffff80910960 <vprintfmt+0x50>
ffffffff80910aa0:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80910aa4:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff80910aa8:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80910aac:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80910ab0:	e0 00 20 c4 	bne	$r1,ffffffff80910e34 <vprintfmt+0x524>
ffffffff80910ab4:	00 00 cc 8d 	ldl	$r14,0($r12)
ffffffff80910ab8:	52 07 ee 43 	mov	$r14,$r18
ffffffff80910abc:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80910ac0:	0a 00 7f fa 	ldi	$r19,10
ffffffff80910ac4:	2e 00 c0 d5 	bge	$r14,ffffffff80910b80 <vprintfmt+0x270>
ffffffff80910ac8:	60 00 be ae 	stl	$r21,96(sp)
ffffffff80910acc:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910ad0:	2d 00 1f fa 	ldi	$r16,45
ffffffff80910ad4:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80910ad8:	00 00 5b 07 	call	ra,($r27),ffffffff80910adc <vprintfmt+0x1cc>
ffffffff80910adc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910ae0:	24 95 bd fb 	ldi	$r29,-27356($r29)
ffffffff80910ae4:	32 01 ee 43 	negl	$r14,$r18
ffffffff80910ae8:	0a 00 7f fa 	ldi	$r19,10
ffffffff80910aec:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80910af0:	23 00 e0 13 	br	ffffffff80910b80 <vprintfmt+0x270>
ffffffff80910af4:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff80910af8:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff80910afc:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80910b00:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff80910b04:	21 01 e2 43 	negl	$r2,$r1
ffffffff80910b08:	21 04 42 44 	selge	$r2,$r2,$r1,$r1
ffffffff80910b0c:	13 00 e1 43 	addw	$r31,$r1,$r19
ffffffff80910b10:	41 c5 60 4a 	cmple	$r19,0x6,$r1
ffffffff80910b14:	af 00 20 c0 	beq	$r1,ffffffff80910dd4 <vprintfmt+0x4c4>
ffffffff80910b18:	ff ff 5d fc 	ldih	$r2,-1($r29)
ffffffff80910b1c:	81 01 60 4a 	s8addl	$r19,0,$r1
ffffffff80910b20:	18 74 42 f8 	ldi	$r2,29720($r2)
ffffffff80910b24:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80910b28:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80910b2c:	a9 00 20 c0 	beq	$r1,ffffffff80910dd4 <vprintfmt+0x4c4>
ffffffff80910b30:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80910b34:	53 07 e1 43 	mov	$r1,$r19
ffffffff80910b38:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910b3c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80910b40:	59 72 52 fa 	ldi	$r18,29273($r18)
ffffffff80910b44:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b48:	88 80 7b 8f 	ldl	$r27,-32632($r27)
ffffffff80910b4c:	f8 00 5b 07 	call	ra,($r27),ffffffff80910f30 <printfmt>
ffffffff80910b50:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910b54:	b0 94 bd fb 	ldi	$r29,-27472($r29)
ffffffff80910b58:	81 ff ff 13 	br	ffffffff80910960 <vprintfmt+0x50>
ffffffff80910b5c:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80910b60:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff80910b64:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80910b68:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80910b6c:	c0 00 20 c4 	bne	$r1,ffffffff80910e70 <vprintfmt+0x560>
ffffffff80910b70:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff80910b74:	08 00 7f fa 	ldi	$r19,8
ffffffff80910b78:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80910b7c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910b80:	54 07 ed 43 	mov	$r13,$r20
ffffffff80910b84:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910b88:	50 07 ea 43 	mov	$r10,$r16
ffffffff80910b8c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b90:	c0 80 7b 8f 	ldl	$r27,-32576($r27)
ffffffff80910b94:	1e ff 5b 07 	call	ra,($r27),ffffffff80910810 <printnum>
ffffffff80910b98:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910b9c:	68 94 bd fb 	ldi	$r29,-27544($r29)
ffffffff80910ba0:	6f ff ff 13 	br	ffffffff80910960 <vprintfmt+0x50>
ffffffff80910ba4:	08 20 00 49 	addw	$r8,0x1,$r8
ffffffff80910ba8:	4e 07 ef 43 	mov	fp,$r14
ffffffff80910bac:	80 ff ff 13 	br	ffffffff809109b0 <vprintfmt+0xa0>
ffffffff80910bb0:	60 00 be ae 	stl	$r21,96(sp)
ffffffff80910bb4:	30 00 1f fa 	ldi	$r16,48
ffffffff80910bb8:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910bbc:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80910bc0:	00 00 5b 07 	call	ra,($r27),ffffffff80910bc4 <vprintfmt+0x2b4>
ffffffff80910bc4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910bc8:	3c 94 bd fb 	ldi	$r29,-27588($r29)
ffffffff80910bcc:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910bd0:	78 00 1f fa 	ldi	$r16,120
ffffffff80910bd4:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80910bd8:	00 00 5b 07 	call	ra,($r27),ffffffff80910bdc <vprintfmt+0x2cc>
ffffffff80910bdc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910be0:	24 94 bd fb 	ldi	$r29,-27612($r29)
ffffffff80910be4:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff80910be8:	10 00 7f fa 	ldi	$r19,16
ffffffff80910bec:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80910bf0:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff80910bf4:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80910bf8:	00 00 41 8e 	ldl	$r18,0($r1)
ffffffff80910bfc:	e0 ff ff 13 	br	ffffffff80910b80 <vprintfmt+0x270>
ffffffff80910c00:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80910c04:	06 a5 a5 4a 	cmpeq	$r21,0x2d,$r6
ffffffff80910c08:	21 05 ed 43 	cmplt	$r31,$r13,$r1
ffffffff80910c0c:	ff ff 7d ff 	ldih	$r27,-1($r29)
ffffffff80910c10:	06 05 c0 48 	cmpeq	$r6,0,$r6
ffffffff80910c14:	49 72 7b fb 	ldi	$r27,29257($r27)
ffffffff80910c18:	01 07 26 40 	and	$r1,$r6,$r1
ffffffff80910c1c:	02 01 6c 40 	addl	$r3,$r12,$r2
ffffffff80910c20:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80910c24:	00 00 42 8c 	ldl	$r2,0($r2)
ffffffff80910c28:	42 00 5b 44 	seleq	$r2,$r27,$r2,$r2
ffffffff80910c2c:	96 00 20 c4 	bne	$r1,ffffffff80910e88 <vprintfmt+0x578>
ffffffff80910c30:	00 00 22 80 	ldbu	$r1,0($r2)
ffffffff80910c34:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80910c38:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff80910c3c:	19 00 00 c2 	beq	$r16,ffffffff80910ca4 <vprintfmt+0x394>
ffffffff80910c40:	0b 00 c2 f9 	ldi	$r14,11($r2)
ffffffff80910c44:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910c48:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910c4c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910c50:	03 00 80 c8 	blt	$r4,ffffffff80910c60 <vprintfmt+0x350>
ffffffff80910c54:	24 20 80 48 	subw	$r4,0x1,$r4
ffffffff80910c58:	01 00 c4 f8 	ldi	$r6,1($r4)
ffffffff80910c5c:	11 00 c0 c0 	beq	$r6,ffffffff80910ca4 <vprintfmt+0x394>
ffffffff80910c60:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910c64:	65 00 a0 c4 	bne	$r5,ffffffff80910dfc <vprintfmt+0x4ec>
ffffffff80910c68:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff80910c6c:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80910c70:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80910c74:	00 00 5b 07 	call	ra,($r27),ffffffff80910c78 <vprintfmt+0x368>
ffffffff80910c78:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910c7c:	88 93 bd fb 	ldi	$r29,-27768($r29)
ffffffff80910c80:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80910c84:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff80910c88:	f6 ff 2e 80 	ldbu	$r1,-10($r14)
ffffffff80910c8c:	00 00 ee 27 	fillcs	0($r14)
ffffffff80910c90:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff80910c94:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff80910c98:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80910c9c:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff80910ca0:	eb ff 1f c6 	bne	$r16,ffffffff80910c50 <vprintfmt+0x340>
ffffffff80910ca4:	2e ff bf cd 	ble	$r13,ffffffff80910960 <vprintfmt+0x50>
ffffffff80910ca8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910cac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910cb0:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff80910cb4:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910cb8:	20 00 1f fa 	ldi	$r16,32
ffffffff80910cbc:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80910cc0:	00 00 5b 07 	call	ra,($r27),ffffffff80910cc4 <vprintfmt+0x3b4>
ffffffff80910cc4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910cc8:	3c 93 bd fb 	ldi	$r29,-27844($r29)
ffffffff80910ccc:	f8 ff bf c5 	bne	$r13,ffffffff80910cb0 <vprintfmt+0x3a0>
ffffffff80910cd0:	23 ff ff 13 	br	ffffffff80910960 <vprintfmt+0x50>
ffffffff80910cd4:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80910cd8:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff80910cdc:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80910ce0:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80910ce4:	5c 00 20 c4 	bne	$r1,ffffffff80910e58 <vprintfmt+0x548>
ffffffff80910ce8:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff80910cec:	0a 00 7f fa 	ldi	$r19,10
ffffffff80910cf0:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80910cf4:	a2 ff ff 13 	br	ffffffff80910b80 <vprintfmt+0x270>
ffffffff80910cf8:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80910cfc:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff80910d00:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80910d04:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80910d08:	4d 00 20 c4 	bne	$r1,ffffffff80910e40 <vprintfmt+0x530>
ffffffff80910d0c:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff80910d10:	10 00 7f fa 	ldi	$r19,16
ffffffff80910d14:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80910d18:	99 ff ff 13 	br	ffffffff80910b80 <vprintfmt+0x270>
ffffffff80910d1c:	4e 07 ef 43 	mov	fp,$r14
ffffffff80910d20:	01 00 bf f8 	ldi	$r5,1
ffffffff80910d24:	22 ff ff 13 	br	ffffffff809109b0 <vprintfmt+0xa0>
ffffffff80910d28:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910d2c:	25 00 1f fa 	ldi	$r16,37
ffffffff80910d30:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80910d34:	00 00 5b 07 	call	ra,($r27),ffffffff80910d38 <vprintfmt+0x428>
ffffffff80910d38:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910d3c:	c8 92 bd fb 	ldi	$r29,-27960($r29)
ffffffff80910d40:	07 ff ff 13 	br	ffffffff80910960 <vprintfmt+0x50>
ffffffff80910d44:	50 00 3e 8c 	ldl	$r1,80(sp)
ffffffff80910d48:	4e 07 ef 43 	mov	fp,$r14
ffffffff80910d4c:	02 01 2c 40 	addl	$r1,$r12,$r2
ffffffff80910d50:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80910d54:	00 00 82 88 	ldw	$r4,0($r2)
ffffffff80910d58:	42 07 ed 43 	mov	$r13,$r2
ffffffff80910d5c:	ff ff 7f f8 	ldi	$r3,-1
ffffffff80910d60:	42 10 a4 45 	sellt	$r13,$r4,$r2,$r2
ffffffff80910d64:	84 10 a3 45 	sellt	$r13,$r3,$r4,$r4
ffffffff80910d68:	4d 07 e2 43 	mov	$r2,$r13
ffffffff80910d6c:	10 ff ff 13 	br	ffffffff809109b0 <vprintfmt+0xa0>
ffffffff80910d70:	4e 07 ef 43 	mov	fp,$r14
ffffffff80910d74:	2d 00 bf fa 	ldi	$r21,45
ffffffff80910d78:	0d ff ff 13 	br	ffffffff809109b0 <vprintfmt+0xa0>
ffffffff80910d7c:	54 07 ed 43 	mov	$r13,$r20
ffffffff80910d80:	4e 07 ef 43 	mov	fp,$r14
ffffffff80910d84:	94 12 80 4e 	sellt	$r20,0,$r20,$r20
ffffffff80910d88:	0d 00 f4 43 	addw	$r31,$r20,$r13
ffffffff80910d8c:	08 ff ff 13 	br	ffffffff809109b0 <vprintfmt+0xa0>
ffffffff80910d90:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910d94:	25 00 1f fa 	ldi	$r16,37
ffffffff80910d98:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80910d9c:	4f 07 ee 43 	mov	$r14,fp
ffffffff80910da0:	00 00 5b 07 	call	ra,($r27),ffffffff80910da4 <vprintfmt+0x494>
ffffffff80910da4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910da8:	5c 92 bd fb 	ldi	$r29,-28068($r29)
ffffffff80910dac:	ff ff 2e 80 	ldbu	$r1,-1($r14)
ffffffff80910db0:	01 a5 24 48 	cmpeq	$r1,0x25,$r1
ffffffff80910db4:	ea fe 3f c4 	bne	$r1,ffffffff80910960 <vprintfmt+0x50>
ffffffff80910db8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910dbc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910dc0:	ff ff ef f9 	ldi	fp,-1(fp)
ffffffff80910dc4:	ff ff 2f 80 	ldbu	$r1,-1(fp)
ffffffff80910dc8:	01 a5 24 48 	cmpeq	$r1,0x25,$r1
ffffffff80910dcc:	fc ff 3f c0 	beq	$r1,ffffffff80910dc0 <vprintfmt+0x4b0>
ffffffff80910dd0:	e3 fe ff 13 	br	ffffffff80910960 <vprintfmt+0x50>
ffffffff80910dd4:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80910dd8:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910ddc:	50 07 ea 43 	mov	$r10,$r16
ffffffff80910de0:	50 72 52 fa 	ldi	$r18,29264($r18)
ffffffff80910de4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910de8:	88 80 7b 8f 	ldl	$r27,-32632($r27)
ffffffff80910dec:	50 00 5b 07 	call	ra,($r27),ffffffff80910f30 <printfmt>
ffffffff80910df0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910df4:	10 92 bd fb 	ldi	$r29,-28144($r29)
ffffffff80910df8:	d9 fe ff 13 	br	ffffffff80910960 <vprintfmt+0x50>
ffffffff80910dfc:	21 00 24 48 	subw	$r1,0x20,$r1
ffffffff80910e00:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80910e04:	81 c5 2b 48 	cmpule	$r1,0x5e,$r1
ffffffff80910e08:	97 ff 3f c4 	bne	$r1,ffffffff80910c68 <vprintfmt+0x358>
ffffffff80910e0c:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff80910e10:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80910e14:	3f 00 1f fa 	ldi	$r16,63
ffffffff80910e18:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80910e1c:	00 00 5b 07 	call	ra,($r27),ffffffff80910e20 <vprintfmt+0x510>
ffffffff80910e20:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910e24:	e0 91 bd fb 	ldi	$r29,-28192($r29)
ffffffff80910e28:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff80910e2c:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80910e30:	95 ff ff 13 	br	ffffffff80910c88 <vprintfmt+0x378>
ffffffff80910e34:	1f ff 1f c5 	bne	$r8,ffffffff80910ab4 <vprintfmt+0x1a4>
ffffffff80910e38:	00 00 cc 89 	ldw	$r14,0($r12)
ffffffff80910e3c:	1e ff ff 13 	br	ffffffff80910ab8 <vprintfmt+0x1a8>
ffffffff80910e40:	b2 ff 1f c5 	bne	$r8,ffffffff80910d0c <vprintfmt+0x3fc>
ffffffff80910e44:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80910e48:	10 00 7f fa 	ldi	$r19,16
ffffffff80910e4c:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80910e50:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff80910e54:	4a ff ff 13 	br	ffffffff80910b80 <vprintfmt+0x270>
ffffffff80910e58:	a3 ff 1f c5 	bne	$r8,ffffffff80910ce8 <vprintfmt+0x3d8>
ffffffff80910e5c:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80910e60:	0a 00 7f fa 	ldi	$r19,10
ffffffff80910e64:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80910e68:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff80910e6c:	44 ff ff 13 	br	ffffffff80910b80 <vprintfmt+0x270>
ffffffff80910e70:	3f ff 1f c5 	bne	$r8,ffffffff80910b70 <vprintfmt+0x260>
ffffffff80910e74:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80910e78:	08 00 7f fa 	ldi	$r19,8
ffffffff80910e7c:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80910e80:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff80910e84:	3e ff ff 13 	br	ffffffff80910b80 <vprintfmt+0x270>
ffffffff80910e88:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910e8c:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910e90:	51 07 e4 43 	mov	$r4,$r17
ffffffff80910e94:	50 07 e2 43 	mov	$r2,$r16
ffffffff80910e98:	58 00 5e ac 	stl	$r2,88(sp)
ffffffff80910e9c:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff80910ea0:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80910ea4:	60 00 be ae 	stl	$r21,96(sp)
ffffffff80910ea8:	25 fe 5b 07 	call	ra,($r27),ffffffff80910740 <strnlen>
ffffffff80910eac:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910eb0:	2d 00 a0 41 	subw	$r13,$r0,$r13
ffffffff80910eb4:	54 91 bd fb 	ldi	$r29,-28332($r29)
ffffffff80910eb8:	58 00 5e 8c 	ldl	$r2,88(sp)
ffffffff80910ebc:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff80910ec0:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80910ec4:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80910ec8:	10 00 a0 cd 	ble	$r13,ffffffff80910f0c <vprintfmt+0x5fc>
ffffffff80910ecc:	0e 00 f5 43 	addw	$r31,$r21,$r14
ffffffff80910ed0:	58 00 5e ac 	stl	$r2,88(sp)
ffffffff80910ed4:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff80910ed8:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910edc:	50 07 ee 43 	mov	$r14,$r16
ffffffff80910ee0:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80910ee4:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80910ee8:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff80910eec:	00 00 5b 07 	call	ra,($r27),ffffffff80910ef0 <vprintfmt+0x5e0>
ffffffff80910ef0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910ef4:	10 91 bd fb 	ldi	$r29,-28400($r29)
ffffffff80910ef8:	58 00 5e 8c 	ldl	$r2,88(sp)
ffffffff80910efc:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff80910f00:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80910f04:	f2 ff bf c5 	bne	$r13,ffffffff80910ed0 <vprintfmt+0x5c0>
ffffffff80910f08:	4d 07 ff 43 	clr	$r13
ffffffff80910f0c:	00 00 22 80 	ldbu	$r1,0($r2)
ffffffff80910f10:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80910f14:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff80910f18:	91 fe 1f c2 	beq	$r16,ffffffff80910960 <vprintfmt+0x50>
ffffffff80910f1c:	0b 00 c2 f9 	ldi	$r14,11($r2)
ffffffff80910f20:	4b ff ff 13 	br	ffffffff80910c50 <vprintfmt+0x340>
ffffffff80910f24:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910f28:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910f2c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910f30 <printfmt>:
ffffffff80910f30:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910f34:	d0 90 bd fb 	ldi	$r29,-28464($r29)
ffffffff80910f38:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff80910f3c:	18 00 5f f8 	ldi	$r2,24
ffffffff80910f40:	18 00 5e a8 	stw	$r2,24(sp)
ffffffff80910f44:	70 00 9e ae 	stl	$r20,112(sp)
ffffffff80910f48:	50 00 3e f8 	ldi	$r1,80(sp)
ffffffff80910f4c:	38 00 7e be 	fstd	$f19,56(sp)
ffffffff80910f50:	18 00 9e 8e 	ldl	$r20,24(sp)
ffffffff80910f54:	68 00 7e ae 	stl	$r19,104(sp)
ffffffff80910f58:	53 07 e1 43 	mov	$r1,$r19
ffffffff80910f5c:	40 00 9e be 	fstd	$f20,64(sp)
ffffffff80910f60:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910f64:	48 00 be be 	fstd	$f21,72(sp)
ffffffff80910f68:	78 00 be ae 	stl	$r21,120(sp)
ffffffff80910f6c:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff80910f70:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910f74:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80910f78:	65 fe 5b 07 	call	ra,($r27),ffffffff80910910 <vprintfmt>
ffffffff80910f7c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910f80:	84 90 bd fb 	ldi	$r29,-28540($r29)
ffffffff80910f84:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910f88:	80 00 de fb 	ldi	sp,128(sp)
ffffffff80910f8c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910f90 <__divlu>:
ffffffff80910f90:	3e 01 c6 4b 	subl	sp,0x30,sp
ffffffff80910f94:	00 00 3e ac 	stl	$r1,0(sp)
ffffffff80910f98:	41 07 39 43 	or	$r25,$r25,$r1
ffffffff80910f9c:	08 00 5e ac 	stl	$r2,8(sp)
ffffffff80910fa0:	42 07 18 43 	or	$r24,$r24,$r2
ffffffff80910fa4:	10 00 1e ac 	stl	$r0,16(sp)
ffffffff80910fa8:	5b 07 ff 43 	clr	$r27
ffffffff80910fac:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910fb0:	40 27 e0 4b 	mov	0x1,$r0
ffffffff80910fb4:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910fb8:	0d 00 20 c0 	beq	$r1,ffffffff80910ff0 <__divlu+0x60>
ffffffff80910fbc:	7c 05 22 40 	cmpult	$r1,$r2,$r28
ffffffff80910fc0:	03 00 20 c8 	blt	$r1,ffffffff80910fd0 <__divlu+0x40>
ffffffff80910fc4:	01 01 21 40 	addl	$r1,$r1,$r1
ffffffff80910fc8:	00 01 00 40 	addl	$r0,$r0,$r0
ffffffff80910fcc:	fb ff 9f c7 	bne	$r28,ffffffff80910fbc <__divlu+0x2c>
ffffffff80910fd0:	04 01 60 43 	addl	$r27,$r0,$r4
ffffffff80910fd4:	20 29 00 48 	srl	$r0,0x1,$r0
ffffffff80910fd8:	9c 05 22 40 	cmpule	$r1,$r2,$r28
ffffffff80910fdc:	23 01 41 40 	subl	$r2,$r1,$r3
ffffffff80910fe0:	7b 17 84 47 	selne	$r28,$r4,$r27,$r27
ffffffff80910fe4:	21 29 20 48 	srl	$r1,0x1,$r1
ffffffff80910fe8:	42 14 83 47 	selne	$r28,$r3,$r2,$r2
ffffffff80910fec:	f8 ff 1f c4 	bne	$r0,ffffffff80910fd0 <__divlu+0x40>
ffffffff80910ff0:	00 00 3e 8c 	ldl	$r1,0(sp)
ffffffff80910ff4:	08 00 5e 8c 	ldl	$r2,8(sp)
ffffffff80910ff8:	10 00 1e 8c 	ldl	$r0,16(sp)
ffffffff80910ffc:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80911000:	20 00 9e 8c 	ldl	$r4,32(sp)
ffffffff80911004:	1e 01 c6 4b 	addl	sp,0x30,sp
ffffffff80911008:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff8091100c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911010 <__divl>:
ffffffff80911010:	3e 01 c6 4b 	subl	sp,0x30,sp
ffffffff80911014:	5c 07 19 43 	or	$r24,$r25,$r28
ffffffff80911018:	de ff 9f d7 	bge	$r28,ffffffff80910f94 <__divlu+0x4>
ffffffff8091101c:	00 00 1e af 	stl	$r24,0(sp)
ffffffff80911020:	3c 01 f8 43 	negl	$r24,$r28
ffffffff80911024:	08 00 3e af 	stl	$r25,8(sp)
ffffffff80911028:	18 13 1c 47 	sellt	$r24,$r28,$r24,$r24
ffffffff8091102c:	10 00 fe ae 	stl	$r23,16(sp)
ffffffff80911030:	3c 01 f9 43 	negl	$r25,$r28
ffffffff80911034:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80911038:	39 13 3c 47 	sellt	$r25,$r28,$r25,$r25
ffffffff8091103c:	d4 ff ff 16 	bsr	$r23,ffffffff80910f90 <__divlu>
ffffffff80911040:	00 00 1e 8f 	ldl	$r24,0(sp)
ffffffff80911044:	08 00 3e 8f 	ldl	$r25,8(sp)
ffffffff80911048:	9c 07 19 43 	xor	$r24,$r25,$r28
ffffffff8091104c:	23 01 fb 43 	negl	$r27,$r3
ffffffff80911050:	10 00 fe 8e 	ldl	$r23,16(sp)
ffffffff80911054:	7b 13 83 47 	sellt	$r28,$r3,$r27,$r27
ffffffff80911058:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff8091105c:	1e 01 c6 4b 	addl	sp,0x30,sp
ffffffff80911060:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80911064:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911068 <__remlu>:
ffffffff80911068:	3e 01 c4 4b 	subl	sp,0x20,sp
ffffffff8091106c:	00 00 3e ac 	stl	$r1,0(sp)
ffffffff80911070:	41 07 39 43 	or	$r25,$r25,$r1
ffffffff80911074:	08 00 5e ac 	stl	$r2,8(sp)
ffffffff80911078:	5b 07 18 43 	or	$r24,$r24,$r27
ffffffff8091107c:	10 00 1e ac 	stl	$r0,16(sp)
ffffffff80911080:	42 07 ff 43 	clr	$r2
ffffffff80911084:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80911088:	40 27 e0 4b 	mov	0x1,$r0
ffffffff8091108c:	0b 00 20 c0 	beq	$r1,ffffffff809110bc <__remlu+0x54>
ffffffff80911090:	7c 05 3b 40 	cmpult	$r1,$r27,$r28
ffffffff80911094:	03 00 20 c8 	blt	$r1,ffffffff809110a4 <__remlu+0x3c>
ffffffff80911098:	01 01 21 40 	addl	$r1,$r1,$r1
ffffffff8091109c:	00 01 00 40 	addl	$r0,$r0,$r0
ffffffff809110a0:	fb ff 9f c7 	bne	$r28,ffffffff80911090 <__remlu+0x28>
ffffffff809110a4:	20 29 00 48 	srl	$r0,0x1,$r0
ffffffff809110a8:	9c 05 3b 40 	cmpule	$r1,$r27,$r28
ffffffff809110ac:	23 01 61 43 	subl	$r27,$r1,$r3
ffffffff809110b0:	21 29 20 48 	srl	$r1,0x1,$r1
ffffffff809110b4:	7b 17 83 47 	selne	$r28,$r3,$r27,$r27
ffffffff809110b8:	fa ff 1f c4 	bne	$r0,ffffffff809110a4 <__remlu+0x3c>
ffffffff809110bc:	00 00 3e 8c 	ldl	$r1,0(sp)
ffffffff809110c0:	08 00 5e 8c 	ldl	$r2,8(sp)
ffffffff809110c4:	10 00 1e 8c 	ldl	$r0,16(sp)
ffffffff809110c8:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff809110cc:	1e 01 c4 4b 	addl	sp,0x20,sp
ffffffff809110d0:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff809110d4:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809110d8 <__reml>:
ffffffff809110d8:	3e 01 c4 4b 	subl	sp,0x20,sp
ffffffff809110dc:	5c 07 19 43 	or	$r24,$r25,$r28
ffffffff809110e0:	e2 ff 9f d7 	bge	$r28,ffffffff8091106c <__remlu+0x4>
ffffffff809110e4:	00 00 1e af 	stl	$r24,0(sp)
ffffffff809110e8:	3c 01 f8 43 	negl	$r24,$r28
ffffffff809110ec:	08 00 3e af 	stl	$r25,8(sp)
ffffffff809110f0:	18 13 1c 47 	sellt	$r24,$r28,$r24,$r24
ffffffff809110f4:	10 00 fe ae 	stl	$r23,16(sp)
ffffffff809110f8:	3c 01 f9 43 	negl	$r25,$r28
ffffffff809110fc:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80911100:	39 13 3c 47 	sellt	$r25,$r28,$r25,$r25
ffffffff80911104:	d8 ff ff 16 	bsr	$r23,ffffffff80911068 <__remlu>
ffffffff80911108:	00 00 1e 8f 	ldl	$r24,0(sp)
ffffffff8091110c:	08 00 3e 8f 	ldl	$r25,8(sp)
ffffffff80911110:	5c 07 18 43 	or	$r24,$r24,$r28
ffffffff80911114:	23 01 fb 43 	negl	$r27,$r3
ffffffff80911118:	10 00 fe 8e 	ldl	$r23,16(sp)
ffffffff8091111c:	7b 13 83 47 	sellt	$r28,$r3,$r27,$r27
ffffffff80911120:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80911124:	1e 01 c4 4b 	addl	sp,0x20,sp
ffffffff80911128:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff8091112c:	00 00 fe ff 	ldih	$r31,0(sp)
