
updater.elf:     file format elf32-avr

SYMBOL TABLE:
00800100 l    d  .data	00000000 .data
00000000 l    d  .text	00000000 .text
00000000 l    d  .stab	00000000 .stab
00000000 l    d  .stabstr	00000000 .stabstr
00000000 l    d  .comment	00000000 .comment
00000000 l    d  .debug_aranges	00000000 .debug_aranges
00000000 l    d  .debug_info	00000000 .debug_info
00000000 l    d  .debug_abbrev	00000000 .debug_abbrev
00000000 l    d  .debug_line	00000000 .debug_line
00000000 l    d  .debug_frame	00000000 .debug_frame
00000000 l    d  .debug_str	00000000 .debug_str
00000000 l    d  .debug_loc	00000000 .debug_loc
00000000 l    d  .debug_ranges	00000000 .debug_ranges
00000000 l    d  .debug_macro	00000000 .debug_macro
00000000 l    df *ABS*	00000000 updater.c
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
000000b0 l       .text	00000000 loop22
000000de l       .text	00000000 loop52
00000000 l    df *ABS*	00000000 _exit.o
00000bf4 l       .text	00000000 __stop_program
00000000 l    df *ABS*	00000000 
0000008e  w      .text	00000000 __vector_22
0000008e  w      .text	00000000 __vector_1
00800100 g     O .data	00000002 new_firmware
00000090 g     F .text	0000002e do_spm
00000a10 g     F .text	00000012 memcpy_PF
00000068 g       .text	00000000 __trampolines_start
00000bf6 g       .text	00000000 _etext
0000008e  w      .text	00000000 __vector_24
0000008e  w      .text	00000000 __vector_12
0000008e g       .text	00000000 __bad_interrupt
00000220 g       .text	00000000 usbasploader
00000bf8 g       *ABS*	00000000 __data_load_end
0000008e  w      .text	00000000 __vector_6
00000068 g       .text	00000000 __trampolines_end
0000008e  w      .text	00000000 __vector_3
0000008e  w      .text	00000000 __vector_23
00000bf6 g       *ABS*	00000000 __data_load_start
00000068 g       .text	00000000 __dtors_end
0000008e  w      .text	00000000 __vector_25
0000008e  w      .text	00000000 __vector_11
00000068  w      .text	00000000 __init
00000a10 g       .text	00000000 _binary_usbasploader_raw_end
0000008e  w      .text	00000000 __vector_13
0000008e  w      .text	00000000 __vector_17
0000008e  w      .text	00000000 __vector_19
0000008e  w      .text	00000000 __vector_7
00810000 g       .text	00000000 __eeprom_end
00000000 g       .text	00000000 __vectors
00800102 g       .data	00000000 __data_end
000007f0 g       *ABS*	00000000 _binary_usbasploader_raw_size
00000000  w      .text	00000000 __vector_default
0000008e  w      .text	00000000 __vector_5
00000112 g     F .text	0000010e mypgm_WRITEpage
000000ec g     F .text	00000028 mypgm_readpage
00000068 g       .text	00000000 __ctors_start
00000074 g       .text	00000016 __do_copy_data
00000be4 g     F .text	0000000e memset
00000a22 g     F .text	000001d2 main
0000008e  w      .text	00000000 __vector_4
00000000  w      *ABS*	00000000 __heap_end
0000008e  w      .text	00000000 __vector_9
0000008e  w      .text	00000000 __vector_2
0000008e  w      .text	00000000 __vector_21
0000008e  w      .text	00000000 __vector_15
00000068 g       .text	00000000 __dtors_start
00000068 g       .text	00000000 __ctors_end
000004ff  w      *ABS*	00000000 __stack
00800102 g       .data	00000000 _edata
00800102 g       .text	00000000 _end
0000008e  w      .text	00000000 __vector_8
00000bf2  w      .text	00000000 exit
00000bf2 g       .text	00000000 _exit
0000008e  w      .text	00000000 __vector_14
000000be g     F .text	0000002e temp_do_spm
0000008e  w      .text	00000000 __vector_10
0000008e  w      .text	00000000 __vector_16
00800100 g       .data	00000000 __data_start
0000008e  w      .text	00000000 __vector_18
0000008e  w      .text	00000000 __vector_20



Disassembly of section .text:

00000000 <__vectors>:
   0:	33 c0       	rjmp	.+102    	; 0x68 <__ctors_end>
   2:	00 00       	nop
   4:	44 c0       	rjmp	.+136    	; 0x8e <__bad_interrupt>
   6:	00 00       	nop
   8:	42 c0       	rjmp	.+132    	; 0x8e <__bad_interrupt>
   a:	00 00       	nop
   c:	40 c0       	rjmp	.+128    	; 0x8e <__bad_interrupt>
   e:	00 00       	nop
  10:	3e c0       	rjmp	.+124    	; 0x8e <__bad_interrupt>
  12:	00 00       	nop
  14:	3c c0       	rjmp	.+120    	; 0x8e <__bad_interrupt>
  16:	00 00       	nop
  18:	3a c0       	rjmp	.+116    	; 0x8e <__bad_interrupt>
  1a:	00 00       	nop
  1c:	38 c0       	rjmp	.+112    	; 0x8e <__bad_interrupt>
  1e:	00 00       	nop
  20:	36 c0       	rjmp	.+108    	; 0x8e <__bad_interrupt>
  22:	00 00       	nop
  24:	34 c0       	rjmp	.+104    	; 0x8e <__bad_interrupt>
  26:	00 00       	nop
  28:	32 c0       	rjmp	.+100    	; 0x8e <__bad_interrupt>
  2a:	00 00       	nop
  2c:	30 c0       	rjmp	.+96     	; 0x8e <__bad_interrupt>
  2e:	00 00       	nop
  30:	2e c0       	rjmp	.+92     	; 0x8e <__bad_interrupt>
  32:	00 00       	nop
  34:	2c c0       	rjmp	.+88     	; 0x8e <__bad_interrupt>
  36:	00 00       	nop
  38:	2a c0       	rjmp	.+84     	; 0x8e <__bad_interrupt>
  3a:	00 00       	nop
  3c:	28 c0       	rjmp	.+80     	; 0x8e <__bad_interrupt>
  3e:	00 00       	nop
  40:	26 c0       	rjmp	.+76     	; 0x8e <__bad_interrupt>
  42:	00 00       	nop
  44:	24 c0       	rjmp	.+72     	; 0x8e <__bad_interrupt>
  46:	00 00       	nop
  48:	22 c0       	rjmp	.+68     	; 0x8e <__bad_interrupt>
  4a:	00 00       	nop
  4c:	20 c0       	rjmp	.+64     	; 0x8e <__bad_interrupt>
  4e:	00 00       	nop
  50:	1e c0       	rjmp	.+60     	; 0x8e <__bad_interrupt>
  52:	00 00       	nop
  54:	1c c0       	rjmp	.+56     	; 0x8e <__bad_interrupt>
  56:	00 00       	nop
  58:	1a c0       	rjmp	.+52     	; 0x8e <__bad_interrupt>
  5a:	00 00       	nop
  5c:	18 c0       	rjmp	.+48     	; 0x8e <__bad_interrupt>
  5e:	00 00       	nop
  60:	16 c0       	rjmp	.+44     	; 0x8e <__bad_interrupt>
  62:	00 00       	nop
  64:	14 c0       	rjmp	.+40     	; 0x8e <__bad_interrupt>
	...

00000068 <__ctors_end>:
  68:	11 24       	eor	r1, r1
  6a:	1f be       	out	0x3f, r1	; 63
  6c:	cf ef       	ldi	r28, 0xFF	; 255
  6e:	d4 e0       	ldi	r29, 0x04	; 4
  70:	de bf       	out	0x3e, r29	; 62
  72:	cd bf       	out	0x3d, r28	; 61

00000074 <__do_copy_data>:
  74:	11 e0       	ldi	r17, 0x01	; 1
  76:	a0 e0       	ldi	r26, 0x00	; 0
  78:	b1 e0       	ldi	r27, 0x01	; 1
  7a:	e6 ef       	ldi	r30, 0xF6	; 246
  7c:	fb e0       	ldi	r31, 0x0B	; 11
  7e:	02 c0       	rjmp	.+4      	; 0x84 <__do_copy_data+0x10>
  80:	05 90       	lpm	r0, Z+
  82:	0d 92       	st	X+, r0
  84:	a2 30       	cpi	r26, 0x02	; 2
  86:	b1 07       	cpc	r27, r17
  88:	d9 f7       	brne	.-10     	; 0x80 <__do_copy_data+0xc>
  8a:	cb d4       	rcall	.+2454   	; 0xa22 <main>
  8c:	b2 c5       	rjmp	.+2916   	; 0xbf2 <_exit>

0000008e <__bad_interrupt>:
  8e:	b8 cf       	rjmp	.-144    	; 0x0 <__vectors>

00000090 <do_spm>:
      );												\
  })
#endif

#if (!(defined(BOOTLOADER_ADDRESS))) || (defined(NEW_BOOTLOADER_ADDRESS))
void do_spm(const uint32_t flash_byteaddress, const uint8_t spmcrval, const uint16_t dataword) {
  90:	bf 92       	push	r11
  92:	cf 92       	push	r12
  94:	df 92       	push	r13
  96:	d9 01       	movw	r26, r18
    __do_spm_Ex(flash_byteaddress, spmcrval, dataword, funcaddr___bootloader__do_spm >> 1);
  98:	e4 e3       	ldi	r30, 0x34	; 52
  9a:	fc e1       	ldi	r31, 0x1C	; 28
  9c:	0f 92       	push	r0
  9e:	1f 92       	push	r1
  a0:	d7 2e       	mov	r13, r23
  a2:	c6 2e       	mov	r12, r22
  a4:	b8 2e       	mov	r11, r24
  a6:	24 2f       	mov	r18, r20
  a8:	1b 2e       	mov	r1, r27
  aa:	0a 2e       	mov	r0, r26
  ac:	09 95       	icall
  ae:	21 31       	cpi	r18, 0x11	; 17

000000b0 <loop22>:
  b0:	f9 f7       	brne	.-2      	; 0xb0 <loop22>
  b2:	1f 90       	pop	r1
  b4:	0f 90       	pop	r0
}
  b6:	df 90       	pop	r13
  b8:	cf 90       	pop	r12
  ba:	bf 90       	pop	r11
  bc:	08 95       	ret

000000be <temp_do_spm>:
void new_do_spm(const uint32_t flash_byteaddress, const uint8_t spmcrval, const uint16_t dataword) {
    __do_spm_Ex(flash_byteaddress, spmcrval, dataword, NEW_SPM_ADDRESS >> 1);
}
#endif

void temp_do_spm(const uint32_t flash_byteaddress, const uint8_t spmcrval, const uint16_t dataword) {
  be:	bf 92       	push	r11
  c0:	cf 92       	push	r12
  c2:	df 92       	push	r13
  c4:	d9 01       	movw	r26, r18
    __do_spm_Ex(flash_byteaddress, spmcrval, dataword, TEMP_SPM_ADDRESS >> 1);
  c6:	e4 e3       	ldi	r30, 0x34	; 52
  c8:	ff e1       	ldi	r31, 0x1F	; 31
  ca:	0f 92       	push	r0
  cc:	1f 92       	push	r1
  ce:	d7 2e       	mov	r13, r23
  d0:	c6 2e       	mov	r12, r22
  d2:	b8 2e       	mov	r11, r24
  d4:	24 2f       	mov	r18, r20
  d6:	1b 2e       	mov	r1, r27
  d8:	0a 2e       	mov	r0, r26
  da:	09 95       	icall
  dc:	21 31       	cpi	r18, 0x11	; 17

000000de <loop52>:
  de:	f9 f7       	brne	.-2      	; 0xde <loop52>
  e0:	1f 90       	pop	r1
  e2:	0f 90       	pop	r0
}
  e4:	df 90       	pop	r13
  e6:	cf 90       	pop	r12
  e8:	bf 90       	pop	r11
  ea:	08 95       	ret

000000ec <mypgm_readpage>:
  
  return result;
}
#else
// replace it somehow with "memcpy_PF" in order to save some ops...
size_t mypgm_readpage(const mypgm_addr_t byteaddress,const void* buffer, const size_t bufferbytesize) {
  ec:	cf 93       	push	r28
  ee:	df 93       	push	r29
  f0:	fa 01       	movw	r30, r20
  size_t	result		= (bufferbytesize < SPM_PAGESIZE)?bufferbytesize:SPM_PAGESIZE;
  f2:	e9 01       	movw	r28, r18
  f4:	21 38       	cpi	r18, 0x81	; 129
  f6:	31 05       	cpc	r19, r1
  f8:	10 f0       	brcs	.+4      	; 0xfe <mypgm_readpage+0x12>
  fa:	c0 e8       	ldi	r28, 0x80	; 128
  fc:	d0 e0       	ldi	r29, 0x00	; 0
  mypgm_addr_t	pageaddr	= byteaddress - (byteaddress % SPM_PAGESIZE);
  fe:	ab 01       	movw	r20, r22
 100:	bc 01       	movw	r22, r24
 102:	40 78       	andi	r20, 0x80	; 128
  
  mymemcpy_PF((void*)buffer, (uint_farptr_t)pageaddr, result);
 104:	9e 01       	movw	r18, r28
 106:	cf 01       	movw	r24, r30
 108:	83 d4       	rcall	.+2310   	; 0xa10 <memcpy_PF>
 10a:	ce 01       	movw	r24, r28
  
  return result;
}
 10c:	df 91       	pop	r29
 10e:	cf 91       	pop	r28
 110:	08 95       	ret

00000112 <mypgm_WRITEpage>:
 112:	2f 92       	push	r2
#endif

#ifdef CONFIG_UPDATER_REDUCEWRITES
size_t mypgm_WRITEpage(const mypgm_addr_t byteaddress,const void* buffer, const size_t bufferbytesize, mypgm_spminterface spmfunc) {
 114:	3f 92       	push	r3
 116:	4f 92       	push	r4
 118:	5f 92       	push	r5
 11a:	6f 92       	push	r6
 11c:	7f 92       	push	r7
 11e:	8f 92       	push	r8
 120:	9f 92       	push	r9
 122:	af 92       	push	r10
 124:	bf 92       	push	r11
 126:	cf 92       	push	r12
 128:	df 92       	push	r13
 12a:	ef 92       	push	r14
 12c:	ff 92       	push	r15
 12e:	0f 93       	push	r16
 130:	1f 93       	push	r17
 132:	cf 93       	push	r28
 134:	df 93       	push	r29
 136:	e9 01       	movw	r28, r18
  size_t	result		= (bufferbytesize < SPM_PAGESIZE)?bufferbytesize:SPM_PAGESIZE;
 138:	21 38       	cpi	r18, 0x81	; 129
 13a:	31 05       	cpc	r19, r1
 13c:	10 f0       	brcs	.+4      	; 0x142 <mypgm_WRITEpage+0x30>
 13e:	c0 e8       	ldi	r28, 0x80	; 128
 140:	d0 e0       	ldi	r29, 0x00	; 0
 142:	1e 01       	movw	r2, r28
  size_t	pagesize	= result >> 1;
 144:	36 94       	lsr	r3
 146:	27 94       	ror	r2
 148:	30 e8       	ldi	r19, 0x80	; 128
  uint16_t	*pagedata	= (void*)buffer;
  mypgm_addr_t	pageaddr_bakup	= byteaddress - (byteaddress % SPM_PAGESIZE);
 14a:	43 2e       	mov	r4, r19
 14c:	55 24       	eor	r5, r5
 14e:	5a 94       	dec	r5
 150:	65 2c       	mov	r6, r5
 152:	75 2c       	mov	r7, r5
 154:	46 22       	and	r4, r22
 156:	57 22       	and	r5, r23
 158:	68 22       	and	r6, r24
 15a:	79 22       	and	r7, r25
 15c:	7a 01       	movw	r14, r20
 15e:	da 01       	movw	r26, r20
  uint8_t	changed=0, needs_erase=0;
  uint16_t	deeword;
  size_t	i;
  
  // just check, if page needs a rewrite or an erase...
  for (i=0;i<pagesize;i+=1) {
 160:	80 e0       	ldi	r24, 0x00	; 0
 162:	90 e0       	ldi	r25, 0x00	; 0
 164:	60 e0       	ldi	r22, 0x00	; 0
  size_t	pagesize	= result >> 1;
  uint16_t	*pagedata	= (void*)buffer;
  mypgm_addr_t	pageaddr_bakup	= byteaddress - (byteaddress % SPM_PAGESIZE);
  mypgm_addr_t	pageaddr	= pageaddr_bakup;
  
  uint8_t	changed=0, needs_erase=0;
 166:	70 e0       	ldi	r23, 0x00	; 0
 168:	16 c0       	rjmp	.+44     	; 0x196 <mypgm_WRITEpage+0x84>
  uint16_t	deeword;
  size_t	i;
  
  // just check, if page needs a rewrite or an erase...
  for (i=0;i<pagesize;i+=1) {
 16a:	f2 01       	movw	r30, r4
  return result;
}
#endif

#ifdef CONFIG_UPDATER_REDUCEWRITES
size_t mypgm_WRITEpage(const mypgm_addr_t byteaddress,const void* buffer, const size_t bufferbytesize, mypgm_spminterface spmfunc) {
 16c:	ee 19       	sub	r30, r14
 16e:	ff 09       	sbc	r31, r15
 170:	ea 0f       	add	r30, r26
 172:	fb 1f       	adc	r31, r27
 174:	25 91       	lpm	r18, Z+
  // just check, if page needs a rewrite or an erase...
  for (i=0;i<pagesize;i+=1) {
#if (FLASHEND > 65535)
    deeword=pgm_read_word_far(pageaddr);
#else
    deeword=pgm_read_word(pageaddr);
 176:	34 91       	lpm	r19, Z
 178:	4d 91       	ld	r20, X+
#endif

    if (deeword != pagedata[i]) changed=1;
 17a:	5d 91       	ld	r21, X+
 17c:	24 17       	cp	r18, r20
 17e:	35 07       	cpc	r19, r21
 180:	09 f0       	breq	.+2      	; 0x184 <mypgm_WRITEpage+0x72>
 182:	71 e0       	ldi	r23, 0x01	; 1
 184:	40 95       	com	r20
     *  0 ? 1 ==> 0
     *  0 ? 0 ==> 1
     * 
     * ==> /(/x * y) ==> x + /y
     */
    deeword |= ~pagedata[i];
 186:	50 95       	com	r21
 188:	42 2b       	or	r20, r18
 18a:	53 2b       	or	r21, r19
 18c:	4f 3f       	cpi	r20, 0xFF	; 255
    if ((~deeword) != 0) needs_erase=1;
 18e:	5f 4f       	sbci	r21, 0xFF	; 255
 190:	09 f0       	breq	.+2      	; 0x194 <mypgm_WRITEpage+0x82>
 192:	61 e0       	ldi	r22, 0x01	; 1
 194:	01 96       	adiw	r24, 0x01	; 1
  uint8_t	changed=0, needs_erase=0;
  uint16_t	deeword;
  size_t	i;
  
  // just check, if page needs a rewrite or an erase...
  for (i=0;i<pagesize;i+=1) {
 196:	82 15       	cp	r24, r2
 198:	93 05       	cpc	r25, r3
 19a:	39 f7       	brne	.-50     	; 0x16a <mypgm_WRITEpage+0x58>
 19c:	77 23       	and	r23, r23
    if ((~deeword) != 0) needs_erase=1;
      
    pageaddr+=2;
  }

  if (changed) {
 19e:	51 f1       	breq	.+84     	; 0x1f4 <mypgm_WRITEpage+0xe2>
 1a0:	66 23       	and	r22, r22
    
    if (needs_erase) {
 1a2:	39 f0       	breq	.+14     	; 0x1b2 <mypgm_WRITEpage+0xa0>
 1a4:	20 e0       	ldi	r18, 0x00	; 0
      //do a page-erase, ATTANTION: flash only can be erased a limited number of times !
      spmfunc(pageaddr_bakup, updater_pageerasecode, 0);
 1a6:	30 e0       	ldi	r19, 0x00	; 0
 1a8:	43 e0       	ldi	r20, 0x03	; 3
 1aa:	c3 01       	movw	r24, r6
 1ac:	b2 01       	movw	r22, r4
 1ae:	f8 01       	movw	r30, r16
 1b0:	09 95       	icall
 1b2:	53 01       	movw	r10, r6
  size_t	pagesize	= result >> 1;
  uint16_t	*pagedata	= (void*)buffer;
  mypgm_addr_t	pageaddr_bakup	= byteaddress - (byteaddress % SPM_PAGESIZE);
  mypgm_addr_t	pageaddr	= pageaddr_bakup;
  
  uint8_t	changed=0, needs_erase=0;
 1b4:	42 01       	movw	r8, r4
 1b6:	c1 2c       	mov	r12, r1
 1b8:	d1 2c       	mov	r13, r1
 1ba:	11 c0       	rjmp	.+34     	; 0x1de <mypgm_WRITEpage+0xcc>
 1bc:	f7 01       	movw	r30, r14
    // from now on, the page is assumed empty !! (hopefully our code is located somewhere else!)
    // now, fill the tempoary buffer
    // ATTANTION: see comment on "do_spm" !
    pageaddr	= pageaddr_bakup;
    for (i=0;i<pagesize;i+=1) {
      spmfunc(pageaddr, updater_pagefillcode, pagedata[i]);
 1be:	21 91       	ld	r18, Z+
 1c0:	31 91       	ld	r19, Z+
 1c2:	7f 01       	movw	r14, r30
 1c4:	41 e0       	ldi	r20, 0x01	; 1
 1c6:	c5 01       	movw	r24, r10
 1c8:	b4 01       	movw	r22, r8
 1ca:	f8 01       	movw	r30, r16
 1cc:	09 95       	icall
 1ce:	f2 e0       	ldi	r31, 0x02	; 2
      pageaddr+=2;
 1d0:	8f 0e       	add	r8, r31
 1d2:	91 1c       	adc	r9, r1
 1d4:	a1 1c       	adc	r10, r1
 1d6:	b1 1c       	adc	r11, r1
 1d8:	2f ef       	ldi	r18, 0xFF	; 255
    
    // from now on, the page is assumed empty !! (hopefully our code is located somewhere else!)
    // now, fill the tempoary buffer
    // ATTANTION: see comment on "do_spm" !
    pageaddr	= pageaddr_bakup;
    for (i=0;i<pagesize;i+=1) {
 1da:	c2 1a       	sub	r12, r18
 1dc:	d2 0a       	sbc	r13, r18
 1de:	c2 14       	cp	r12, r2
 1e0:	d3 04       	cpc	r13, r3
 1e2:	61 f7       	brne	.-40     	; 0x1bc <mypgm_WRITEpage+0xaa>
 1e4:	20 e0       	ldi	r18, 0x00	; 0
      spmfunc(pageaddr, updater_pagefillcode, pagedata[i]);
      pageaddr+=2;
    }
    
    // so, now finally write the page to the FLASH
    spmfunc(pageaddr_bakup, updater_pagewritecode, 0);
 1e6:	30 e0       	ldi	r19, 0x00	; 0
 1e8:	45 e0       	ldi	r20, 0x05	; 5
 1ea:	c3 01       	movw	r24, r6
 1ec:	b2 01       	movw	r22, r4
 1ee:	f8 01       	movw	r30, r16
 1f0:	09 95       	icall
 1f2:	02 c0       	rjmp	.+4      	; 0x1f8 <mypgm_WRITEpage+0xe6>
 1f4:	c0 e0       	ldi	r28, 0x00	; 0
  } else {
    // no change - no write...
    result = 0;
 1f6:	d0 e0       	ldi	r29, 0x00	; 0
 1f8:	ce 01       	movw	r24, r28
  }
  
  
  return result;
}
 1fa:	df 91       	pop	r29
 1fc:	cf 91       	pop	r28
 1fe:	1f 91       	pop	r17
 200:	0f 91       	pop	r16
 202:	ff 90       	pop	r15
 204:	ef 90       	pop	r14
 206:	df 90       	pop	r13
 208:	cf 90       	pop	r12
 20a:	bf 90       	pop	r11
 20c:	af 90       	pop	r10
 20e:	9f 90       	pop	r9
 210:	8f 90       	pop	r8
 212:	7f 90       	pop	r7
 214:	6f 90       	pop	r6
 216:	5f 90       	pop	r5
 218:	4f 90       	pop	r4
 21a:	3f 90       	pop	r3
 21c:	2f 90       	pop	r2
 21e:	08 95       	ret

00000220 <usbasploader>:
 220:	6b c0       	rjmp	.+214    	; 0x2f8 <usbasploader+0xd8>
 222:	00 00       	nop
 224:	aa c0       	rjmp	.+340    	; 0x37a <usbasploader+0x15a>
 226:	00 00       	nop
 228:	8e c0       	rjmp	.+284    	; 0x346 <usbasploader+0x126>
 22a:	00 00       	nop
 22c:	8c c0       	rjmp	.+280    	; 0x346 <usbasploader+0x126>
 22e:	00 00       	nop
 230:	8a c0       	rjmp	.+276    	; 0x346 <usbasploader+0x126>
 232:	00 00       	nop
 234:	88 c0       	rjmp	.+272    	; 0x346 <usbasploader+0x126>
 236:	00 00       	nop
 238:	86 c0       	rjmp	.+268    	; 0x346 <usbasploader+0x126>
 23a:	00 00       	nop
 23c:	84 c0       	rjmp	.+264    	; 0x346 <usbasploader+0x126>
 23e:	00 00       	nop
 240:	82 c0       	rjmp	.+260    	; 0x346 <usbasploader+0x126>
 242:	00 00       	nop
 244:	80 c0       	rjmp	.+256    	; 0x346 <usbasploader+0x126>
 246:	00 00       	nop
 248:	7e c0       	rjmp	.+252    	; 0x346 <usbasploader+0x126>
 24a:	00 00       	nop
 24c:	7c c0       	rjmp	.+248    	; 0x346 <usbasploader+0x126>
 24e:	00 00       	nop
 250:	7a c0       	rjmp	.+244    	; 0x346 <usbasploader+0x126>
 252:	00 00       	nop
 254:	78 c0       	rjmp	.+240    	; 0x346 <usbasploader+0x126>
 256:	00 00       	nop
 258:	76 c0       	rjmp	.+236    	; 0x346 <usbasploader+0x126>
 25a:	00 00       	nop
 25c:	74 c0       	rjmp	.+232    	; 0x346 <usbasploader+0x126>
 25e:	00 00       	nop
 260:	72 c0       	rjmp	.+228    	; 0x346 <usbasploader+0x126>
 262:	00 00       	nop
 264:	70 c0       	rjmp	.+224    	; 0x346 <usbasploader+0x126>
 266:	00 00       	nop
 268:	6e c0       	rjmp	.+220    	; 0x346 <usbasploader+0x126>
 26a:	00 00       	nop
 26c:	6c c0       	rjmp	.+216    	; 0x346 <usbasploader+0x126>
 26e:	00 00       	nop
 270:	6a c0       	rjmp	.+212    	; 0x346 <usbasploader+0x126>
 272:	00 00       	nop
 274:	68 c0       	rjmp	.+208    	; 0x346 <usbasploader+0x126>
 276:	00 00       	nop
 278:	66 c0       	rjmp	.+204    	; 0x346 <usbasploader+0x126>
 27a:	00 00       	nop
 27c:	64 c0       	rjmp	.+200    	; 0x346 <usbasploader+0x126>
 27e:	00 00       	nop
 280:	62 c0       	rjmp	.+196    	; 0x346 <usbasploader+0x126>
 282:	00 00       	nop
 284:	60 c0       	rjmp	.+192    	; 0x346 <usbasploader+0x126>
 286:	00 00       	nop
 288:	ec 2d       	mov	r30, r12
 28a:	fd 2d       	mov	r31, r13
 28c:	b7 b6       	in	r11, 0x37	; 55
 28e:	b0 fc       	sbrc	r11, 0
 290:	fd cf       	rjmp	.-6      	; 0x28c <usbasploader+0x6c>
 292:	27 bf       	out	0x37, r18	; 55
 294:	e8 95       	spm
 296:	b7 b6       	in	r11, 0x37	; 55
 298:	b0 fc       	sbrc	r11, 0
 29a:	fd cf       	rjmp	.-6      	; 0x296 <usbasploader+0x76>
 29c:	21 e1       	ldi	r18, 0x11	; 17
 29e:	b7 b6       	in	r11, 0x37	; 55
 2a0:	b6 fc       	sbrc	r11, 6
 2a2:	f4 cf       	rjmp	.-24     	; 0x28c <usbasploader+0x6c>
 2a4:	08 95       	ret
 2a6:	09 02       	muls	r16, r25
 2a8:	12 00       	.word	0x0012	; ????
 2aa:	01 01       	movw	r0, r2
 2ac:	00 80       	ld	r0, Z
 2ae:	32 09       	sbc	r19, r2
 2b0:	04 00       	.word	0x0004	; ????
 2b2:	00 00       	nop
 2b4:	00 00       	nop
 2b6:	00 00       	nop
 2b8:	12 01       	movw	r2, r4
 2ba:	10 01       	movw	r2, r0
 2bc:	ff 00       	.word	0x00ff	; ????
 2be:	00 08       	sbc	r0, r0
 2c0:	c0 16       	cp	r12, r16
 2c2:	dc 05       	cpc	r29, r12
 2c4:	02 01       	movw	r0, r4
 2c6:	01 02       	muls	r16, r17
 2c8:	00 01       	movw	r0, r0
 2ca:	0e 03       	fmul	r16, r22
 2cc:	55 00       	.word	0x0055	; ????
 2ce:	53 00       	.word	0x0053	; ????
 2d0:	42 00       	.word	0x0042	; ????
 2d2:	61 00       	.word	0x0061	; ????
 2d4:	73 00       	.word	0x0073	; ????
 2d6:	70 00       	.word	0x0070	; ????
 2d8:	1c 03       	fmul	r17, r20
 2da:	77 00       	.word	0x0077	; ????
 2dc:	77 00       	.word	0x0077	; ????
 2de:	77 00       	.word	0x0077	; ????
 2e0:	2e 00       	.word	0x002e	; ????
 2e2:	66 00       	.word	0x0066	; ????
 2e4:	69 00       	.word	0x0069	; ????
 2e6:	73 00       	.word	0x0073	; ????
 2e8:	63 00       	.word	0x0063	; ????
 2ea:	68 00       	.word	0x0068	; ????
 2ec:	6c 00       	.word	0x006c	; ????
 2ee:	2e 00       	.word	0x002e	; ????
 2f0:	64 00       	.word	0x0064	; ????
 2f2:	65 00       	.word	0x0065	; ????
 2f4:	04 03       	mulsu	r16, r20
 2f6:	09 04       	cpc	r0, r9
 2f8:	11 24       	eor	r1, r1
 2fa:	1f be       	out	0x3f, r1	; 63
 2fc:	cf ef       	ldi	r28, 0xFF	; 255
 2fe:	d4 e0       	ldi	r29, 0x04	; 4
 300:	de bf       	out	0x3e, r29	; 62
 302:	cd bf       	out	0x3d, r28	; 61
 304:	24 b7       	in	r18, 0x34	; 52
 306:	d4 e0       	ldi	r29, 0x04	; 4
 308:	ce ef       	ldi	r28, 0xFE	; 254
 30a:	39 91       	ld	r19, Y+
 30c:	3c 31       	cpi	r19, 0x1C	; 28
 30e:	39 91       	ld	r19, Y+
 310:	09 f0       	breq	.+2      	; 0x314 <usbasploader+0xf4>
 312:	3f ef       	ldi	r19, 0xFF	; 255
 314:	30 93 3d 01 	sts	0x013D, r19
 318:	20 93 3c 01 	sts	0x013C, r18
 31c:	11 e0       	ldi	r17, 0x01	; 1
 31e:	a0 e0       	ldi	r26, 0x00	; 0
 320:	b1 e0       	ldi	r27, 0x01	; 1
 322:	ea ee       	ldi	r30, 0xEA	; 234
 324:	ff e3       	ldi	r31, 0x3F	; 63
 326:	02 c0       	rjmp	.+4      	; 0x32c <usbasploader+0x10c>
 328:	05 90       	lpm	r0, Z+
 32a:	0d 92       	st	X+, r0
 32c:	a6 30       	cpi	r26, 0x06	; 6
 32e:	b1 07       	cpc	r27, r17
 330:	d9 f7       	brne	.-10     	; 0x328 <usbasploader+0x108>
 332:	21 e0       	ldi	r18, 0x01	; 1
 334:	a6 e0       	ldi	r26, 0x06	; 6
 336:	b1 e0       	ldi	r27, 0x01	; 1
 338:	01 c0       	rjmp	.+2      	; 0x33c <usbasploader+0x11c>
 33a:	1d 92       	st	X+, r1
 33c:	ac 33       	cpi	r26, 0x3C	; 60
 33e:	b2 07       	cpc	r27, r18
 340:	e1 f7       	brne	.-8      	; 0x33a <usbasploader+0x11a>
 342:	66 d1       	rcall	.+716    	; 0x610 <__stack+0x111>
 344:	60 c3       	rjmp	.+1728   	; 0xa06 <_binary_usbasploader_raw_size+0x216>
 346:	6c cf       	rjmp	.-296    	; 0x220 <usbasploader>
 348:	a8 2f       	mov	r26, r24
 34a:	b9 2f       	mov	r27, r25
 34c:	80 e0       	ldi	r24, 0x00	; 0
 34e:	90 e0       	ldi	r25, 0x00	; 0
 350:	41 e0       	ldi	r20, 0x01	; 1
 352:	50 ea       	ldi	r21, 0xA0	; 160
 354:	60 95       	com	r22
 356:	30 e0       	ldi	r19, 0x00	; 0
 358:	09 c0       	rjmp	.+18     	; 0x36c <usbasploader+0x14c>
 35a:	2d 91       	ld	r18, X+
 35c:	82 27       	eor	r24, r18
 35e:	97 95       	ror	r25
 360:	87 95       	ror	r24
 362:	10 f0       	brcs	.+4      	; 0x368 <usbasploader+0x148>
 364:	84 27       	eor	r24, r20
 366:	95 27       	eor	r25, r21
 368:	30 5e       	subi	r19, 0xE0	; 224
 36a:	c8 f3       	brcs	.-14     	; 0x35e <usbasploader+0x13e>
 36c:	6f 5f       	subi	r22, 0xFF	; 255
 36e:	a8 f3       	brcs	.-22     	; 0x35a <usbasploader+0x13a>
 370:	08 95       	ret
 372:	ea df       	rcall	.-44     	; 0x348 <usbasploader+0x128>
 374:	8d 93       	st	X+, r24
 376:	9d 93       	st	X+, r25
 378:	08 95       	ret
 37a:	cf 93       	push	r28
 37c:	cf b7       	in	r28, 0x3f	; 63
 37e:	cf 93       	push	r28
 380:	c3 95       	inc	r28
 382:	4c 9b       	sbis	0x09, 4	; 9
 384:	e9 f7       	brne	.-6      	; 0x380 <usbasploader+0x160>
 386:	4c 9b       	sbis	0x09, 4	; 9
 388:	09 c0       	rjmp	.+18     	; 0x39c <usbasploader+0x17c>
 38a:	4c 9b       	sbis	0x09, 4	; 9
 38c:	07 c0       	rjmp	.+14     	; 0x39c <usbasploader+0x17c>
 38e:	4c 9b       	sbis	0x09, 4	; 9
 390:	05 c0       	rjmp	.+10     	; 0x39c <usbasploader+0x17c>
 392:	4c 9b       	sbis	0x09, 4	; 9
 394:	03 c0       	rjmp	.+6      	; 0x39c <usbasploader+0x17c>
 396:	4c 9b       	sbis	0x09, 4	; 9
 398:	01 c0       	rjmp	.+2      	; 0x39c <usbasploader+0x17c>
 39a:	a1 c0       	rjmp	.+322    	; 0x4de <usbasploader+0x2be>
 39c:	df 93       	push	r29
 39e:	c0 91 1f 01 	lds	r28, 0x011F
 3a2:	dd 27       	eor	r29, r29
 3a4:	ca 5d       	subi	r28, 0xDA	; 218
 3a6:	de 4f       	sbci	r29, 0xFE	; 254
 3a8:	4c 9b       	sbis	0x09, 4	; 9
 3aa:	02 c0       	rjmp	.+4      	; 0x3b0 <usbasploader+0x190>
 3ac:	df 91       	pop	r29
 3ae:	eb cf       	rjmp	.-42     	; 0x386 <usbasploader+0x166>
 3b0:	2f 93       	push	r18
 3b2:	0f 93       	push	r16
 3b4:	1f 93       	push	r17
 3b6:	09 b1       	in	r16, 0x09	; 9
 3b8:	2f ef       	ldi	r18, 0xFF	; 255
 3ba:	04 fb       	bst	r16, 4
 3bc:	20 f9       	bld	r18, 0
 3be:	4f 93       	push	r20
 3c0:	3f 93       	push	r19
 3c2:	19 b1       	in	r17, 0x09	; 9
 3c4:	4f ef       	ldi	r20, 0xFF	; 255
 3c6:	01 27       	eor	r16, r17
 3c8:	04 fb       	bst	r16, 4
 3ca:	21 f9       	bld	r18, 1
 3cc:	3b e0       	ldi	r19, 0x0B	; 11
 3ce:	31 c0       	rjmp	.+98     	; 0x432 <usbasploader+0x212>
 3d0:	4e 7f       	andi	r20, 0xFE	; 254
 3d2:	01 2f       	mov	r16, r17
 3d4:	19 b1       	in	r17, 0x09	; 9
 3d6:	21 60       	ori	r18, 0x01	; 1
 3d8:	28 c0       	rjmp	.+80     	; 0x42a <usbasploader+0x20a>
 3da:	10 2f       	mov	r17, r16
 3dc:	4d 7f       	andi	r20, 0xFD	; 253
 3de:	22 60       	ori	r18, 0x02	; 2
 3e0:	00 00       	nop
 3e2:	09 b1       	in	r16, 0x09	; 9
 3e4:	29 c0       	rjmp	.+82     	; 0x438 <usbasploader+0x218>
 3e6:	4b 7f       	andi	r20, 0xFB	; 251
 3e8:	24 60       	ori	r18, 0x04	; 4
 3ea:	01 2f       	mov	r16, r17
 3ec:	00 00       	nop
 3ee:	19 b1       	in	r17, 0x09	; 9
 3f0:	2b c0       	rjmp	.+86     	; 0x448 <usbasploader+0x228>
 3f2:	19 b1       	in	r17, 0x09	; 9
 3f4:	47 7f       	andi	r20, 0xF7	; 247
 3f6:	28 60       	ori	r18, 0x08	; 8
 3f8:	2a c0       	rjmp	.+84     	; 0x44e <usbasploader+0x22e>
 3fa:	4f 7e       	andi	r20, 0xEF	; 239
 3fc:	09 b1       	in	r16, 0x09	; 9
 3fe:	20 61       	ori	r18, 0x10	; 16
 400:	2c c0       	rjmp	.+88     	; 0x45a <usbasploader+0x23a>
 402:	4f 7d       	andi	r20, 0xDF	; 223
 404:	19 b1       	in	r17, 0x09	; 9
 406:	20 62       	ori	r18, 0x20	; 32
 408:	2f c0       	rjmp	.+94     	; 0x468 <usbasploader+0x248>
 40a:	4f 7b       	andi	r20, 0xBF	; 191
 40c:	09 b1       	in	r16, 0x09	; 9
 40e:	20 64       	ori	r18, 0x40	; 64
 410:	32 c0       	rjmp	.+100    	; 0x476 <usbasploader+0x256>
 412:	42 27       	eor	r20, r18
 414:	09 b1       	in	r16, 0x09	; 9
 416:	49 93       	st	Y+, r20
 418:	4f ef       	ldi	r20, 0xFF	; 255
 41a:	00 00       	nop
 41c:	10 27       	eor	r17, r16
 41e:	14 fb       	bst	r17, 4
 420:	20 f9       	bld	r18, 0
 422:	19 b1       	in	r17, 0x09	; 9
 424:	14 71       	andi	r17, 0x14	; 20
 426:	c9 f1       	breq	.+114    	; 0x49a <usbasploader+0x27a>
 428:	29 7f       	andi	r18, 0xF9	; 249
 42a:	91 f2       	breq	.-92     	; 0x3d0 <usbasploader+0x1b0>
 42c:	01 27       	eor	r16, r17
 42e:	04 fb       	bst	r16, 4
 430:	21 f9       	bld	r18, 1
 432:	09 b1       	in	r16, 0x09	; 9
 434:	23 7f       	andi	r18, 0xF3	; 243
 436:	89 f2       	breq	.-94     	; 0x3da <usbasploader+0x1ba>
 438:	31 50       	subi	r19, 0x01	; 1
 43a:	58 f1       	brcs	.+86     	; 0x492 <usbasploader+0x272>
 43c:	10 27       	eor	r17, r16
 43e:	14 fb       	bst	r17, 4
 440:	22 f9       	bld	r18, 2
 442:	19 b1       	in	r17, 0x09	; 9
 444:	27 7e       	andi	r18, 0xE7	; 231
 446:	79 f2       	breq	.-98     	; 0x3e6 <usbasploader+0x1c6>
 448:	01 27       	eor	r16, r17
 44a:	04 fb       	bst	r16, 4
 44c:	23 f9       	bld	r18, 3
 44e:	2f 7c       	andi	r18, 0xCF	; 207
 450:	81 f2       	breq	.-96     	; 0x3f2 <usbasploader+0x1d2>
 452:	09 b1       	in	r16, 0x09	; 9
 454:	10 27       	eor	r17, r16
 456:	14 fb       	bst	r17, 4
 458:	24 f9       	bld	r18, 4
 45a:	2f 79       	andi	r18, 0x9F	; 159
 45c:	71 f2       	breq	.-100    	; 0x3fa <usbasploader+0x1da>
 45e:	00 c0       	rjmp	.+0      	; 0x460 <usbasploader+0x240>
 460:	19 b1       	in	r17, 0x09	; 9
 462:	01 27       	eor	r16, r17
 464:	04 fb       	bst	r16, 4
 466:	25 f9       	bld	r18, 5
 468:	2f 73       	andi	r18, 0x3F	; 63
 46a:	59 f2       	breq	.-106    	; 0x402 <usbasploader+0x1e2>
 46c:	00 c0       	rjmp	.+0      	; 0x46e <usbasploader+0x24e>
 46e:	09 b1       	in	r16, 0x09	; 9
 470:	10 27       	eor	r17, r16
 472:	14 fb       	bst	r17, 4
 474:	26 f9       	bld	r18, 6
 476:	22 30       	cpi	r18, 0x02	; 2
 478:	40 f2       	brcs	.-112    	; 0x40a <usbasploader+0x1ea>
 47a:	00 c0       	rjmp	.+0      	; 0x47c <usbasploader+0x25c>
 47c:	19 b1       	in	r17, 0x09	; 9
 47e:	01 27       	eor	r16, r17
 480:	04 fb       	bst	r16, 4
 482:	27 f9       	bld	r18, 7
 484:	24 30       	cpi	r18, 0x04	; 4
 486:	28 f6       	brcc	.-118    	; 0x412 <usbasploader+0x1f2>
 488:	4f 77       	andi	r20, 0x7F	; 127
 48a:	20 68       	ori	r18, 0x80	; 128
 48c:	19 b1       	in	r17, 0x09	; 9
 48e:	00 00       	nop
 490:	f9 cf       	rjmp	.-14     	; 0x484 <usbasploader+0x264>
 492:	11 e0       	ldi	r17, 0x01	; 1
 494:	1c bb       	out	0x1c, r17	; 28
 496:	00 27       	eor	r16, r16
 498:	17 c0       	rjmp	.+46     	; 0x4c8 <usbasploader+0x2a8>
 49a:	3b 50       	subi	r19, 0x0B	; 11
 49c:	31 95       	neg	r19
 49e:	c3 1b       	sub	r28, r19
 4a0:	d0 40       	sbci	r29, 0x00	; 0
 4a2:	11 e0       	ldi	r17, 0x01	; 1
 4a4:	1c bb       	out	0x1c, r17	; 28
 4a6:	08 81       	ld	r16, Y
 4a8:	03 3c       	cpi	r16, 0xC3	; 195
 4aa:	e9 f0       	breq	.+58     	; 0x4e6 <usbasploader+0x2c6>
 4ac:	0b 34       	cpi	r16, 0x4B	; 75
 4ae:	d9 f0       	breq	.+54     	; 0x4e6 <usbasploader+0x2c6>
 4b0:	20 91 1d 01 	lds	r18, 0x011D
 4b4:	19 81       	ldd	r17, Y+1	; 0x01
 4b6:	11 0f       	add	r17, r17
 4b8:	12 13       	cpse	r17, r18
 4ba:	ed cf       	rjmp	.-38     	; 0x496 <usbasploader+0x276>
 4bc:	09 36       	cpi	r16, 0x69	; 105
 4be:	41 f1       	breq	.+80     	; 0x510 <__stack+0x11>
 4c0:	0d 32       	cpi	r16, 0x2D	; 45
 4c2:	11 f0       	breq	.+4      	; 0x4c8 <usbasploader+0x2a8>
 4c4:	01 3e       	cpi	r16, 0xE1	; 225
 4c6:	39 f7       	brne	.-50     	; 0x496 <usbasploader+0x276>
 4c8:	00 93 24 01 	sts	0x0124, r16
 4cc:	3f 91       	pop	r19
 4ce:	4f 91       	pop	r20
 4d0:	1f 91       	pop	r17
 4d2:	0f 91       	pop	r16
 4d4:	2f 91       	pop	r18
 4d6:	df 91       	pop	r29
 4d8:	cc b3       	in	r28, 0x1c	; 28
 4da:	c0 fd       	sbrc	r28, 0
 4dc:	51 cf       	rjmp	.-350    	; 0x380 <usbasploader+0x160>
 4de:	cf 91       	pop	r28
 4e0:	cf bf       	out	0x3f, r28	; 63
 4e2:	cf 91       	pop	r28
 4e4:	18 95       	reti
 4e6:	20 91 24 01 	lds	r18, 0x0124
 4ea:	22 23       	and	r18, r18
 4ec:	79 f3       	breq	.-34     	; 0x4cc <usbasploader+0x2ac>
 4ee:	10 91 22 01 	lds	r17, 0x0122
 4f2:	11 23       	and	r17, r17
 4f4:	11 f5       	brne	.+68     	; 0x53a <__stack+0x3b>
 4f6:	34 30       	cpi	r19, 0x04	; 4
 4f8:	12 f1       	brmi	.+68     	; 0x53e <__stack+0x3f>
 4fa:	30 93 22 01 	sts	0x0122, r19
 4fe:	20 93 1e 01 	sts	0x011E, r18
 502:	10 91 1f 01 	lds	r17, 0x011F
 506:	3b e0       	ldi	r19, 0x0B	; 11
 508:	31 1b       	sub	r19, r17
 50a:	30 93 1f 01 	sts	0x011F, r19
 50e:	17 c0       	rjmp	.+46     	; 0x53e <__stack+0x3f>
 510:	00 91 22 01 	lds	r16, 0x0122
 514:	01 30       	cpi	r16, 0x01	; 1
 516:	8c f4       	brge	.+34     	; 0x53a <__stack+0x3b>
 518:	0a e5       	ldi	r16, 0x5A	; 90
 51a:	30 91 00 01 	lds	r19, 0x0100
 51e:	34 fd       	sbrc	r19, 4
 520:	10 c0       	rjmp	.+32     	; 0x542 <__stack+0x43>
 522:	00 93 00 01 	sts	0x0100, r16
 526:	c2 e1       	ldi	r28, 0x12	; 18
 528:	d1 e0       	ldi	r29, 0x01	; 1
 52a:	0f c0       	rjmp	.+30     	; 0x54a <__stack+0x4b>
 52c:	27 95       	ror	r18
 52e:	a8 f4       	brcc	.+42     	; 0x55a <__stack+0x5b>
 530:	51 50       	subi	r21, 0x01	; 1
 532:	a9 f4       	brne	.+42     	; 0x55e <__stack+0x5f>
 534:	22 0f       	add	r18, r18
 536:	00 00       	nop
 538:	f9 cf       	rjmp	.-14     	; 0x52c <__stack+0x2d>
 53a:	4a e5       	ldi	r20, 0x5A	; 90
 53c:	03 c0       	rjmp	.+6      	; 0x544 <__stack+0x45>
 53e:	42 ed       	ldi	r20, 0xD2	; 210
 540:	01 c0       	rjmp	.+2      	; 0x544 <__stack+0x45>
 542:	43 2f       	mov	r20, r19
 544:	c4 e1       	ldi	r28, 0x14	; 20
 546:	d0 e0       	ldi	r29, 0x00	; 0
 548:	32 e0       	ldi	r19, 0x02	; 2
 54a:	1a b1       	in	r17, 0x0a	; 10
 54c:	14 61       	ori	r17, 0x14	; 20
 54e:	5c 9a       	sbi	0x0b, 4	; 11
 550:	1a b9       	out	0x0a, r17	; 10
 552:	0b b1       	in	r16, 0x0b	; 11
 554:	20 e4       	ldi	r18, 0x40	; 64
 556:	14 e1       	ldi	r17, 0x14	; 20
 558:	5f 93       	push	r21
 55a:	01 27       	eor	r16, r17
 55c:	56 e0       	ldi	r21, 0x06	; 6
 55e:	0b b9       	out	0x0b, r16	; 11
 560:	27 95       	ror	r18
 562:	20 f4       	brcc	.+8      	; 0x56c <__stack+0x6d>
 564:	51 50       	subi	r21, 0x01	; 1
 566:	21 f4       	brne	.+8      	; 0x570 <__stack+0x71>
 568:	22 0f       	add	r18, r18
 56a:	f9 cf       	rjmp	.-14     	; 0x55e <__stack+0x5f>
 56c:	01 27       	eor	r16, r17
 56e:	56 e0       	ldi	r21, 0x06	; 6
 570:	00 00       	nop
 572:	3b 5a       	subi	r19, 0xAB	; 171
 574:	0b b9       	out	0x0b, r16	; 11
 576:	d0 f2       	brcs	.-76     	; 0x52c <__stack+0x2d>
 578:	27 95       	ror	r18
 57a:	28 f4       	brcc	.+10     	; 0x586 <__stack+0x87>
 57c:	51 50       	subi	r21, 0x01	; 1
 57e:	29 f4       	brne	.+10     	; 0x58a <__stack+0x8b>
 580:	22 0f       	add	r18, r18
 582:	00 00       	nop
 584:	f9 cf       	rjmp	.-14     	; 0x578 <__stack+0x79>
 586:	01 27       	eor	r16, r17
 588:	56 e0       	ldi	r21, 0x06	; 6
 58a:	27 95       	ror	r18
 58c:	0b b9       	out	0x0b, r16	; 11
 58e:	20 f4       	brcc	.+8      	; 0x598 <__stack+0x99>
 590:	51 50       	subi	r21, 0x01	; 1
 592:	21 f4       	brne	.+8      	; 0x59c <__stack+0x9d>
 594:	22 0f       	add	r18, r18
 596:	f9 cf       	rjmp	.-14     	; 0x58a <__stack+0x8b>
 598:	01 27       	eor	r16, r17
 59a:	56 e0       	ldi	r21, 0x06	; 6
 59c:	29 91       	ld	r18, Y+
 59e:	33 23       	and	r19, r19
 5a0:	0b b9       	out	0x0b, r16	; 11
 5a2:	21 f6       	brne	.-120    	; 0x52c <__stack+0x2d>
 5a4:	0b 7e       	andi	r16, 0xEB	; 235
 5a6:	10 91 23 01 	lds	r17, 0x0123
 5aa:	11 0f       	add	r17, r17
 5ac:	c6 51       	subi	r28, 0x16	; 22
 5ae:	d0 40       	sbci	r29, 0x00	; 0
 5b0:	0b b9       	out	0x0b, r16	; 11
 5b2:	11 f0       	breq	.+4      	; 0x5b8 <__stack+0xb9>
 5b4:	10 93 1d 01 	sts	0x011D, r17
 5b8:	11 e0       	ldi	r17, 0x01	; 1
 5ba:	1c bb       	out	0x1c, r17	; 28
 5bc:	00 61       	ori	r16, 0x10	; 16
 5be:	1a b1       	in	r17, 0x0a	; 10
 5c0:	1b 7e       	andi	r17, 0xEB	; 235
 5c2:	40 2f       	mov	r20, r16
 5c4:	4b 7e       	andi	r20, 0xEB	; 235
 5c6:	5f 91       	pop	r21
 5c8:	00 c0       	rjmp	.+0      	; 0x5ca <__stack+0xcb>
 5ca:	00 c0       	rjmp	.+0      	; 0x5cc <__stack+0xcd>
 5cc:	0b b9       	out	0x0b, r16	; 11
 5ce:	1a b9       	out	0x0a, r17	; 10
 5d0:	4b b9       	out	0x0b, r20	; 11
 5d2:	7c cf       	rjmp	.-264    	; 0x4cc <usbasploader+0x2ac>
 5d4:	31 97       	sbiw	r30, 0x01	; 1
 5d6:	80 40       	sbci	r24, 0x00	; 0
 5d8:	e9 f7       	brne	.-6      	; 0x5d4 <__stack+0xd5>
 5da:	08 95       	ret
 5dc:	fc 01       	movw	r30, r24
 5de:	93 81       	ldd	r25, Z+3	; 0x03
 5e0:	84 81       	ldd	r24, Z+4	; 0x04
 5e2:	22 81       	ldd	r18, Z+2	; 0x02
 5e4:	20 33       	cpi	r18, 0x30	; 48
 5e6:	39 f4       	brne	.+14     	; 0x5f6 <__stack+0xf7>
 5e8:	83 70       	andi	r24, 0x03	; 3
 5ea:	e8 2f       	mov	r30, r24
 5ec:	f0 e0       	ldi	r31, 0x00	; 0
 5ee:	ee 5f       	subi	r30, 0xFE	; 254
 5f0:	fe 4f       	sbci	r31, 0xFE	; 254
 5f2:	80 81       	ld	r24, Z
 5f4:	08 95       	ret
 5f6:	20 3a       	cpi	r18, 0xA0	; 160
 5f8:	09 f4       	brne	.+2      	; 0x5fc <__stack+0xfd>
 5fa:	ef c1       	rjmp	.+990    	; 0x9da <_binary_usbasploader_raw_size+0x1ea>
 5fc:	20 3c       	cpi	r18, 0xC0	; 192
 5fe:	19 f4       	brne	.+6      	; 0x606 <__stack+0x107>
 600:	65 81       	ldd	r22, Z+5	; 0x05
 602:	f3 d1       	rcall	.+998    	; 0x9ea <_binary_usbasploader_raw_size+0x1fa>
 604:	03 c0       	rjmp	.+6      	; 0x60c <__stack+0x10d>
 606:	2f 3f       	cpi	r18, 0xFF	; 255
 608:	09 f4       	brne	.+2      	; 0x60c <__stack+0x10d>
 60a:	11 ef       	ldi	r17, 0xF1	; 241
 60c:	80 e0       	ldi	r24, 0x00	; 0
 60e:	08 95       	ret
 610:	1a b8       	out	0x0a, r1	; 10
 612:	88 e0       	ldi	r24, 0x08	; 8
 614:	8b b9       	out	0x0b, r24	; 11
 616:	81 e0       	ldi	r24, 0x01	; 1
 618:	85 bf       	out	0x35, r24	; 53
 61a:	82 e0       	ldi	r24, 0x02	; 2
 61c:	85 bf       	out	0x35, r24	; 53
 61e:	83 e0       	ldi	r24, 0x03	; 3
 620:	d9 df       	rcall	.-78     	; 0x5d4 <__stack+0xd5>
 622:	80 91 3c 01 	lds	r24, 0x013C
 626:	87 7f       	andi	r24, 0xF7	; 247
 628:	21 f4       	brne	.+8      	; 0x632 <__stack+0x133>
 62a:	80 91 3d 01 	lds	r24, 0x013D
 62e:	88 23       	and	r24, r24
 630:	81 f0       	breq	.+32     	; 0x652 <__stack+0x153>
 632:	4b 9b       	sbis	0x09, 3	; 9
 634:	0e c0       	rjmp	.+28     	; 0x652 <__stack+0x153>
 636:	f8 94       	cli
 638:	54 9a       	sbi	0x0a, 4	; 10
 63a:	1b b8       	out	0x0b, r1	; 11
 63c:	1d ba       	out	0x1d, r1	; 29
 63e:	10 92 69 00 	sts	0x0069, r1
 642:	81 e0       	ldi	r24, 0x01	; 1
 644:	85 bf       	out	0x35, r24	; 53
 646:	15 be       	out	0x35, r1	; 53
 648:	e0 91 10 01 	lds	r30, 0x0110
 64c:	f0 91 11 01 	lds	r31, 0x0111
 650:	09 95       	icall
 652:	1e ef       	ldi	r17, 0xFE	; 254
 654:	14 be       	out	0x34, r1	; 52
 656:	80 91 69 00 	lds	r24, 0x0069
 65a:	82 60       	ori	r24, 0x02	; 2
 65c:	80 93 69 00 	sts	0x0069, r24
 660:	e8 9a       	sbi	0x1d, 0	; 29
 662:	54 9a       	sbi	0x0a, 4	; 10
 664:	8c e0       	ldi	r24, 0x0C	; 12
 666:	b6 df       	rcall	.-148    	; 0x5d4 <__stack+0xd5>
 668:	54 98       	cbi	0x0a, 4	; 10
 66a:	78 94       	sei
 66c:	00 91 22 01 	lds	r16, 0x0122
 670:	03 50       	subi	r16, 0x03	; 3
 672:	07 fd       	sbrc	r16, 7
 674:	27 c1       	rjmp	.+590    	; 0x8c4 <_binary_usbasploader_raw_size+0xd4>
 676:	80 91 1f 01 	lds	r24, 0x011F
 67a:	cc e0       	ldi	r28, 0x0C	; 12
 67c:	d0 e0       	ldi	r29, 0x00	; 0
 67e:	c8 1b       	sub	r28, r24
 680:	d1 09       	sbc	r29, r1
 682:	ca 5d       	subi	r28, 0xDA	; 218
 684:	de 4f       	sbci	r29, 0xFE	; 254
 686:	80 91 1e 01 	lds	r24, 0x011E
 68a:	8d 32       	cpi	r24, 0x2D	; 45
 68c:	09 f0       	breq	.+2      	; 0x690 <__stack+0x191>
 68e:	b3 c0       	rjmp	.+358    	; 0x7f6 <_binary_usbasploader_raw_size+0x6>
 690:	08 30       	cpi	r16, 0x08	; 8
 692:	09 f0       	breq	.+2      	; 0x696 <__stack+0x197>
 694:	15 c1       	rjmp	.+554    	; 0x8c0 <_binary_usbasploader_raw_size+0xd0>
 696:	83 ec       	ldi	r24, 0xC3	; 195
 698:	80 93 12 01 	sts	0x0112, r24
 69c:	8a e5       	ldi	r24, 0x5A	; 90
 69e:	80 93 00 01 	sts	0x0100, r24
 6a2:	10 92 06 01 	sts	0x0106, r1
 6a6:	88 81       	ld	r24, Y
 6a8:	80 76       	andi	r24, 0x60	; 96
 6aa:	29 81       	ldd	r18, Y+1	; 0x01
 6ac:	88 23       	and	r24, r24
 6ae:	99 f1       	breq	.+102    	; 0x716 <__stack+0x217>
 6b0:	87 e0       	ldi	r24, 0x07	; 7
 6b2:	91 e0       	ldi	r25, 0x01	; 1
 6b4:	90 93 21 01 	sts	0x0121, r25
 6b8:	80 93 20 01 	sts	0x0120, r24
 6bc:	23 30       	cpi	r18, 0x03	; 3
 6be:	31 f4       	brne	.+12     	; 0x6cc <__stack+0x1cd>
 6c0:	ce 01       	movw	r24, r28
 6c2:	8c df       	rcall	.-232    	; 0x5dc <__stack+0xdd>
 6c4:	80 93 0a 01 	sts	0x010A, r24
 6c8:	24 e0       	ldi	r18, 0x04	; 4
 6ca:	8b c0       	rjmp	.+278    	; 0x7e2 <__stack+0x2e3>
 6cc:	25 30       	cpi	r18, 0x05	; 5
 6ce:	f9 f0       	breq	.+62     	; 0x70e <__stack+0x20f>
 6d0:	2a 30       	cpi	r18, 0x0A	; 10
 6d2:	e9 f0       	breq	.+58     	; 0x70e <__stack+0x20f>
 6d4:	82 2f       	mov	r24, r18
 6d6:	84 50       	subi	r24, 0x04	; 4
 6d8:	86 30       	cpi	r24, 0x06	; 6
 6da:	98 f4       	brcc	.+38     	; 0x702 <__stack+0x203>
 6dc:	8a 81       	ldd	r24, Y+2	; 0x02
 6de:	9b 81       	ldd	r25, Y+3	; 0x03
 6e0:	90 93 0c 01 	sts	0x010C, r25
 6e4:	80 93 0b 01 	sts	0x010B, r24
 6e8:	29 30       	cpi	r18, 0x09	; 9
 6ea:	99 f0       	breq	.+38     	; 0x712 <__stack+0x213>
 6ec:	8e 81       	ldd	r24, Y+6	; 0x06
 6ee:	80 93 0d 01 	sts	0x010D, r24
 6f2:	8d 81       	ldd	r24, Y+5	; 0x05
 6f4:	82 70       	andi	r24, 0x02	; 2
 6f6:	80 93 0e 01 	sts	0x010E, r24
 6fa:	20 93 0f 01 	sts	0x010F, r18
 6fe:	2f ef       	ldi	r18, 0xFF	; 255
 700:	69 c0       	rjmp	.+210    	; 0x7d4 <__stack+0x2d5>
 702:	22 30       	cpi	r18, 0x02	; 2
 704:	11 f4       	brne	.+4      	; 0x70a <__stack+0x20b>
 706:	1e 7f       	andi	r17, 0xFE	; 254
 708:	04 c0       	rjmp	.+8      	; 0x712 <__stack+0x213>
 70a:	11 60       	ori	r17, 0x01	; 1
 70c:	02 c0       	rjmp	.+4      	; 0x712 <__stack+0x213>
 70e:	21 e0       	ldi	r18, 0x01	; 1
 710:	68 c0       	rjmp	.+208    	; 0x7e2 <__stack+0x2e3>
 712:	20 e0       	ldi	r18, 0x00	; 0
 714:	66 c0       	rjmp	.+204    	; 0x7e2 <__stack+0x2e3>
 716:	8a 81       	ldd	r24, Y+2	; 0x02
 718:	10 92 1b 01 	sts	0x011B, r1
 71c:	21 11       	cpse	r18, r1
 71e:	06 c0       	rjmp	.+12     	; 0x72c <__stack+0x22d>
 720:	10 92 1c 01 	sts	0x011C, r1
 724:	8b e1       	ldi	r24, 0x1B	; 27
 726:	91 e0       	ldi	r25, 0x01	; 1
 728:	22 e0       	ldi	r18, 0x02	; 2
 72a:	4e c0       	rjmp	.+156    	; 0x7c8 <__stack+0x2c9>
 72c:	25 30       	cpi	r18, 0x05	; 5
 72e:	19 f4       	brne	.+6      	; 0x736 <__stack+0x237>
 730:	80 93 23 01 	sts	0x0123, r24
 734:	3d c0       	rjmp	.+122    	; 0x7b0 <__stack+0x2b1>
 736:	26 30       	cpi	r18, 0x06	; 6
 738:	a9 f5       	brne	.+106    	; 0x7a4 <__stack+0x2a5>
 73a:	9b 81       	ldd	r25, Y+3	; 0x03
 73c:	91 30       	cpi	r25, 0x01	; 1
 73e:	19 f4       	brne	.+6      	; 0x746 <__stack+0x247>
 740:	88 e9       	ldi	r24, 0x98	; 152
 742:	98 e3       	ldi	r25, 0x38	; 56
 744:	04 c0       	rjmp	.+8      	; 0x74e <__stack+0x24f>
 746:	92 30       	cpi	r25, 0x02	; 2
 748:	41 f4       	brne	.+16     	; 0x75a <__stack+0x25b>
 74a:	86 e8       	ldi	r24, 0x86	; 134
 74c:	98 e3       	ldi	r25, 0x38	; 56
 74e:	90 93 21 01 	sts	0x0121, r25
 752:	80 93 20 01 	sts	0x0120, r24
 756:	22 e1       	ldi	r18, 0x12	; 18
 758:	21 c0       	rjmp	.+66     	; 0x79c <__stack+0x29d>
 75a:	93 30       	cpi	r25, 0x03	; 3
 75c:	f1 f4       	brne	.+60     	; 0x79a <__stack+0x29b>
 75e:	81 11       	cpse	r24, r1
 760:	08 c0       	rjmp	.+16     	; 0x772 <__stack+0x273>
 762:	84 ed       	ldi	r24, 0xD4	; 212
 764:	98 e3       	ldi	r25, 0x38	; 56
 766:	90 93 21 01 	sts	0x0121, r25
 76a:	80 93 20 01 	sts	0x0120, r24
 76e:	24 e0       	ldi	r18, 0x04	; 4
 770:	15 c0       	rjmp	.+42     	; 0x79c <__stack+0x29d>
 772:	81 30       	cpi	r24, 0x01	; 1
 774:	41 f4       	brne	.+16     	; 0x786 <__stack+0x287>
 776:	88 eb       	ldi	r24, 0xB8	; 184
 778:	98 e3       	ldi	r25, 0x38	; 56
 77a:	90 93 21 01 	sts	0x0121, r25
 77e:	80 93 20 01 	sts	0x0120, r24
 782:	2c e1       	ldi	r18, 0x1C	; 28
 784:	0b c0       	rjmp	.+22     	; 0x79c <__stack+0x29d>
 786:	82 30       	cpi	r24, 0x02	; 2
 788:	41 f4       	brne	.+16     	; 0x79a <__stack+0x29b>
 78a:	8a ea       	ldi	r24, 0xAA	; 170
 78c:	98 e3       	ldi	r25, 0x38	; 56
 78e:	90 93 21 01 	sts	0x0121, r25
 792:	80 93 20 01 	sts	0x0120, r24
 796:	2e e0       	ldi	r18, 0x0E	; 14
 798:	01 c0       	rjmp	.+2      	; 0x79c <__stack+0x29d>
 79a:	20 e0       	ldi	r18, 0x00	; 0
 79c:	80 e4       	ldi	r24, 0x40	; 64
 79e:	80 93 06 01 	sts	0x0106, r24
 7a2:	16 c0       	rjmp	.+44     	; 0x7d0 <__stack+0x2d1>
 7a4:	28 30       	cpi	r18, 0x08	; 8
 7a6:	69 f0       	breq	.+26     	; 0x7c2 <__stack+0x2c3>
 7a8:	29 30       	cpi	r18, 0x09	; 9
 7aa:	29 f4       	brne	.+10     	; 0x7b6 <__stack+0x2b7>
 7ac:	80 93 25 01 	sts	0x0125, r24
 7b0:	8b e1       	ldi	r24, 0x1B	; 27
 7b2:	91 e0       	ldi	r25, 0x01	; 1
 7b4:	04 c0       	rjmp	.+8      	; 0x7be <__stack+0x2bf>
 7b6:	8b e1       	ldi	r24, 0x1B	; 27
 7b8:	91 e0       	ldi	r25, 0x01	; 1
 7ba:	2a 30       	cpi	r18, 0x0A	; 10
 7bc:	21 f0       	breq	.+8      	; 0x7c6 <__stack+0x2c7>
 7be:	20 e0       	ldi	r18, 0x00	; 0
 7c0:	03 c0       	rjmp	.+6      	; 0x7c8 <__stack+0x2c9>
 7c2:	85 e2       	ldi	r24, 0x25	; 37
 7c4:	91 e0       	ldi	r25, 0x01	; 1
 7c6:	21 e0       	ldi	r18, 0x01	; 1
 7c8:	90 93 21 01 	sts	0x0121, r25
 7cc:	80 93 20 01 	sts	0x0120, r24
 7d0:	2f 3f       	cpi	r18, 0xFF	; 255
 7d2:	39 f4       	brne	.+14     	; 0x7e2 <__stack+0x2e3>
 7d4:	88 81       	ld	r24, Y
 7d6:	87 fd       	sbrc	r24, 7
 7d8:	2e 81       	ldd	r18, Y+6	; 0x06
 7da:	80 e8       	ldi	r24, 0x80	; 128
 7dc:	80 93 06 01 	sts	0x0106, r24
 7e0:	07 c0       	rjmp	.+14     	; 0x7f0 <_binary_usbasploader_raw_size>
 7e2:	8f 81       	ldd	r24, Y+7	; 0x07
 7e4:	81 11       	cpse	r24, r1
 7e6:	04 c0       	rjmp	.+8      	; 0x7f0 <_binary_usbasploader_raw_size>
 7e8:	8e 81       	ldd	r24, Y+6	; 0x06
 7ea:	82 17       	cp	r24, r18
 7ec:	08 f4       	brcc	.+2      	; 0x7f0 <_binary_usbasploader_raw_size>
 7ee:	28 2f       	mov	r18, r24
 7f0:	20 93 01 01 	sts	0x0101, r18
 7f4:	65 c0       	rjmp	.+202    	; 0x8c0 <_binary_usbasploader_raw_size+0xd0>
 7f6:	80 91 06 01 	lds	r24, 0x0106
 7fa:	87 ff       	sbrs	r24, 7
 7fc:	61 c0       	rjmp	.+194    	; 0x8c0 <_binary_usbasploader_raw_size+0xd0>
 7fe:	80 91 0d 01 	lds	r24, 0x010D
 802:	80 17       	cp	r24, r16
 804:	08 f4       	brcc	.+2      	; 0x808 <_binary_usbasploader_raw_size+0x18>
 806:	08 2f       	mov	r16, r24
 808:	80 1b       	sub	r24, r16
 80a:	80 93 0d 01 	sts	0x010D, r24
 80e:	dd 24       	eor	r13, r13
 810:	d3 94       	inc	r13
 812:	81 11       	cpse	r24, r1
 814:	d1 2c       	mov	r13, r1
 816:	80 91 0f 01 	lds	r24, 0x010F
 81a:	87 30       	cpi	r24, 0x07	; 7
 81c:	b0 f0       	brcs	.+44     	; 0x84a <_binary_usbasploader_raw_size+0x5a>
 81e:	7e 01       	movw	r14, r28
 820:	0f c0       	rjmp	.+30     	; 0x840 <_binary_usbasploader_raw_size+0x50>
 822:	d7 01       	movw	r26, r14
 824:	6d 91       	ld	r22, X+
 826:	7d 01       	movw	r14, r26
 828:	80 91 0b 01 	lds	r24, 0x010B
 82c:	90 91 0c 01 	lds	r25, 0x010C
 830:	9c 01       	movw	r18, r24
 832:	2f 5f       	subi	r18, 0xFF	; 255
 834:	3f 4f       	sbci	r19, 0xFF	; 255
 836:	30 93 0c 01 	sts	0x010C, r19
 83a:	20 93 0b 01 	sts	0x010B, r18
 83e:	d5 d0       	rcall	.+426    	; 0x9ea <_binary_usbasploader_raw_size+0x1fa>
 840:	8e 2d       	mov	r24, r14
 842:	8c 1b       	sub	r24, r28
 844:	80 17       	cp	r24, r16
 846:	68 f3       	brcs	.-38     	; 0x822 <_binary_usbasploader_raw_size+0x32>
 848:	38 c0       	rjmp	.+112    	; 0x8ba <_binary_usbasploader_raw_size+0xca>
 84a:	80 91 0e 01 	lds	r24, 0x010E
 84e:	e0 91 0b 01 	lds	r30, 0x010B
 852:	f0 91 0c 01 	lds	r31, 0x010C
 856:	de 01       	movw	r26, r28
 858:	00 fd       	sbrc	r16, 0
 85a:	03 95       	inc	r16
 85c:	02 50       	subi	r16, 0x02	; 2
 85e:	48 f1       	brcs	.+82     	; 0x8b2 <_binary_usbasploader_raw_size+0xc2>
 860:	f8 33       	cpi	r31, 0x38	; 56
 862:	38 f5       	brcc	.+78     	; 0x8b2 <_binary_usbasploader_raw_size+0xc2>
 864:	22 d0       	rcall	.+68     	; 0x8aa <_binary_usbasploader_raw_size+0xba>
 866:	f8 94       	cli
 868:	0d 90       	ld	r0, X+
 86a:	1d 90       	ld	r1, X+
 86c:	21 e0       	ldi	r18, 0x01	; 1
 86e:	17 d0       	rcall	.+46     	; 0x89e <_binary_usbasploader_raw_size+0xae>
 870:	2e 2f       	mov	r18, r30
 872:	2e 5f       	subi	r18, 0xFE	; 254
 874:	2f 77       	andi	r18, 0x7F	; 127
 876:	31 f0       	breq	.+12     	; 0x884 <_binary_usbasploader_raw_size+0x94>
 878:	dd 20       	and	r13, r13
 87a:	79 f0       	breq	.+30     	; 0x89a <_binary_usbasploader_raw_size+0xaa>
 87c:	88 23       	and	r24, r24
 87e:	69 f0       	breq	.+26     	; 0x89a <_binary_usbasploader_raw_size+0xaa>
 880:	00 30       	cpi	r16, 0x00	; 0
 882:	59 f4       	brne	.+22     	; 0x89a <_binary_usbasploader_raw_size+0xaa>
 884:	23 e0       	ldi	r18, 0x03	; 3
 886:	0b d0       	rcall	.+22     	; 0x89e <_binary_usbasploader_raw_size+0xae>
 888:	10 d0       	rcall	.+32     	; 0x8aa <_binary_usbasploader_raw_size+0xba>
 88a:	25 e0       	ldi	r18, 0x05	; 5
 88c:	08 d0       	rcall	.+16     	; 0x89e <_binary_usbasploader_raw_size+0xae>
 88e:	0d d0       	rcall	.+26     	; 0x8aa <_binary_usbasploader_raw_size+0xba>
 890:	07 b6       	in	r0, 0x37	; 55
 892:	06 fe       	sbrs	r0, 6
 894:	02 c0       	rjmp	.+4      	; 0x89a <_binary_usbasploader_raw_size+0xaa>
 896:	21 e1       	ldi	r18, 0x11	; 17
 898:	02 d0       	rcall	.+4      	; 0x89e <_binary_usbasploader_raw_size+0xae>
 89a:	32 96       	adiw	r30, 0x02	; 2
 89c:	df cf       	rjmp	.-66     	; 0x85c <_binary_usbasploader_raw_size+0x6c>
 89e:	f8 94       	cli
 8a0:	27 bf       	out	0x37, r18	; 55
 8a2:	e8 95       	spm
 8a4:	11 24       	eor	r1, r1
 8a6:	78 94       	sei
 8a8:	08 95       	ret
 8aa:	07 b6       	in	r0, 0x37	; 55
 8ac:	00 fc       	sbrc	r0, 0
 8ae:	fd cf       	rjmp	.-6      	; 0x8aa <_binary_usbasploader_raw_size+0xba>
 8b0:	08 95       	ret
 8b2:	f0 93 0c 01 	sts	0x010C, r31
 8b6:	e0 93 0b 01 	sts	0x010B, r30
 8ba:	d1 10       	cpse	r13, r1
 8bc:	10 92 01 01 	sts	0x0101, r1
 8c0:	10 92 22 01 	sts	0x0122, r1
 8c4:	80 91 00 01 	lds	r24, 0x0100
 8c8:	84 ff       	sbrs	r24, 4
 8ca:	71 c0       	rjmp	.+226    	; 0x9ae <_binary_usbasploader_raw_size+0x1be>
 8cc:	80 91 01 01 	lds	r24, 0x0101
 8d0:	8f 3f       	cpi	r24, 0xFF	; 255
 8d2:	09 f4       	brne	.+2      	; 0x8d6 <_binary_usbasploader_raw_size+0xe6>
 8d4:	6c c0       	rjmp	.+216    	; 0x9ae <_binary_usbasploader_raw_size+0x1be>
 8d6:	08 2f       	mov	r16, r24
 8d8:	89 30       	cpi	r24, 0x09	; 9
 8da:	08 f0       	brcs	.+2      	; 0x8de <_binary_usbasploader_raw_size+0xee>
 8dc:	08 e0       	ldi	r16, 0x08	; 8
 8de:	80 1b       	sub	r24, r16
 8e0:	80 93 01 01 	sts	0x0101, r24
 8e4:	80 91 12 01 	lds	r24, 0x0112
 8e8:	98 e8       	ldi	r25, 0x88	; 136
 8ea:	89 27       	eor	r24, r25
 8ec:	80 93 12 01 	sts	0x0112, r24
 8f0:	00 23       	and	r16, r16
 8f2:	09 f4       	brne	.+2      	; 0x8f6 <_binary_usbasploader_raw_size+0x106>
 8f4:	4b c0       	rjmp	.+150    	; 0x98c <_binary_usbasploader_raw_size+0x19c>
 8f6:	80 91 06 01 	lds	r24, 0x0106
 8fa:	87 ff       	sbrs	r24, 7
 8fc:	29 c0       	rjmp	.+82     	; 0x950 <_binary_usbasploader_raw_size+0x160>
 8fe:	80 91 0d 01 	lds	r24, 0x010D
 902:	80 17       	cp	r24, r16
 904:	08 f4       	brcc	.+2      	; 0x908 <_binary_usbasploader_raw_size+0x118>
 906:	08 2f       	mov	r16, r24
 908:	80 1b       	sub	r24, r16
 90a:	80 93 0d 01 	sts	0x010D, r24
 90e:	d0 90 0f 01 	lds	r13, 0x010F
 912:	c3 e1       	ldi	r28, 0x13	; 19
 914:	d1 e0       	ldi	r29, 0x01	; 1
 916:	15 c0       	rjmp	.+42     	; 0x942 <_binary_usbasploader_raw_size+0x152>
 918:	e0 90 0b 01 	lds	r14, 0x010B
 91c:	f0 90 0c 01 	lds	r15, 0x010C
 920:	b6 e0       	ldi	r27, 0x06	; 6
 922:	bd 15       	cp	r27, r13
 924:	18 f4       	brcc	.+6      	; 0x92c <_binary_usbasploader_raw_size+0x13c>
 926:	c7 01       	movw	r24, r14
 928:	58 d0       	rcall	.+176    	; 0x9da <_binary_usbasploader_raw_size+0x1ea>
 92a:	02 c0       	rjmp	.+4      	; 0x930 <_binary_usbasploader_raw_size+0x140>
 92c:	f7 01       	movw	r30, r14
 92e:	84 91       	lpm	r24, Z
 930:	88 83       	st	Y, r24
 932:	21 96       	adiw	r28, 0x01	; 1
 934:	ff ef       	ldi	r31, 0xFF	; 255
 936:	ef 1a       	sub	r14, r31
 938:	ff 0a       	sbc	r15, r31
 93a:	f0 92 0c 01 	sts	0x010C, r15
 93e:	e0 92 0b 01 	sts	0x010B, r14
 942:	83 e1       	ldi	r24, 0x13	; 19
 944:	91 e0       	ldi	r25, 0x01	; 1
 946:	2c 2f       	mov	r18, r28
 948:	28 1b       	sub	r18, r24
 94a:	20 17       	cp	r18, r16
 94c:	28 f3       	brcs	.-54     	; 0x918 <_binary_usbasploader_raw_size+0x128>
 94e:	1c c0       	rjmp	.+56     	; 0x988 <_binary_usbasploader_raw_size+0x198>
 950:	e0 91 20 01 	lds	r30, 0x0120
 954:	f0 91 21 01 	lds	r31, 0x0121
 958:	a3 e1       	ldi	r26, 0x13	; 19
 95a:	b1 e0       	ldi	r27, 0x01	; 1
 95c:	86 ff       	sbrs	r24, 6
 95e:	09 c0       	rjmp	.+18     	; 0x972 <_binary_usbasploader_raw_size+0x182>
 960:	84 91       	lpm	r24, Z
 962:	8d 93       	st	X+, r24
 964:	31 96       	adiw	r30, 0x01	; 1
 966:	83 e1       	ldi	r24, 0x13	; 19
 968:	91 e0       	ldi	r25, 0x01	; 1
 96a:	80 0f       	add	r24, r16
 96c:	8a 13       	cpse	r24, r26
 96e:	f8 cf       	rjmp	.-16     	; 0x960 <_binary_usbasploader_raw_size+0x170>
 970:	07 c0       	rjmp	.+14     	; 0x980 <_binary_usbasploader_raw_size+0x190>
 972:	81 91       	ld	r24, Z+
 974:	8d 93       	st	X+, r24
 976:	83 e1       	ldi	r24, 0x13	; 19
 978:	91 e0       	ldi	r25, 0x01	; 1
 97a:	80 0f       	add	r24, r16
 97c:	8a 13       	cpse	r24, r26
 97e:	f9 cf       	rjmp	.-14     	; 0x972 <_binary_usbasploader_raw_size+0x182>
 980:	f0 93 21 01 	sts	0x0121, r31
 984:	e0 93 20 01 	sts	0x0120, r30
 988:	09 30       	cpi	r16, 0x09	; 9
 98a:	58 f4       	brcc	.+22     	; 0x9a2 <_binary_usbasploader_raw_size+0x1b2>
 98c:	60 2f       	mov	r22, r16
 98e:	83 e1       	ldi	r24, 0x13	; 19
 990:	91 e0       	ldi	r25, 0x01	; 1
 992:	ef dc       	rcall	.-1570   	; 0x372 <usbasploader+0x152>
 994:	0c 5f       	subi	r16, 0xFC	; 252
 996:	0c 30       	cpi	r16, 0x0C	; 12
 998:	41 f0       	breq	.+16     	; 0x9aa <_binary_usbasploader_raw_size+0x1ba>
 99a:	8f ef       	ldi	r24, 0xFF	; 255
 99c:	80 93 01 01 	sts	0x0101, r24
 9a0:	04 c0       	rjmp	.+8      	; 0x9aa <_binary_usbasploader_raw_size+0x1ba>
 9a2:	8f ef       	ldi	r24, 0xFF	; 255
 9a4:	80 93 01 01 	sts	0x0101, r24
 9a8:	0e e1       	ldi	r16, 0x1E	; 30
 9aa:	00 93 00 01 	sts	0x0100, r16
 9ae:	84 e1       	ldi	r24, 0x14	; 20
 9b0:	99 b1       	in	r25, 0x09	; 9
 9b2:	94 71       	andi	r25, 0x14	; 20
 9b4:	31 f4       	brne	.+12     	; 0x9c2 <_binary_usbasploader_raw_size+0x1d2>
 9b6:	81 50       	subi	r24, 0x01	; 1
 9b8:	d9 f7       	brne	.-10     	; 0x9b0 <_binary_usbasploader_raw_size+0x1c0>
 9ba:	10 92 23 01 	sts	0x0123, r1
 9be:	10 92 1d 01 	sts	0x011D, r1
 9c2:	10 31       	cpi	r17, 0x10	; 16
 9c4:	18 f0       	brcs	.+6      	; 0x9cc <_binary_usbasploader_raw_size+0x1dc>
 9c6:	4b 99       	sbic	0x09, 3	; 9
 9c8:	10 51       	subi	r17, 0x10	; 16
 9ca:	04 c0       	rjmp	.+8      	; 0x9d4 <_binary_usbasploader_raw_size+0x1e4>
 9cc:	12 30       	cpi	r17, 0x02	; 2
 9ce:	10 f0       	brcs	.+4      	; 0x9d4 <_binary_usbasploader_raw_size+0x1e4>
 9d0:	4b 9b       	sbis	0x09, 3	; 9
 9d2:	12 50       	subi	r17, 0x02	; 2
 9d4:	11 11       	cpse	r17, r1
 9d6:	4a ce       	rjmp	.-876    	; 0x66c <__stack+0x16d>
 9d8:	2e ce       	rjmp	.-932    	; 0x636 <__stack+0x137>
 9da:	f9 99       	sbic	0x1f, 1	; 31
 9dc:	fe cf       	rjmp	.-4      	; 0x9da <_binary_usbasploader_raw_size+0x1ea>
 9de:	92 bd       	out	0x22, r25	; 34
 9e0:	81 bd       	out	0x21, r24	; 33
 9e2:	f8 9a       	sbi	0x1f, 0	; 31
 9e4:	99 27       	eor	r25, r25
 9e6:	80 b5       	in	r24, 0x20	; 32
 9e8:	08 95       	ret
 9ea:	26 2f       	mov	r18, r22
 9ec:	f9 99       	sbic	0x1f, 1	; 31
 9ee:	fe cf       	rjmp	.-4      	; 0x9ec <_binary_usbasploader_raw_size+0x1fc>
 9f0:	1f ba       	out	0x1f, r1	; 31
 9f2:	92 bd       	out	0x22, r25	; 34
 9f4:	81 bd       	out	0x21, r24	; 33
 9f6:	20 bd       	out	0x20, r18	; 32
 9f8:	0f b6       	in	r0, 0x3f	; 63
 9fa:	f8 94       	cli
 9fc:	fa 9a       	sbi	0x1f, 2	; 31
 9fe:	f9 9a       	sbi	0x1f, 1	; 31
 a00:	0f be       	out	0x3f, r0	; 63
 a02:	01 96       	adiw	r24, 0x01	; 1
 a04:	08 95       	ret
 a06:	f8 94       	cli
 a08:	ff cf       	rjmp	.-2      	; 0xa08 <_binary_usbasploader_raw_size+0x218>
 a0a:	5a ff       	.word	0xff5a	; ????
 a0c:	1e 94 06 00 	call	0x4000c	; 0x4000c <__data_load_end+0x3f414>

00000a10 <memcpy_PF>:
 a10:	fa 01       	movw	r30, r20
 a12:	dc 01       	movw	r26, r24
 a14:	02 c0       	rjmp	.+4      	; 0xa1a <memcpy_PF+0xa>
 a16:	05 90       	lpm	r0, Z+
 a18:	0d 92       	st	X+, r0
 a1a:	21 50       	subi	r18, 0x01	; 1
 a1c:	30 40       	sbci	r19, 0x00	; 0
 a1e:	d8 f7       	brcc	.-10     	; 0xa16 <memcpy_PF+0x6>
 a20:	08 95       	ret

00000a22 <main>:
}
#endif

// #pragma GCC diagnostic ignored "-Wno-pointer-to-int-cast"
int main(void)
{
 a22:	af 92       	push	r10
 a24:	bf 92       	push	r11
 a26:	cf 92       	push	r12
 a28:	df 92       	push	r13
 a2a:	ef 92       	push	r14
 a2c:	ff 92       	push	r15
 a2e:	0f 93       	push	r16
 a30:	1f 93       	push	r17
 a32:	cf 93       	push	r28
 a34:	df 93       	push	r29
 a36:	cd b7       	in	r28, 0x3d	; 61
 a38:	de b7       	in	r29, 0x3e	; 62
 a3a:	c0 58       	subi	r28, 0x80	; 128
 a3c:	d1 09       	sbc	r29, r1
 a3e:	0f b6       	in	r0, 0x3f	; 63
 a40:	f8 94       	cli
 a42:	de bf       	out	0x3e, r29	; 62
 a44:	0f be       	out	0x3f, r0	; 63
 a46:	cd bf       	out	0x3d, r28	; 61
    size_t  i;
    uint8_t buffer[SPM_PAGESIZE];
    
    wdt_disable();
 a48:	88 e1       	ldi	r24, 0x18	; 24
 a4a:	0f b6       	in	r0, 0x3f	; 63
 a4c:	f8 94       	cli
 a4e:	80 93 60 00 	sts	0x0060, r24
 a52:	10 92 60 00 	sts	0x0060, r1
 a56:	0f be       	out	0x3f, r0	; 63
    cli();
 a58:	f8 94       	cli

    // check if firmware would change...
    buffer[0]=0;
 a5a:	19 82       	std	Y+1, r1	; 0x01
      uint16_t a, b;
#if (FLASHEND > 65535)
      a=pgm_read_word_far(FULLCORRECTFLASHADDRESS(&new_firmware[i]));
      b=pgm_read_word_far(NEW_BOOTLOADER_ADDRESS+i);
#else
      a=pgm_read_word(FULLCORRECTFLASHADDRESS(&new_firmware[i]));
 a5c:	20 91 00 01 	lds	r18, 0x0100
 a60:	30 91 01 01 	lds	r19, 0x0101
    wdt_disable();
    cli();

    // check if firmware would change...
    buffer[0]=0;
    for (i=0;i<SIZEOF_new_firmware;i+=2) {
 a64:	80 e0       	ldi	r24, 0x00	; 0
 a66:	90 e0       	ldi	r25, 0x00	; 0
  return result;
}
#endif

// #pragma GCC diagnostic ignored "-Wno-pointer-to-int-cast"
int main(void)
 a68:	f9 01       	movw	r30, r18
 a6a:	e8 0f       	add	r30, r24
 a6c:	f9 1f       	adc	r31, r25
      uint16_t a, b;
#if (FLASHEND > 65535)
      a=pgm_read_word_far(FULLCORRECTFLASHADDRESS(&new_firmware[i]));
      b=pgm_read_word_far(NEW_BOOTLOADER_ADDRESS+i);
#else
      a=pgm_read_word(FULLCORRECTFLASHADDRESS(&new_firmware[i]));
 a6e:	65 91       	lpm	r22, Z+
 a70:	74 91       	lpm	r23, Z
  return result;
}
#endif

// #pragma GCC diagnostic ignored "-Wno-pointer-to-int-cast"
int main(void)
 a72:	fc 01       	movw	r30, r24
 a74:	f8 5c       	subi	r31, 0xC8	; 200
#if (FLASHEND > 65535)
      a=pgm_read_word_far(FULLCORRECTFLASHADDRESS(&new_firmware[i]));
      b=pgm_read_word_far(NEW_BOOTLOADER_ADDRESS+i);
#else
      a=pgm_read_word(FULLCORRECTFLASHADDRESS(&new_firmware[i]));
      b=pgm_read_word(NEW_BOOTLOADER_ADDRESS+i);
 a76:	45 91       	lpm	r20, Z+
 a78:	54 91       	lpm	r21, Z
#endif
      if (a!=b) {
 a7a:	64 17       	cp	r22, r20
 a7c:	75 07       	cpc	r23, r21
 a7e:	19 f0       	breq	.+6      	; 0xa86 <main+0x64>
	buffer[0]=1;
 a80:	81 e0       	ldi	r24, 0x01	; 1
 a82:	89 83       	std	Y+1, r24	; 0x01
	break;
 a84:	05 c0       	rjmp	.+10     	; 0xa90 <main+0x6e>
    wdt_disable();
    cli();

    // check if firmware would change...
    buffer[0]=0;
    for (i=0;i<SIZEOF_new_firmware;i+=2) {
 a86:	02 96       	adiw	r24, 0x02	; 2
 a88:	80 3f       	cpi	r24, 0xF0	; 240
 a8a:	47 e0       	ldi	r20, 0x07	; 7
 a8c:	94 07       	cpc	r25, r20
 a8e:	61 f7       	brne	.-40     	; 0xa68 <main+0x46>
    }



    // need to change the firmware...
    if (buffer[0]) {
 a90:	89 81       	ldd	r24, Y+1	; 0x01
 a92:	88 23       	and	r24, r24
 a94:	09 f4       	brne	.+2      	; 0xa98 <main+0x76>
 a96:	92 c0       	rjmp	.+292    	; 0xbbc <main+0x19a>
 a98:	68 e6       	ldi	r22, 0x68	; 104
 a9a:	c6 2e       	mov	r12, r22
 a9c:	68 e3       	ldi	r22, 0x38	; 56
 a9e:	d6 2e       	mov	r13, r22
 aa0:	e1 2c       	mov	r14, r1
 aa2:	f1 2c       	mov	r15, r1

      // A
      // copy the current "bootloader__do_spm" to tempoary position via std. "bootloader__do_spm"
      for (i=0;i<TEMP_SPM_BLKSIZE;i+=SPM_PAGESIZE) {
	mypgm_WRITEpage(TEMP_SPM_PAGEADR+i, buffer, mypgm_readpage(funcaddr___bootloader__do_spm+i, buffer, sizeof(buffer)), do_spm);
 aa4:	20 e8       	ldi	r18, 0x80	; 128
 aa6:	30 e0       	ldi	r19, 0x00	; 0
 aa8:	ae 01       	movw	r20, r28
 aaa:	4f 5f       	subi	r20, 0xFF	; 255
 aac:	5f 4f       	sbci	r21, 0xFF	; 255
 aae:	c7 01       	movw	r24, r14
 ab0:	b6 01       	movw	r22, r12
 ab2:	1c db       	rcall	.-2504   	; 0xec <mypgm_readpage>
 ab4:	9c 01       	movw	r18, r24
 ab6:	c7 01       	movw	r24, r14
  return result;
}
#endif

// #pragma GCC diagnostic ignored "-Wno-pointer-to-int-cast"
int main(void)
 ab8:	b6 01       	movw	r22, r12
 aba:	68 56       	subi	r22, 0x68	; 104
 abc:	7a 4f       	sbci	r23, 0xFA	; 250
 abe:	8f 4f       	sbci	r24, 0xFF	; 255
 ac0:	9f 4f       	sbci	r25, 0xFF	; 255
 ac2:	08 e4       	ldi	r16, 0x48	; 72
    if (buffer[0]) {

      // A
      // copy the current "bootloader__do_spm" to tempoary position via std. "bootloader__do_spm"
      for (i=0;i<TEMP_SPM_BLKSIZE;i+=SPM_PAGESIZE) {
	mypgm_WRITEpage(TEMP_SPM_PAGEADR+i, buffer, mypgm_readpage(funcaddr___bootloader__do_spm+i, buffer, sizeof(buffer)), do_spm);
 ac4:	10 e0       	ldi	r17, 0x00	; 0
 ac6:	ae 01       	movw	r20, r28
 ac8:	4f 5f       	subi	r20, 0xFF	; 255
 aca:	5f 4f       	sbci	r21, 0xFF	; 255
 acc:	22 db       	rcall	.-2492   	; 0x112 <mypgm_WRITEpage>
 ace:	80 e8       	ldi	r24, 0x80	; 128
 ad0:	c8 0e       	add	r12, r24
 ad2:	d1 1c       	adc	r13, r1
 ad4:	e1 1c       	adc	r14, r1
 ad6:	f1 1c       	adc	r15, r1
 ad8:	48 e6       	ldi	r20, 0x68	; 104
 ada:	c4 16       	cp	r12, r20
    // need to change the firmware...
    if (buffer[0]) {

      // A
      // copy the current "bootloader__do_spm" to tempoary position via std. "bootloader__do_spm"
      for (i=0;i<TEMP_SPM_BLKSIZE;i+=SPM_PAGESIZE) {
 adc:	4a e3       	ldi	r20, 0x3A	; 58
 ade:	d4 06       	cpc	r13, r20
 ae0:	e1 04       	cpc	r14, r1
 ae2:	f1 04       	cpc	r15, r1
 ae4:	f9 f6       	brne	.-66     	; 0xaa4 <main+0x82>
 ae6:	c1 2c       	mov	r12, r1
 ae8:	58 e3       	ldi	r21, 0x38	; 56
 aea:	d5 2e       	mov	r13, r21
 aec:	e1 2c       	mov	r14, r1
 aee:	f1 2c       	mov	r15, r1
 af0:	56 01       	movw	r10, r12
 af2:	88 e3       	ldi	r24, 0x38	; 56
  return result;
}
#endif

// #pragma GCC diagnostic ignored "-Wno-pointer-to-int-cast"
int main(void)
 af4:	b8 1a       	sub	r11, r24
 af6:	40 e8       	ldi	r20, 0x80	; 128
 af8:	50 e0       	ldi	r21, 0x00	; 0
      // B
      // start updating the firmware to "NEW_BOOTLOADER_ADDRESS" until at least "TEMP_SPM_BLKSIZE"-bytes after "NEW_SPM_ADDRESS" were written
      // therefore use the tempoary "bootloader__do_spm" (since we most probably will overwrite the default do_spm)
      for (i=0;;i+=SPM_PAGESIZE) {
#ifdef CONFIG_UPDATER_CLEANMEMCLEAR
	memset((void*)buffer, 0xff, sizeof(buffer));
 afa:	6f ef       	ldi	r22, 0xFF	; 255
 afc:	70 e0       	ldi	r23, 0x00	; 0
 afe:	ce 01       	movw	r24, r28
 b00:	01 96       	adiw	r24, 0x01	; 1
 b02:	70 d0       	rcall	.+224    	; 0xbe4 <memset>
 b04:	40 91 00 01 	lds	r20, 0x0100
 b08:	50 91 01 01 	lds	r21, 0x0101
#endif
	mymemcpy_PF((void*)buffer, (uint_farptr_t)(FULLCORRECTFLASHADDRESS(&new_firmware[i])), ((SIZEOF_new_firmware-i)>sizeof(buffer))?sizeof(buffer):(SIZEOF_new_firmware-i));
 b0c:	4a 0d       	add	r20, r10
 b0e:	5b 1d       	adc	r21, r11
 b10:	66 27       	eor	r22, r22
 b12:	57 fd       	sbrc	r21, 7
 b14:	60 95       	com	r22
 b16:	76 2f       	mov	r23, r22
 b18:	20 e8       	ldi	r18, 0x80	; 128
 b1a:	30 e0       	ldi	r19, 0x00	; 0
 b1c:	ce 01       	movw	r24, r28
 b1e:	01 96       	adiw	r24, 0x01	; 1
 b20:	77 df       	rcall	.-274    	; 0xa10 <memcpy_PF>
 b22:	0f e5       	ldi	r16, 0x5F	; 95
 b24:	10 e0       	ldi	r17, 0x00	; 0
 b26:	20 e8       	ldi	r18, 0x80	; 128
 b28:	30 e0       	ldi	r19, 0x00	; 0
	
	mypgm_WRITEpage(NEW_BOOTLOADER_ADDRESS+i, buffer, sizeof(buffer), temp_do_spm);
 b2a:	ae 01       	movw	r20, r28
 b2c:	4f 5f       	subi	r20, 0xFF	; 255
 b2e:	5f 4f       	sbci	r21, 0xFF	; 255
 b30:	c7 01       	movw	r24, r14
 b32:	b6 01       	movw	r22, r12
 b34:	ee da       	rcall	.-2596   	; 0x112 <mypgm_WRITEpage>
 b36:	40 e8       	ldi	r20, 0x80	; 128
 b38:	c4 0e       	add	r12, r20
 b3a:	d1 1c       	adc	r13, r1
 b3c:	e1 1c       	adc	r14, r1
 b3e:	f1 1c       	adc	r15, r1
 b40:	c1 14       	cp	r12, r1
 b42:	8b e3       	ldi	r24, 0x3B	; 59
 b44:	d8 06       	cpc	r13, r24
 b46:	e1 04       	cpc	r14, r1
 b48:	f1 04       	cpc	r15, r1
	
	if ((NEW_BOOTLOADER_ADDRESS+i) > (NEW_SPM_ADDRESS+TEMP_SPM_BLKSIZE)) break;
 b4a:	91 f6       	brne	.-92     	; 0xaf0 <main+0xce>
 b4c:	40 ef       	ldi	r20, 0xF0	; 240
 b4e:	e4 2e       	mov	r14, r20
 b50:	47 e0       	ldi	r20, 0x07	; 7
 b52:	f4 2e       	mov	r15, r20
 b54:	ea 18       	sub	r14, r10
 b56:	fb 08       	sbc	r15, r11
 b58:	40 e8       	ldi	r20, 0x80	; 128
 b5a:	50 e0       	ldi	r21, 0x00	; 0
 b5c:	6f ef       	ldi	r22, 0xFF	; 255
 b5e:	70 e0       	ldi	r23, 0x00	; 0
 b60:	ce 01       	movw	r24, r28

      // C
      // continue writeing the new_firmware after "NEW_SPM_ADDRESS+TEMP_SPM_BLKSIZE" this time use the "new_do_spm"
      for (;i<SIZEOF_new_firmware;i+=SPM_PAGESIZE) {
#ifdef CONFIG_UPDATER_CLEANMEMCLEAR
	memset((void*)buffer, 0xff, sizeof(buffer));
 b62:	01 96       	adiw	r24, 0x01	; 1
 b64:	3f d0       	rcall	.+126    	; 0xbe4 <memset>
 b66:	97 01       	movw	r18, r14
 b68:	41 e8       	ldi	r20, 0x81	; 129
 b6a:	e4 16       	cp	r14, r20
 b6c:	f1 04       	cpc	r15, r1
 b6e:	10 f0       	brcs	.+4      	; 0xb74 <main+0x152>
 b70:	20 e8       	ldi	r18, 0x80	; 128
#endif
	mymemcpy_PF((void*)buffer, (uint_farptr_t)(FULLCORRECTFLASHADDRESS(&new_firmware[i])), ((SIZEOF_new_firmware-i)>sizeof(buffer))?sizeof(buffer):(SIZEOF_new_firmware-i));
 b72:	30 e0       	ldi	r19, 0x00	; 0
 b74:	40 91 00 01 	lds	r20, 0x0100
 b78:	50 91 01 01 	lds	r21, 0x0101
 b7c:	4a 0d       	add	r20, r10
 b7e:	5b 1d       	adc	r21, r11
 b80:	66 27       	eor	r22, r22
 b82:	57 fd       	sbrc	r21, 7
 b84:	60 95       	com	r22
 b86:	76 2f       	mov	r23, r22
 b88:	ce 01       	movw	r24, r28
 b8a:	01 96       	adiw	r24, 0x01	; 1
 b8c:	41 df       	rcall	.-382    	; 0xa10 <memcpy_PF>
 b8e:	b5 01       	movw	r22, r10
 b90:	78 5c       	subi	r23, 0xC8	; 200
 b92:	80 e0       	ldi	r24, 0x00	; 0
 b94:	90 e0       	ldi	r25, 0x00	; 0
 b96:	08 e4       	ldi	r16, 0x48	; 72
 b98:	10 e0       	ldi	r17, 0x00	; 0
 b9a:	20 e8       	ldi	r18, 0x80	; 128
  return result;
}
#endif

// #pragma GCC diagnostic ignored "-Wno-pointer-to-int-cast"
int main(void)
 b9c:	30 e0       	ldi	r19, 0x00	; 0
 b9e:	ae 01       	movw	r20, r28
#ifdef CONFIG_UPDATER_CLEANMEMCLEAR
	memset((void*)buffer, 0xff, sizeof(buffer));
#endif
	mymemcpy_PF((void*)buffer, (uint_farptr_t)(FULLCORRECTFLASHADDRESS(&new_firmware[i])), ((SIZEOF_new_firmware-i)>sizeof(buffer))?sizeof(buffer):(SIZEOF_new_firmware-i));

	mypgm_WRITEpage(NEW_BOOTLOADER_ADDRESS+i, buffer, sizeof(buffer), new_do_spm);
 ba0:	4f 5f       	subi	r20, 0xFF	; 255
 ba2:	5f 4f       	sbci	r21, 0xFF	; 255
 ba4:	b6 da       	rcall	.-2708   	; 0x112 <mypgm_WRITEpage>
 ba6:	80 e8       	ldi	r24, 0x80	; 128
 ba8:	a8 0e       	add	r10, r24
 baa:	b1 1c       	adc	r11, r1
 bac:	40 e8       	ldi	r20, 0x80	; 128
 bae:	e4 1a       	sub	r14, r20
 bb0:	f1 08       	sbc	r15, r1
 bb2:	80 ef       	ldi	r24, 0xF0	; 240
 bb4:	a8 16       	cp	r10, r24
	if ((NEW_BOOTLOADER_ADDRESS+i) > (NEW_SPM_ADDRESS+TEMP_SPM_BLKSIZE)) break;
      }

      // C
      // continue writeing the new_firmware after "NEW_SPM_ADDRESS+TEMP_SPM_BLKSIZE" this time use the "new_do_spm"
      for (;i<SIZEOF_new_firmware;i+=SPM_PAGESIZE) {
 bb6:	87 e0       	ldi	r24, 0x07	; 7
 bb8:	b8 06       	cpc	r11, r24
 bba:	70 f2       	brcs	.-100    	; 0xb58 <main+0x136>
 bbc:	80 e0       	ldi	r24, 0x00	; 0
 bbe:	90 e0       	ldi	r25, 0x00	; 0
 bc0:	c0 58       	subi	r28, 0x80	; 128
 bc2:	df 4f       	sbci	r29, 0xFF	; 255
 bc4:	0f b6       	in	r0, 0x3f	; 63
 bc6:	f8 94       	cli
 bc8:	de bf       	out	0x3e, r29	; 62
 bca:	0f be       	out	0x3f, r0	; 63


    }

    return 0;
}
 bcc:	cd bf       	out	0x3d, r28	; 61
 bce:	df 91       	pop	r29
 bd0:	cf 91       	pop	r28
 bd2:	1f 91       	pop	r17
 bd4:	0f 91       	pop	r16
 bd6:	ff 90       	pop	r15
 bd8:	ef 90       	pop	r14
 bda:	df 90       	pop	r13
 bdc:	cf 90       	pop	r12
 bde:	bf 90       	pop	r11
 be0:	af 90       	pop	r10
 be2:	08 95       	ret

00000be4 <memset>:
 be4:	dc 01       	movw	r26, r24
 be6:	01 c0       	rjmp	.+2      	; 0xbea <memset+0x6>
 be8:	6d 93       	st	X+, r22
 bea:	41 50       	subi	r20, 0x01	; 1
 bec:	50 40       	sbci	r21, 0x00	; 0
 bee:	e0 f7       	brcc	.-8      	; 0xbe8 <memset+0x4>
 bf0:	08 95       	ret

00000bf2 <_exit>:
 bf2:	f8 94       	cli

00000bf4 <__stop_program>:
 bf4:	ff cf       	rjmp	.-2      	; 0xbf4 <__stop_program>
