
test:     file format elf64-x86-64


Disassembly of section .text:

00000000004000b0 <.text>:
  4000b0:	5f                   	pop    %rdi
  4000b1:	48 89 e6             	mov    %rsp,%rsi
  4000b4:	e8 c7 04 00 00       	callq  0x400580
  4000b9:	48 89 c7             	mov    %rax,%rdi
  4000bc:	48 c7 c0 3c 00 00 00 	mov    $0x3c,%rax
  4000c3:	0f 05                	syscall
  4000c5:	00 00                	add    %al,(%rax)
  4000c7:	00 55 48             	add    %dl,0x48(%rbp)
  4000ca:	89 e5                	mov    %esp,%ebp
  4000cc:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  4000d3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4000d7:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4000db:	b8 01 00 00 00       	mov    $0x1,%eax
  4000e0:	89 45 ec             	mov    %eax,-0x14(%rbp)
  4000e3:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4000e6:	89 45 e8             	mov    %eax,-0x18(%rbp)
  4000e9:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4000ec:	83 f8 09             	cmp    $0x9,%eax
  4000ef:	0f 8e 19 00 00 00    	jle    0x40010e
  4000f5:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4000f8:	83 c0 01             	add    $0x1,%eax
  4000fb:	89 45 ec             	mov    %eax,-0x14(%rbp)
  4000fe:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400101:	b9 0a 00 00 00       	mov    $0xa,%ecx
  400106:	99                   	cltd
  400107:	f7 f9                	idiv   %ecx
  400109:	89 45 e8             	mov    %eax,-0x18(%rbp)
  40010c:	eb db                	jmp    0x4000e9
  40010e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400112:	48 83 f8 00          	cmp    $0x0,%rax
  400116:	0f 84 4c 00 00 00    	je     0x400168
  40011c:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40011f:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400123:	48 01 c1             	add    %rax,%rcx
  400126:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
  40012a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40012e:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
  400132:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400136:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40013a:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40013d:	b9 0a 00 00 00       	mov    $0xa,%ecx
  400142:	99                   	cltd
  400143:	f7 f9                	idiv   %ecx
  400145:	83 c2 30             	add    $0x30,%edx
  400148:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40014c:	88 10                	mov    %dl,(%rax)
  40014e:	8b 45 f0             	mov    -0x10(%rbp),%eax
  400151:	b9 0a 00 00 00       	mov    $0xa,%ecx
  400156:	99                   	cltd
  400157:	f7 f9                	idiv   %ecx
  400159:	89 45 f0             	mov    %eax,-0x10(%rbp)
  40015c:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40015f:	83 f8 00             	cmp    $0x0,%eax
  400162:	0f 85 c2 ff ff ff    	jne    0x40012a
  400168:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40016b:	c9                   	leaveq
  40016c:	c3                   	retq
  40016d:	55                   	push   %rbp
  40016e:	48 89 e5             	mov    %rsp,%rbp
  400171:	48 81 ec 10 00 00 00 	sub    $0x10,%rsp
  400178:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40017c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400180:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400184:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400188:	0f be 08             	movsbl (%rax),%ecx
  40018b:	83 f9 00             	cmp    $0x0,%ecx
  40018e:	0f 84 05 00 00 00    	je     0x400199
  400194:	e9 1d 00 00 00       	jmpq   0x4001b6
  400199:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40019d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4001a1:	48 29 c8             	sub    %rcx,%rax
  4001a4:	48 b9 ff ff ff ff 00 	movabs $0xffffffff,%rcx
  4001ab:	00 00 00
  4001ae:	48 21 c8             	and    %rcx,%rax
  4001b1:	e9 cb 00 00 00       	jmpq   0x400281
  4001b6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4001ba:	48 83 c0 01          	add    $0x1,%rax
  4001be:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4001c2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4001c6:	0f be 08             	movsbl (%rax),%ecx
  4001c9:	83 f9 00             	cmp    $0x0,%ecx
  4001cc:	0f 84 05 00 00 00    	je     0x4001d7
  4001d2:	e9 1d 00 00 00       	jmpq   0x4001f4
  4001d7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4001db:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4001df:	48 29 c8             	sub    %rcx,%rax
  4001e2:	48 b9 ff ff ff ff 00 	movabs $0xffffffff,%rcx
  4001e9:	00 00 00
  4001ec:	48 21 c8             	and    %rcx,%rax
  4001ef:	e9 8d 00 00 00       	jmpq   0x400281
  4001f4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4001f8:	48 83 c0 01          	add    $0x1,%rax
  4001fc:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400200:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400204:	0f be 08             	movsbl (%rax),%ecx
  400207:	83 f9 00             	cmp    $0x0,%ecx
  40020a:	0f 84 05 00 00 00    	je     0x400215
  400210:	e9 1d 00 00 00       	jmpq   0x400232
  400215:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400219:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  40021d:	48 29 c8             	sub    %rcx,%rax
  400220:	48 b9 ff ff ff ff 00 	movabs $0xffffffff,%rcx
  400227:	00 00 00
  40022a:	48 21 c8             	and    %rcx,%rax
  40022d:	e9 4f 00 00 00       	jmpq   0x400281
  400232:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400236:	48 83 c0 01          	add    $0x1,%rax
  40023a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40023e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400242:	0f be 08             	movsbl (%rax),%ecx
  400245:	83 f9 00             	cmp    $0x0,%ecx
  400248:	0f 84 05 00 00 00    	je     0x400253
  40024e:	e9 1d 00 00 00       	jmpq   0x400270
  400253:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400257:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  40025b:	48 29 c8             	sub    %rcx,%rax
  40025e:	48 b9 ff ff ff ff 00 	movabs $0xffffffff,%rcx
  400265:	00 00 00
  400268:	48 21 c8             	and    %rcx,%rax
  40026b:	e9 11 00 00 00       	jmpq   0x400281
  400270:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400274:	48 83 c0 01          	add    $0x1,%rax
  400278:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40027c:	e9 03 ff ff ff       	jmpq   0x400184
  400281:	c9                   	leaveq
  400282:	c3                   	retq
  400283:	55                   	push   %rbp
  400284:	48 89 e5             	mov    %rsp,%rbp
  400287:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  40028e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400292:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  400296:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  40029a:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40029d:	48 89 c6             	mov    %rax,%rsi
  4002a0:	48 8d 45 84          	lea    -0x7c(%rbp),%rax
  4002a4:	48 89 c7             	mov    %rax,%rdi
  4002a7:	e8 1c fe ff ff       	callq  0x4000c8
  4002ac:	89 85 7c ff ff ff    	mov    %eax,-0x84(%rbp)
  4002b2:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
  4002b8:	49 89 c2             	mov    %rax,%r10
  4002bb:	48 8d 45 84          	lea    -0x7c(%rbp),%rax
  4002bf:	48 89 c6             	mov    %rax,%rsi
  4002c2:	b8 01 00 00 00       	mov    $0x1,%eax
  4002c7:	48 89 c7             	mov    %rax,%rdi
  4002ca:	4c 89 d2             	mov    %r10,%rdx
  4002cd:	e8 fe 02 00 00       	callq  0x4005d0
  4002d2:	b8 01 00 00 00       	mov    $0x1,%eax
  4002d7:	49 89 c2             	mov    %rax,%r10
  4002da:	48 8d 05 f7 02 20 00 	lea    0x2002f7(%rip),%rax        # 0x6005d8
  4002e1:	48 89 c6             	mov    %rax,%rsi
  4002e4:	b8 01 00 00 00       	mov    $0x1,%eax
  4002e9:	48 89 c7             	mov    %rax,%rdi
  4002ec:	4c 89 d2             	mov    %r10,%rdx
  4002ef:	e8 dc 02 00 00       	callq  0x4005d0
  4002f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4002f9:	89 45 80             	mov    %eax,-0x80(%rbp)
  4002fc:	8b 45 80             	mov    -0x80(%rbp),%eax
  4002ff:	8b 4d f8             	mov    -0x8(%rbp),%ecx
  400302:	39 c8                	cmp    %ecx,%eax
  400304:	0f 8d 22 01 00 00    	jge    0x40042c
  40030a:	e9 0b 00 00 00       	jmpq   0x40031a
  40030f:	8b 45 80             	mov    -0x80(%rbp),%eax
  400312:	83 c0 01             	add    $0x1,%eax
  400315:	89 45 80             	mov    %eax,-0x80(%rbp)
  400318:	eb e2                	jmp    0x4002fc
  40031a:	8b 45 80             	mov    -0x80(%rbp),%eax
  40031d:	48 89 c6             	mov    %rax,%rsi
  400320:	48 8d 45 84          	lea    -0x7c(%rbp),%rax
  400324:	48 89 c7             	mov    %rax,%rdi
  400327:	e8 9c fd ff ff       	callq  0x4000c8
  40032c:	89 85 7c ff ff ff    	mov    %eax,-0x84(%rbp)
  400332:	b8 05 00 00 00       	mov    $0x5,%eax
  400337:	49 89 c2             	mov    %rax,%r10
  40033a:	48 8d 05 99 02 20 00 	lea    0x200299(%rip),%rax        # 0x6005da
  400341:	48 89 c6             	mov    %rax,%rsi
  400344:	b8 01 00 00 00       	mov    $0x1,%eax
  400349:	48 89 c7             	mov    %rax,%rdi
  40034c:	4c 89 d2             	mov    %r10,%rdx
  40034f:	e8 7c 02 00 00       	callq  0x4005d0
  400354:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
  40035a:	49 89 c2             	mov    %rax,%r10
  40035d:	48 8d 45 84          	lea    -0x7c(%rbp),%rax
  400361:	48 89 c6             	mov    %rax,%rsi
  400364:	b8 01 00 00 00       	mov    $0x1,%eax
  400369:	48 89 c7             	mov    %rax,%rdi
  40036c:	4c 89 d2             	mov    %r10,%rdx
  40036f:	e8 5c 02 00 00       	callq  0x4005d0
  400374:	b8 05 00 00 00       	mov    $0x5,%eax
  400379:	49 89 c2             	mov    %rax,%r10
  40037c:	48 8d 05 5d 02 20 00 	lea    0x20025d(%rip),%rax        # 0x6005e0
  400383:	48 89 c6             	mov    %rax,%rsi
  400386:	b8 01 00 00 00       	mov    $0x1,%eax
  40038b:	48 89 c7             	mov    %rax,%rdi
  40038e:	4c 89 d2             	mov    %r10,%rdx
  400391:	e8 3a 02 00 00       	callq  0x4005d0
  400396:	8b 45 80             	mov    -0x80(%rbp),%eax
  400399:	48 63 c0             	movslq %eax,%rax
  40039c:	48 c1 e0 03          	shl    $0x3,%rax
  4003a0:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  4003a4:	48 01 c1             	add    %rax,%rcx
  4003a7:	8b 45 80             	mov    -0x80(%rbp),%eax
  4003aa:	48 63 c0             	movslq %eax,%rax
  4003ad:	48 c1 e0 03          	shl    $0x3,%rax
  4003b1:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4003b5:	48 01 c2             	add    %rax,%rdx
  4003b8:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
  4003bf:	48 89 95 68 ff ff ff 	mov    %rdx,-0x98(%rbp)
  4003c6:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  4003cd:	48 8b 00             	mov    (%rax),%rax
  4003d0:	48 89 c7             	mov    %rax,%rdi
  4003d3:	e8 95 fd ff ff       	callq  0x40016d
  4003d8:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  4003df:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  4003e5:	49 89 c2             	mov    %rax,%r10
  4003e8:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  4003ef:	48 8b 00             	mov    (%rax),%rax
  4003f2:	48 89 c6             	mov    %rax,%rsi
  4003f5:	b8 01 00 00 00       	mov    $0x1,%eax
  4003fa:	48 89 c7             	mov    %rax,%rdi
  4003fd:	4c 89 d2             	mov    %r10,%rdx
  400400:	e8 cb 01 00 00       	callq  0x4005d0
  400405:	b8 02 00 00 00       	mov    $0x2,%eax
  40040a:	49 89 c2             	mov    %rax,%r10
  40040d:	48 8d 05 d2 01 20 00 	lea    0x2001d2(%rip),%rax        # 0x6005e6
  400414:	48 89 c6             	mov    %rax,%rsi
  400417:	b8 01 00 00 00       	mov    $0x1,%eax
  40041c:	48 89 c7             	mov    %rax,%rdi
  40041f:	4c 89 d2             	mov    %r10,%rdx
  400422:	e8 a9 01 00 00       	callq  0x4005d0
  400427:	e9 e3 fe ff ff       	jmpq   0x40030f
  40042c:	b8 00 00 00 00       	mov    $0x0,%eax
  400431:	89 45 80             	mov    %eax,-0x80(%rbp)
  400434:	8b 45 80             	mov    -0x80(%rbp),%eax
  400437:	48 63 c0             	movslq %eax,%rax
  40043a:	48 c1 e0 03          	shl    $0x3,%rax
  40043e:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  400442:	48 01 c1             	add    %rax,%rcx
  400445:	48 8b 01             	mov    (%rcx),%rax
  400448:	48 83 f8 00          	cmp    $0x0,%rax
  40044c:	0f 84 22 01 00 00    	je     0x400574
  400452:	e9 0b 00 00 00       	jmpq   0x400462
  400457:	8b 45 80             	mov    -0x80(%rbp),%eax
  40045a:	83 c0 01             	add    $0x1,%eax
  40045d:	89 45 80             	mov    %eax,-0x80(%rbp)
  400460:	eb d2                	jmp    0x400434
  400462:	8b 45 80             	mov    -0x80(%rbp),%eax
  400465:	48 89 c6             	mov    %rax,%rsi
  400468:	48 8d 45 84          	lea    -0x7c(%rbp),%rax
  40046c:	48 89 c7             	mov    %rax,%rdi
  40046f:	e8 54 fc ff ff       	callq  0x4000c8
  400474:	89 85 7c ff ff ff    	mov    %eax,-0x84(%rbp)
  40047a:	b8 05 00 00 00       	mov    $0x5,%eax
  40047f:	49 89 c2             	mov    %rax,%r10
  400482:	48 8d 05 60 01 20 00 	lea    0x200160(%rip),%rax        # 0x6005e9
  400489:	48 89 c6             	mov    %rax,%rsi
  40048c:	b8 01 00 00 00       	mov    $0x1,%eax
  400491:	48 89 c7             	mov    %rax,%rdi
  400494:	4c 89 d2             	mov    %r10,%rdx
  400497:	e8 34 01 00 00       	callq  0x4005d0
  40049c:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
  4004a2:	49 89 c2             	mov    %rax,%r10
  4004a5:	48 8d 45 84          	lea    -0x7c(%rbp),%rax
  4004a9:	48 89 c6             	mov    %rax,%rsi
  4004ac:	b8 01 00 00 00       	mov    $0x1,%eax
  4004b1:	48 89 c7             	mov    %rax,%rdi
  4004b4:	4c 89 d2             	mov    %r10,%rdx
  4004b7:	e8 14 01 00 00       	callq  0x4005d0
  4004bc:	b8 05 00 00 00       	mov    $0x5,%eax
  4004c1:	49 89 c2             	mov    %rax,%r10
  4004c4:	48 8d 05 24 01 20 00 	lea    0x200124(%rip),%rax        # 0x6005ef
  4004cb:	48 89 c6             	mov    %rax,%rsi
  4004ce:	b8 01 00 00 00       	mov    $0x1,%eax
  4004d3:	48 89 c7             	mov    %rax,%rdi
  4004d6:	4c 89 d2             	mov    %r10,%rdx
  4004d9:	e8 f2 00 00 00       	callq  0x4005d0
  4004de:	8b 45 80             	mov    -0x80(%rbp),%eax
  4004e1:	48 63 c0             	movslq %eax,%rax
  4004e4:	48 c1 e0 03          	shl    $0x3,%rax
  4004e8:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  4004ec:	48 01 c1             	add    %rax,%rcx
  4004ef:	8b 45 80             	mov    -0x80(%rbp),%eax
  4004f2:	48 63 c0             	movslq %eax,%rax
  4004f5:	48 c1 e0 03          	shl    $0x3,%rax
  4004f9:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4004fd:	48 01 c2             	add    %rax,%rdx
  400500:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
  400507:	48 89 95 68 ff ff ff 	mov    %rdx,-0x98(%rbp)
  40050e:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  400515:	48 8b 00             	mov    (%rax),%rax
  400518:	48 89 c7             	mov    %rax,%rdi
  40051b:	e8 4d fc ff ff       	callq  0x40016d
  400520:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  400527:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  40052d:	49 89 c2             	mov    %rax,%r10
  400530:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  400537:	48 8b 00             	mov    (%rax),%rax
  40053a:	48 89 c6             	mov    %rax,%rsi
  40053d:	b8 01 00 00 00       	mov    $0x1,%eax
  400542:	48 89 c7             	mov    %rax,%rdi
  400545:	4c 89 d2             	mov    %r10,%rdx
  400548:	e8 83 00 00 00       	callq  0x4005d0
  40054d:	b8 02 00 00 00       	mov    $0x2,%eax
  400552:	49 89 c2             	mov    %rax,%r10
  400555:	48 8d 05 99 00 20 00 	lea    0x200099(%rip),%rax        # 0x6005f5
  40055c:	48 89 c6             	mov    %rax,%rsi
  40055f:	b8 01 00 00 00       	mov    $0x1,%eax
  400564:	48 89 c7             	mov    %rax,%rdi
  400567:	4c 89 d2             	mov    %r10,%rdx
  40056a:	e8 61 00 00 00       	callq  0x4005d0
  40056f:	e9 e3 fe ff ff       	jmpq   0x400457
  400574:	b8 00 00 00 00       	mov    $0x0,%eax
  400579:	c9                   	leaveq
  40057a:	c3                   	retq
  40057b:	00 00                	add    %al,(%rax)
  40057d:	00 00                	add    %al,(%rax)
  40057f:	00 55 48             	add    %dl,0x48(%rbp)
  400582:	89 e5                	mov    %esp,%ebp
  400584:	48 81 ec 20 00 00 00 	sub    $0x20,%rsp
  40058b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40058f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  400593:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400596:	48 63 c0             	movslq %eax,%rax
  400599:	48 c1 e0 03          	shl    $0x3,%rax
  40059d:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  4005a1:	48 01 c1             	add    %rax,%rcx
  4005a4:	48 83 c1 08          	add    $0x8,%rcx
  4005a8:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  4005ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4005b0:	49 89 c2             	mov    %rax,%r10
  4005b3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4005b7:	48 89 c6             	mov    %rax,%rsi
  4005ba:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4005bd:	48 89 c7             	mov    %rax,%rdi
  4005c0:	4c 89 d2             	mov    %r10,%rdx
  4005c3:	e8 bb fc ff ff       	callq  0x400283
  4005c8:	c9                   	leaveq
  4005c9:	c3                   	retq
  4005ca:	00 00                	add    %al,(%rax)
  4005cc:	00 00                	add    %al,(%rax)
  4005ce:	00 00                	add    %al,(%rax)
  4005d0:	b8 01 00 00 00       	mov    $0x1,%eax
  4005d5:	0f 05                	syscall
  4005d7:	c3                   	retq
