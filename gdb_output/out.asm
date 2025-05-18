# set disassembly-flavor intel
# disassemble main 

   0x00000000000010e0 <+0>:	endbr64
   0x00000000000010e4 <+4>:	sub    rsp,0x8
   0x00000000000010e8 <+8>:	xor    edi,edi
   0x00000000000010ea <+10>:	call   0x10b0 <time@plt>
   0x00000000000010ef <+15>:	mov    edi,eax
   0x00000000000010f1 <+17>:	call   0x10a0 <srand@plt>
   0x00000000000010f6 <+22>:	mov    edi,0xc8
   0x00000000000010fb <+27>:	call   0x12d0 <simulate>
   0x0000000000001100 <+32>:	xor    eax,eax
   0x0000000000001102 <+34>:	add    rsp,0x8
   0x0000000000001106 <+38>:	ret

# disassemble simulate 
Dump of assembler code for function simulate:
  
   0x00000000000012d0 <+0>:	endbr64
   0x00000000000012d4 <+4>:	push   rbp
   0x00000000000012d5 <+5>:	mov    rbp,rsp
   0x00000000000012d8 <+8>:	push   r15
   0x00000000000012da <+10>:	push   r14
   0x00000000000012dc <+12>:	push   r13
   0x00000000000012de <+14>:	push   r12
   0x00000000000012e0 <+16>:	push   rbx
   0x00000000000012e1 <+17>:	mov    rbx,rdi
   0x00000000000012e4 <+20>:	sub    rsp,0x438
   0x00000000000012eb <+27>:	mov    rax,QWORD PTR fs:0x28
   0x00000000000012f4 <+36>:	mov    QWORD PTR [rbp-0x38],rax
   0x00000000000012f8 <+40>:	mov    rax,rdi
   0x00000000000012fb <+43>:	mov    rdx,rsp
   0x00000000000012fe <+46>:	shl    rax,0x4
   0x0000000000001302 <+50>:	mov    rcx,rax
   0x0000000000001305 <+53>:	and    rcx,0xfffffffffffff000
   0x000000000000130c <+60>:	sub    rdx,rcx
   0x000000000000130f <+63>:	cmp    rsp,rdx
   0x0000000000001312 <+66>:	je     0x1329 <simulate+89>
   0x0000000000001314 <+68>:	sub    rsp,0x1000
   0x000000000000131b <+75>:	or     QWORD PTR [rsp+0xff8],0x0
   0x0000000000001324 <+84>:	cmp    rsp,rdx
   0x0000000000001327 <+87>:	jne    0x1314 <simulate+68>
   0x0000000000001329 <+89>:	and    eax,0xfff
   0x000000000000132e <+94>:	sub    rsp,rax
   0x0000000000001331 <+97>:	test   rax,rax
   0x0000000000001334 <+100>:	jne    0x15f0 <simulate+800>
   0x000000000000133a <+106>:	mov    r14,rsp
   0x000000000000133d <+109>:	test   rbx,rbx
   0x0000000000001340 <+112>:	je     0x1393 <simulate+195>
   0x0000000000001342 <+114>:	mov    r13,QWORD PTR [rip+0x2ccf]        # 0x4018 <id.0>
   0x0000000000001349 <+121>:	mov    r15,r14
   0x000000000000134c <+124>:	lea    r12,[rbx+r13*1]
   0x0000000000001350 <+128>:	call   0x10d0 <rand@plt>
   0x0000000000001355 <+133>:	mov    rdx,r13
   0x0000000000001358 <+136>:	add    r13,0x1
   0x000000000000135c <+140>:	add    r15,0x10
   0x0000000000001360 <+144>:	mov    QWORD PTR [r15-0x10],rdx
   0x0000000000001364 <+148>:	movsxd rdx,eax
   0x0000000000001367 <+151>:	mov    ecx,eax
   0x0000000000001369 <+153>:	imul   rdx,rdx,0x68db8bad
   0x0000000000001370 <+160>:	sar    ecx,0x1f
   0x0000000000001373 <+163>:	mov    QWORD PTR [rip+0x2c9e],r13        # 0x4018 <id.0>
   0x000000000000137a <+170>:	sar    rdx,0x2a
   0x000000000000137e <+174>:	sub    edx,ecx
   0x0000000000001380 <+176>:	imul   edx,edx,0x9c4
   0x0000000000001386 <+182>:	sub    eax,edx
   0x0000000000001388 <+184>:	cdqe
   0x000000000000138a <+186>:	mov    QWORD PTR [r15-0x8],rax
   0x000000000000138e <+190>:	cmp    r13,r12
   0x0000000000001391 <+193>:	jne    0x1350 <simulate+128>
   0x0000000000001393 <+195>:	lea    r12,[rbp-0x440]
   0x000000000000139a <+202>:	nop    WORD PTR [rax+rax*1+0x0]
   0x00000000000013a0 <+208>:	call   0x10d0 <rand@plt>
   0x00000000000013a5 <+213>:	mov    r13d,eax
   0x00000000000013a8 <+216>:	call   0x10d0 <rand@plt>
   0x00000000000013ad <+221>:	movsxd rdx,eax
   0x00000000000013b0 <+224>:	mov    ecx,eax
   0x00000000000013b2 <+226>:	imul   rdx,rdx,0x1b4e81b5
   0x00000000000013b9 <+233>:	sar    ecx,0x1f
   0x00000000000013bc <+236>:	sar    rdx,0x26
   0x00000000000013c0 <+240>:	sub    edx,ecx
   0x00000000000013c2 <+242>:	imul   edx,edx,0x258
   0x00000000000013c8 <+248>:	sub    eax,edx
   0x00000000000013ca <+250>:	movsxd r15,eax
   0x00000000000013cd <+253>:	test   r13b,0x1
   0x00000000000013d1 <+257>:	je     0x1480 <simulate+432>
   0x00000000000013d7 <+263>:	mov    eax,r13d
   0x00000000000013da <+266>:	shr    eax,0x1f
   0x00000000000013dd <+269>:	add    r13d,eax
   0x00000000000013e0 <+272>:	and    r13d,0x1
   0x00000000000013e4 <+276>:	sub    r13d,eax
   0x00000000000013e7 <+279>:	cmp    r13d,0x1
   0x00000000000013eb <+283>:	jne    0x13a0 <simulate+208>
   0x00000000000013ed <+285>:	call   0x10d0 <rand@plt>
   0x00000000000013f2 <+290>:	xor    edx,edx
   0x00000000000013f4 <+292>:	cdqe
   0x00000000000013f6 <+294>:	div    rbx
   0x00000000000013f9 <+297>:	shl    rdx,0x4
   0x00000000000013fd <+301>:	movdqu xmm0,XMMWORD PTR [rdx+r14*1-0x10]
   0x0000000000001404 <+308>:	movaps XMMWORD PTR [rbp-0x450],xmm0
   0x000000000000140b <+315>:	mov    rax,QWORD PTR [rbp-0x448]
   0x0000000000001412 <+322>:	cmp    rax,r15
   0x0000000000001415 <+325>:	jb     0x1590 <simulate+704>
   0x000000000000141b <+331>:	mov    rdx,rax
   0x000000000000141e <+334>:	sub    rdx,r15
   0x0000000000001421 <+337>:	lock cmpxchg QWORD PTR [rbp-0x448],rdx
   0x000000000000142a <+346>:	jne    0x1412 <simulate+322>
   0x000000000000142c <+348>:	mov    ecx,0x400
   0x0000000000001431 <+353>:	lea    r8,[rip+0xc90]        # 0x20c8
   0x0000000000001438 <+360>:	mov    rdi,r12
   0x000000000000143b <+363>:	mov    edx,0x2
   0x0000000000001440 <+368>:	mov    esi,0x400
   0x0000000000001445 <+373>:	mov    rax,QWORD PTR [rbp-0x448]
   0x000000000000144c <+380>:	push   rax
   0x000000000000144d <+381>:	xor    eax,eax
   0x000000000000144f <+383>:	push   r15
   0x0000000000001451 <+385>:	mov    r9,QWORD PTR [rbp-0x450]
   0x0000000000001458 <+392>:	call   0x1090 <__snprintf_chk@plt>
   0x000000000000145d <+397>:	mov    rdx,r12
   0x0000000000001460 <+400>:	mov    edi,0x2
   0x0000000000001465 <+405>:	xor    eax,eax
   0x0000000000001467 <+407>:	lea    rsi,[rip+0xcf6]        # 0x2164
   0x000000000000146e <+414>:	call   0x10c0 <__printf_chk@plt>
   0x0000000000001473 <+419>:	pop    rcx
   0x0000000000001474 <+420>:	pop    rsi
   0x0000000000001475 <+421>:	jmp    0x13a0 <simulate+208>
   0x000000000000147a <+426>:	nop    WORD PTR [rax+rax*1+0x0]
   0x0000000000001480 <+432>:	call   0x10d0 <rand@plt>
   0x0000000000001485 <+437>:	xor    edx,edx
   0x0000000000001487 <+439>:	cdqe
   0x0000000000001489 <+441>:	div    rbx
   0x000000000000148c <+444>:	mov    r13,rdx
   0x000000000000148f <+447>:	call   0x10d0 <rand@plt>
   0x0000000000001494 <+452>:	xor    edx,edx
   0x0000000000001496 <+454>:	cdqe
   0x0000000000001498 <+456>:	div    rbx
   0x000000000000149b <+459>:	cmp    r13,rdx
   0x000000000000149e <+462>:	je     0x13a0 <simulate+208>
   0x00000000000014a4 <+468>:	shl    r13,0x4
   0x00000000000014a8 <+472>:	shl    rdx,0x4
   0x00000000000014ac <+476>:	movdqu xmm1,XMMWORD PTR [r13+r14*1-0x10]
   0x00000000000014b3 <+483>:	movdqu xmm2,XMMWORD PTR [rdx+r14*1-0x10]
   0x00000000000014ba <+490>:	movaps XMMWORD PTR [rbp-0x460],xmm1
   0x00000000000014c1 <+497>:	movaps XMMWORD PTR [rbp-0x450],xmm2
   0x00000000000014c8 <+504>:	mov    rax,QWORD PTR [rbp-0x458]
   0x00000000000014cf <+511>:	cmp    rax,r15
   0x00000000000014d2 <+514>:	jb     0x15da <simulate+778>
   0x00000000000014d8 <+520>:	mov    rdx,rax
   0x00000000000014db <+523>:	sub    rdx,r15
   0x00000000000014de <+526>:	lock cmpxchg QWORD PTR [rbp-0x458],rdx
   0x00000000000014e7 <+535>:	jne    0x14cf <simulate+511>
   0x00000000000014e9 <+537>:	lock add QWORD PTR [rbp-0x448],r15
   0x00000000000014f1 <+545>:	lea    r8,[rip+0xb10]        # 0x2008
   0x00000000000014f8 <+552>:	mov    ecx,0x400
   0x00000000000014fd <+557>:	xor    eax,eax
   0x00000000000014ff <+559>:	mov    edx,0x2
   0x0000000000001504 <+564>:	mov    esi,0x400
   0x0000000000001509 <+569>:	push   QWORD PTR [rbp-0x450]
   0x000000000000150f <+575>:	push   QWORD PTR [rbp-0x460]
   0x0000000000001515 <+581>:	mov    r9,r15
   0x0000000000001518 <+584>:	mov    rdi,r12
   0x000000000000151b <+587>:	call   0x1090 <__snprintf_chk@plt>
   0x0000000000001520 <+592>:	mov    rdx,r12
   0x0000000000001523 <+595>:	mov    edi,0x2
   0x0000000000001528 <+600>:	xor    eax,eax
   0x000000000000152a <+602>:	lea    rsi,[rip+0xc33]        # 0x2164
   0x0000000000001531 <+609>:	call   0x10c0 <__printf_chk@plt>
   0x0000000000001536 <+614>:	lea    r8,[rip+0xb03]        # 0x2040
   0x000000000000153d <+621>:	mov    ecx,0x400
   0x0000000000001542 <+626>:	mov    rdi,r12
   0x0000000000001545 <+629>:	mov    edx,0x2
   0x000000000000154a <+634>:	mov    esi,0x400
   0x000000000000154f <+639>:	mov    rax,QWORD PTR [rbp-0x448]
   0x0000000000001556 <+646>:	mov    r9,QWORD PTR [rbp-0x458]
   0x000000000000155d <+653>:	mov    QWORD PTR [rsp],rax
   0x0000000000001561 <+657>:	xor    eax,eax
   0x0000000000001563 <+659>:	call   0x1090 <__snprintf_chk@plt>
   0x0000000000001568 <+664>:	mov    edi,0x2
   0x000000000000156d <+669>:	mov    rdx,r12
   0x0000000000001570 <+672>:	xor    eax,eax
   0x0000000000001572 <+674>:	lea    rsi,[rip+0xbf9]        # 0x2172
   0x0000000000001579 <+681>:	call   0x10c0 <__printf_chk@plt>
   0x000000000000157e <+686>:	pop    rdi
   0x000000000000157f <+687>:	pop    r8
   0x0000000000001581 <+689>:	jmp    0x13a0 <simulate+208>
   0x0000000000001586 <+694>:	cs nop WORD PTR [rax+rax*1+0x0]
   0x0000000000001590 <+704>:	sub    rsp,0x8
   0x0000000000001594 <+708>:	lea    r8,[rip+0xb75]        # 0x2110
   0x000000000000159b <+715>:	mov    r9,QWORD PTR [rbp-0x448]
   0x00000000000015a2 <+722>:	push   r15
   0x00000000000015a4 <+724>:	mov    ecx,0x400
   0x00000000000015a9 <+729>:	mov    edx,0x2
   0x00000000000015ae <+734>:	mov    rdi,r12
   0x00000000000015b1 <+737>:	xor    eax,eax
   0x00000000000015b3 <+739>:	mov    esi,0x400
   0x00000000000015b8 <+744>:	call   0x1090 <__snprintf_chk@plt>
   0x00000000000015bd <+749>:	mov    rdx,r12
   0x00000000000015c0 <+752>:	mov    edi,0x2
   0x00000000000015c5 <+757>:	xor    eax,eax
   0x00000000000015c7 <+759>:	lea    rsi,[rip+0xbb2]        # 0x2180
   0x00000000000015ce <+766>:	call   0x10c0 <__printf_chk@plt>
   0x00000000000015d3 <+771>:	pop    rax
   0x00000000000015d4 <+772>:	pop    rdx
   0x00000000000015d5 <+773>:	jmp    0x13a0 <simulate+208>
   0x00000000000015da <+778>:	sub    rsp,0x8
   0x00000000000015de <+782>:	lea    r8,[rip+0xa9b]        # 0x2080
   0x00000000000015e5 <+789>:	mov    r9,QWORD PTR [rbp-0x458]
   0x00000000000015ec <+796>:	push   r15
   0x00000000000015ee <+798>:	jmp    0x15a4 <simulate+724>
   0x00000000000015f0 <+800>:	or     QWORD PTR [rsp+rax*1-0x8],0x0
   0x00000000000015f6 <+806>:	jmp    0x133a <simulate+106>
