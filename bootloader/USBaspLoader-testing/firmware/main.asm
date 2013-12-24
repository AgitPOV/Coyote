
main.elf:     file format elf32-avr

SYMBOL TABLE:
00800100 l    d  .data	00000000 .data
00003800 l    d  .text	00000000 .text
00800106 l    d  .bss	00000000 .bss
0080013c l    d  .noinit	00000000 .noinit
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
00000000 l    df *ABS*	00000000 usbdrv/usbdrvasm.o
0000394c l       .text	00000000 usbCrcLoopEntry
0000393a l       .text	00000000 usbCrcByteLoop
0000393e l       .text	00000000 usbCrcBitLoop
00003948 l       .text	00000000 usbCrcNoXor
00003950 l       .text	00000000 usbCrcReady
00003960 l       .text	00000000 waitForJ
00003966 l       .text	00000000 waitForK
0000397c l       .text	00000000 foundK
00003abe l       .text	00000000 sofError
00003990 l       .text	00000000 haveTwoBitsK
00003a12 l       .text	00000000 rxbit2
000039b0 l       .text	00000000 unstuff0
00003a0a l       .text	00000000 didUnstuff0
000039ba l       .text	00000000 unstuff1
00003a18 l       .text	00000000 didUnstuff1
000039c6 l       .text	00000000 unstuff2
00003a28 l       .text	00000000 didUnstuff2
000039d2 l       .text	00000000 unstuff3
00003a2e l       .text	00000000 didUnstuff3
000039da l       .text	00000000 unstuff4
00003a3a l       .text	00000000 didUnstuff4
000039e2 l       .text	00000000 unstuff5
00003a48 l       .text	00000000 didUnstuff5
000039ea l       .text	00000000 unstuff6
00003a56 l       .text	00000000 didUnstuff6
000039f2 l       .text	00000000 rxLoop
00003a7a l       .text	00000000 se0
00003a72 l       .text	00000000 overflow
00003a64 l       .text	00000000 didUnstuff7
00003a68 l       .text	00000000 unstuff7
00003a76 l       .text	00000000 ignorePacket
00003aa8 l       .text	00000000 storeTokenAndReturn
00003ac6 l       .text	00000000 handleData
00003af0 l       .text	00000000 handleIn
00003aa8 l       .text	00000000 handleSetupOrOut
00003aac l       .text	00000000 doReturn
00003b1a l       .text	00000000 sendNakAndReti
00003b1e l       .text	00000000 sendAckAndReti
00003b22 l       .text	00000000 sendCntAndReti
00003b2a l       .text	00000000 usbSendAndReti
00003b0c l       .text	00000000 txByteLoop
00003b0c l       .text	00000000 txBitloop
00003b0c l       .text	00000000 stuffN1Delay
00003b3a l       .text	00000000 doExorN1
00003b3e l       .text	00000000 commonN1
00003b24 l       .text	00000000 usbSendX3
00003b3e l       .text	00000000 stuffN2Delay
00003b4c l       .text	00000000 doExorN2
00003b50 l       .text	00000000 commonN2
00003b58 l       .text	00000000 stuff6Delay
00003b66 l       .text	00000000 doExor6
00003b6a l       .text	00000000 common6
00003b6a l       .text	00000000 stuff7Delay
00003b78 l       .text	00000000 doExor7
00003b7c l       .text	00000000 common7
00003b98 l       .text	00000000 skipAddrAssign
00000000 l    df *ABS*	00000000 oddebug.c
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
00000000 l    df *ABS*	00000000 main.c
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
00003bb4 l     F .text	00000008 _mywait
00003bb4 l       .text	00000000 _mywait_sleeploop7
000038f4 l       .text	00000000 __BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND_done17
000038f2 l       .text	00000000 __BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND_mismatch17
0080013d l     O .noinit	00000001 __BOOTLOADERENTRY_FROMSOFTWARE__bootup_RAMEND_doesmatch
0080013c l     O .noinit	00000001 __BOOTLOADERENTRY_FROMSOFTWARE__bootup_MCUCSR
00800102 l     O .data	00000004 signatureBytes
00800110 l     O .bss	00000002 nullVector
00800106 l     O .bss	00000001 usbMsgFlags
00800107 l     O .bss	00000004 replyBuffer.1983
0080010b l     O .bss	00000002 currentAddress
0080010d l     O .bss	00000001 bytesRemaining
0080010e l     O .bss	00000001 isLastPage
0080010f l     O .bss	00000001 currentRequest
00800101 l     O .data	00000001 usbMsgLen
00003e3c l       .text	00000000 usbFunctionWrite_flashloop
00003e92 l       .text	00000000 usbFunctionWrite_finished
00003e8a l       .text	00000000 usbFunctionWrite_waitA
00003e7e l       .text	00000000 usbFunctionWrite_saveflash
00003e64 l       .text	00000000 usbFunctionWrite_pageisfull
00003e7a l       .text	00000000 usbFunctionWrite_skippageisfull
00003fac l       .text	00000000 main_stayinloader_smaller
00003fb4 l       .text	00000000 main_stayinloader_finished
00000000 l    df *ABS*	00000000 _exit.o
00003fe8 l       .text	00000000 __stop_program
00000000 l    df *ABS*	00000000 _clear_bss.o
0000391c l       .text	00000000 .do_clear_bss_start
0000391a l       .text	00000000 .do_clear_bss_loop
00000000 l    df *ABS*	00000000 
00000000 l       *ABS*	00000000 nullVector
00003898 g     O .text	00000012 usbDescriptorDevice
00003926  w      .text	00000000 __vector_22
0000395a g     F .text	00000000 __vector_1
00800112 g     O .bss	0000000b usbTxBuf
000038d8 g       .text	00000000 __trampolines_start
00003fea g       .text	00000000 _etext
000038d4 g     O .text	00000004 usbDescriptorString0
00003926  w      .text	00000000 __vector_24
00003926  w      .text	00000000 __vector_12
00003926 g       .text	00000000 __bad_interrupt
00003ff0 g       *ABS*	00000000 __data_load_end
00003926  w      .text	00000000 __vector_6
00003928 g       .text	00000000 usbCrc16
000038d8 g       .text	00000000 __trampolines_end
00003926  w      .text	00000000 __vector_3
00003fcc g       .text	00000000 __eewr_r18_m168
000038e4 g     F .text	00000018 __BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND
00003926  w      .text	00000000 __vector_23
00003fea g       *ABS*	00000000 __data_load_start
000038d8 g       .text	00000000 __dtors_end
00003fba g     F .text	00000010 __eerd_byte_m168
0080013c g       .bss	00000000 __bss_end
00003926  w      .text	00000000 __vector_25
00003868 g     O .text	0000001e bootloader__do_spm
00003926  w      .text	00000000 __vector_11
000038d8  w      .text	00000000 __init
00003926  w      .text	00000000 __vector_13
00003952 g       .text	00000000 usbCrc16Append
00003926  w      .text	00000000 __vector_17
00003926  w      .text	00000000 __vector_19
00003fca g     F .text	0000001c __eewr_byte_m168
00003926  w      .text	00000000 __vector_7
00003886 g     O .text	00000012 usbDescriptorConfiguration
00003912 g       .text	00000010 __do_clear_bss
0080011d g     O .bss	00000001 usbDeviceAddr
00810000 g       .stab	00000000 __eeprom_end
0080011e g     O .bss	00000001 usbRxToken
00003800 g       .text	00000000 __vectors
00800106 g       .data	00000000 __data_end
000038b8 g     O .text	0000001c usbDescriptorStringVendor
0080011f g     O .bss	00000001 usbInputBufOffset
00003800  w      .text	00000000 __vector_default
00003926  w      .text	00000000 __vector_5
000038d8 g       .text	00000000 __ctors_start
000038fc g       .text	00000016 __do_copy_data
00003bbc g     F .text	00000038 usbFunctionSetup_USBASP_FUNC_TRANSMIT
00800106 g       .bss	00000000 __bss_start
00003bf0 g     F .text	000003d6 main
00003926  w      .text	00000000 __vector_4
00800100 g     O .data	00000001 usbTxLen
00000000  w      *ABS*	00000000 __heap_end
00003926  w      .text	00000000 __vector_9
00003926  w      .text	00000000 __vector_2
00800120 g     O .bss	00000002 usbMsgPtr
00003926  w      .text	00000000 __vector_21
00003926  w      .text	00000000 __vector_15
00800122 g     O .bss	00000001 usbRxLen
000038d8 g       .text	00000000 __dtors_start
000038d8 g       .text	00000000 __ctors_end
000004ff  w      *ABS*	00000000 __stack
00800123 g     O .bss	00000001 usbNewDeviceAddr
00800106 g       .data	00000000 _edata
0080013e g       .noinit	00000000 _end
00003926  w      .text	00000000 __vector_8
00003fe6  w      .text	00000000 exit
00800124 g     O .bss	00000001 usbCurrentTok
000038aa g     O .text	0000000e usbDescriptorStringDevice
00003fe6 g       .text	00000000 _exit
00800125 g     O .bss	00000001 usbConfiguration
00003926  w      .text	00000000 __vector_14
00003926  w      .text	00000000 __vector_10
00800126 g     O .bss	00000016 usbRxBuf
00003926  w      .text	00000000 __vector_16
00800100 g       .data	00000000 __data_start
00003926  w      .text	00000000 __vector_18
00003926  w      .text	00000000 __vector_20



Disassembly of section .text:

00003800 <__vectors>:
    3800:	6b c0       	rjmp	.+214    	; 0x38d8 <__ctors_end>
    3802:	00 00       	nop
    3804:	aa c0       	rjmp	.+340    	; 0x395a <__vector_1>
    3806:	00 00       	nop
    3808:	8e c0       	rjmp	.+284    	; 0x3926 <__bad_interrupt>
    380a:	00 00       	nop
    380c:	8c c0       	rjmp	.+280    	; 0x3926 <__bad_interrupt>
    380e:	00 00       	nop
    3810:	8a c0       	rjmp	.+276    	; 0x3926 <__bad_interrupt>
    3812:	00 00       	nop
    3814:	88 c0       	rjmp	.+272    	; 0x3926 <__bad_interrupt>
    3816:	00 00       	nop
    3818:	86 c0       	rjmp	.+268    	; 0x3926 <__bad_interrupt>
    381a:	00 00       	nop
    381c:	84 c0       	rjmp	.+264    	; 0x3926 <__bad_interrupt>
    381e:	00 00       	nop
    3820:	82 c0       	rjmp	.+260    	; 0x3926 <__bad_interrupt>
    3822:	00 00       	nop
    3824:	80 c0       	rjmp	.+256    	; 0x3926 <__bad_interrupt>
    3826:	00 00       	nop
    3828:	7e c0       	rjmp	.+252    	; 0x3926 <__bad_interrupt>
    382a:	00 00       	nop
    382c:	7c c0       	rjmp	.+248    	; 0x3926 <__bad_interrupt>
    382e:	00 00       	nop
    3830:	7a c0       	rjmp	.+244    	; 0x3926 <__bad_interrupt>
    3832:	00 00       	nop
    3834:	78 c0       	rjmp	.+240    	; 0x3926 <__bad_interrupt>
    3836:	00 00       	nop
    3838:	76 c0       	rjmp	.+236    	; 0x3926 <__bad_interrupt>
    383a:	00 00       	nop
    383c:	74 c0       	rjmp	.+232    	; 0x3926 <__bad_interrupt>
    383e:	00 00       	nop
    3840:	72 c0       	rjmp	.+228    	; 0x3926 <__bad_interrupt>
    3842:	00 00       	nop
    3844:	70 c0       	rjmp	.+224    	; 0x3926 <__bad_interrupt>
    3846:	00 00       	nop
    3848:	6e c0       	rjmp	.+220    	; 0x3926 <__bad_interrupt>
    384a:	00 00       	nop
    384c:	6c c0       	rjmp	.+216    	; 0x3926 <__bad_interrupt>
    384e:	00 00       	nop
    3850:	6a c0       	rjmp	.+212    	; 0x3926 <__bad_interrupt>
    3852:	00 00       	nop
    3854:	68 c0       	rjmp	.+208    	; 0x3926 <__bad_interrupt>
    3856:	00 00       	nop
    3858:	66 c0       	rjmp	.+204    	; 0x3926 <__bad_interrupt>
    385a:	00 00       	nop
    385c:	64 c0       	rjmp	.+200    	; 0x3926 <__bad_interrupt>
    385e:	00 00       	nop
    3860:	62 c0       	rjmp	.+196    	; 0x3926 <__bad_interrupt>
    3862:	00 00       	nop
    3864:	60 c0       	rjmp	.+192    	; 0x3926 <__bad_interrupt>
	...

00003868 <bootloader__do_spm>:
    3868:	ec 2d fd 2d b7 b6 b0 fc fd cf 27 bf e8 95 b7 b6     .-.-......'.....
    3878:	b0 fc fd cf 21 e1 b7 b6 b6 fc f4 cf 08 95           ....!.........

00003886 <usbDescriptorConfiguration>:
    3886:	09 02 12 00 01 01 00 80 32 09 04 00 00 00 00 00     ........2.......
	...

00003898 <usbDescriptorDevice>:
    3898:	12 01 10 01 ff 00 00 08 c0 16 dc 05 02 01 01 02     ................
    38a8:	00 01                                               ..

000038aa <usbDescriptorStringDevice>:
    38aa:	0e 03 55 00 53 00 42 00 61 00 73 00 70 00           ..U.S.B.a.s.p.

000038b8 <usbDescriptorStringVendor>:
    38b8:	1c 03 77 00 77 00 77 00 2e 00 66 00 69 00 73 00     ..w.w.w...f.i.s.
    38c8:	63 00 68 00 6c 00 2e 00 64 00 65 00                 c.h.l...d.e.

000038d4 <usbDescriptorString0>:
    38d4:	04 03 09 04                                         ....

000038d8 <__ctors_end>:
    38d8:	11 24       	eor	r1, r1
    38da:	1f be       	out	0x3f, r1	; 63
    38dc:	cf ef       	ldi	r28, 0xFF	; 255
    38de:	d4 e0       	ldi	r29, 0x04	; 4
    38e0:	de bf       	out	0x3e, r29	; 62
    38e2:	cd bf       	out	0x3d, r28	; 61

000038e4 <__BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND>:
/* ------------------------------------------------------------------------ */

#if (HAVE_BOOTLOADERENTRY_FROMSOFTWARE)
void __attribute__ ((section(".init3"),naked,used,no_instrument_function)) __BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND(void);
void __BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND(void) {
  asm volatile (
    38e4:	24 b7       	in	r18, 0x34	; 52
    38e6:	d4 e0       	ldi	r29, 0x04	; 4
    38e8:	ce ef       	ldi	r28, 0xFE	; 254
    38ea:	39 91       	ld	r19, Y+
    38ec:	3c 31       	cpi	r19, 0x1C	; 28
    38ee:	39 91       	ld	r19, Y+
    38f0:	09 f0       	breq	.+2      	; 0x38f4 <__BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND_done17>

000038f2 <__BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND_mismatch17>:
    38f2:	3f ef       	ldi	r19, 0xFF	; 255

000038f4 <__BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND_done17>:
    38f4:	30 93 3d 01 	sts	0x013D, r19
    38f8:	20 93 3c 01 	sts	0x013C, r18

000038fc <__do_copy_data>:
    38fc:	11 e0       	ldi	r17, 0x01	; 1
    38fe:	a0 e0       	ldi	r26, 0x00	; 0
    3900:	b1 e0       	ldi	r27, 0x01	; 1
    3902:	ea ee       	ldi	r30, 0xEA	; 234
    3904:	ff e3       	ldi	r31, 0x3F	; 63
    3906:	02 c0       	rjmp	.+4      	; 0x390c <__do_copy_data+0x10>
    3908:	05 90       	lpm	r0, Z+
    390a:	0d 92       	st	X+, r0
    390c:	a6 30       	cpi	r26, 0x06	; 6
    390e:	b1 07       	cpc	r27, r17
    3910:	d9 f7       	brne	.-10     	; 0x3908 <__do_copy_data+0xc>

00003912 <__do_clear_bss>:
    3912:	21 e0       	ldi	r18, 0x01	; 1
    3914:	a6 e0       	ldi	r26, 0x06	; 6
    3916:	b1 e0       	ldi	r27, 0x01	; 1
    3918:	01 c0       	rjmp	.+2      	; 0x391c <.do_clear_bss_start>

0000391a <.do_clear_bss_loop>:
    391a:	1d 92       	st	X+, r1

0000391c <.do_clear_bss_start>:
    391c:	ac 33       	cpi	r26, 0x3C	; 60
    391e:	b2 07       	cpc	r27, r18
    3920:	e1 f7       	brne	.-8      	; 0x391a <.do_clear_bss_loop>
    3922:	66 d1       	rcall	.+716    	; 0x3bf0 <main>
    3924:	60 c3       	rjmp	.+1728   	; 0x3fe6 <_exit>

00003926 <__bad_interrupt>:
    3926:	6c cf       	rjmp	.-296    	; 0x3800 <__vectors>

00003928 <usbCrc16>:
;   poly    r20+r21
;   scratch r23
;   resCrc  r24+r25 / r16+r17
;   ptr     X / Z
usbCrc16:
    mov     ptrL, argPtrL
    3928:	a8 2f       	mov	r26, r24
    mov     ptrH, argPtrH
    392a:	b9 2f       	mov	r27, r25
    ldi     resCrcL, 0
    392c:	80 e0       	ldi	r24, 0x00	; 0
    ldi     resCrcH, 0
    392e:	90 e0       	ldi	r25, 0x00	; 0
    ldi     polyL, lo8(0xa001)
    3930:	41 e0       	ldi	r20, 0x01	; 1
    ldi     polyH, hi8(0xa001)
    3932:	50 ea       	ldi	r21, 0xA0	; 160
    com     argLen      ; argLen = -argLen - 1: modified loop to ensure that carry is set
    3934:	60 95       	com	r22
    ldi     bitCnt, 0   ; loop counter with starnd condition = end condition
    3936:	30 e0       	ldi	r19, 0x00	; 0
    rjmp    usbCrcLoopEntry
    3938:	09 c0       	rjmp	.+18     	; 0x394c <usbCrcLoopEntry>

0000393a <usbCrcByteLoop>:
usbCrcByteLoop:
    ld      byte, ptr+
    393a:	2d 91       	ld	r18, X+
    eor     resCrcL, byte
    393c:	82 27       	eor	r24, r18

0000393e <usbCrcBitLoop>:
usbCrcBitLoop:
    ror     resCrcH     ; carry is always set here (see brcs jumps to here)
    393e:	97 95       	ror	r25
    ror     resCrcL
    3940:	87 95       	ror	r24
    brcs    usbCrcNoXor
    3942:	10 f0       	brcs	.+4      	; 0x3948 <usbCrcNoXor>
    eor     resCrcL, polyL
    3944:	84 27       	eor	r24, r20
    eor     resCrcH, polyH
    3946:	95 27       	eor	r25, r21

00003948 <usbCrcNoXor>:
usbCrcNoXor:
    subi    bitCnt, 224 ; (8 * 224) % 256 = 0; this loop iterates 8 times
    3948:	30 5e       	subi	r19, 0xE0	; 224
    brcs    usbCrcBitLoop
    394a:	c8 f3       	brcs	.-14     	; 0x393e <usbCrcBitLoop>

0000394c <usbCrcLoopEntry>:
usbCrcLoopEntry:
    subi    argLen, -1
    394c:	6f 5f       	subi	r22, 0xFF	; 255
    brcs    usbCrcByteLoop
    394e:	a8 f3       	brcs	.-22     	; 0x393a <usbCrcByteLoop>

00003950 <usbCrcReady>:
usbCrcReady:
    ret
    3950:	08 95       	ret

00003952 <usbCrc16Append>:

#endif /* USB_USE_FAST_CRC */

; extern unsigned usbCrc16Append(unsigned char *data, unsigned char len);
usbCrc16Append:
    rcall   usbCrc16
    3952:	ea df       	rcall	.-44     	; 0x3928 <usbCrc16>
    st      ptr+, resCrcL
    3954:	8d 93       	st	X+, r24
    st      ptr+, resCrcH
    3956:	9d 93       	st	X+, r25
    ret
    3958:	08 95       	ret

0000395a <__vector_1>:
;max allowable interrupt latency: 34 cycles -> max 25 cycles interrupt disable
;max stack usage: [ret(2), YL, SREG, YH, shift, x1, x2, x3, cnt, x4] = 11 bytes
;Numbers in brackets are maximum cycles since SOF.
USB_INTR_VECTOR:
;order of registers pushed: YL, SREG [sofError], YH, shift, x1, x2, x3, cnt
    push    YL              ;2 [35] push only what is necessary to sync with edge ASAP
    395a:	cf 93       	push	r28
    in      YL, SREG        ;1 [37]
    395c:	cf b7       	in	r28, 0x3f	; 63
    push    YL              ;2 [39]
    395e:	cf 93       	push	r28

00003960 <waitForJ>:
;sync up with J to K edge during sync pattern -- use fastest possible loops
;The first part waits at most 1 bit long since we must be in sync pattern.
;YL is guarenteed to be < 0x80 because I flag is clear. When we jump to
;waitForJ, ensure that this prerequisite is met.
waitForJ:
    inc     YL
    3960:	c3 95       	inc	r28
    sbis    USBIN, USBMINUS
    3962:	4c 9b       	sbis	0x09, 4	; 9
    brne    waitForJ        ; just make sure we have ANY timeout
    3964:	e9 f7       	brne	.-6      	; 0x3960 <waitForJ>

00003966 <waitForK>:
waitForK:
;The following code results in a sampling window of 1/4 bit which meets the spec.
    sbis    USBIN, USBMINUS
    3966:	4c 9b       	sbis	0x09, 4	; 9
    rjmp    foundK
    3968:	09 c0       	rjmp	.+18     	; 0x397c <foundK>
    sbis    USBIN, USBMINUS
    396a:	4c 9b       	sbis	0x09, 4	; 9
    rjmp    foundK
    396c:	07 c0       	rjmp	.+14     	; 0x397c <foundK>
    sbis    USBIN, USBMINUS
    396e:	4c 9b       	sbis	0x09, 4	; 9
    rjmp    foundK
    3970:	05 c0       	rjmp	.+10     	; 0x397c <foundK>
    sbis    USBIN, USBMINUS
    3972:	4c 9b       	sbis	0x09, 4	; 9
    rjmp    foundK
    3974:	03 c0       	rjmp	.+6      	; 0x397c <foundK>
    sbis    USBIN, USBMINUS
    3976:	4c 9b       	sbis	0x09, 4	; 9
    rjmp    foundK
    3978:	01 c0       	rjmp	.+2      	; 0x397c <foundK>
    sts     usbSofCount, YL
#endif  /* USB_COUNT_SOF */
#ifdef USB_SOF_HOOK
    USB_SOF_HOOK
#endif
    rjmp    sofError
    397a:	a1 c0       	rjmp	.+322    	; 0x3abe <sofError>

0000397c <foundK>:
foundK:
;{3, 5} after falling D- edge, average delay: 4 cycles [we want 4 for center sampling]
;we have 1 bit time for setup purposes, then sample again. Numbers in brackets
;are cycles from center of first sync (double K) bit after the instruction
    push    YH                  ;2 [2]
    397c:	df 93       	push	r29
    lds     YL, usbInputBufOffset;2 [4]
    397e:	c0 91 1f 01 	lds	r28, 0x011F
    clr     YH                  ;1 [5]
    3982:	dd 27       	eor	r29, r29
    subi    YL, lo8(-(usbRxBuf));1 [6]
    3984:	ca 5d       	subi	r28, 0xDA	; 218
    sbci    YH, hi8(-(usbRxBuf));1 [7]
    3986:	de 4f       	sbci	r29, 0xFE	; 254

    sbis    USBIN, USBMINUS ;1 [8] we want two bits K [sample 1 cycle too early]
    3988:	4c 9b       	sbis	0x09, 4	; 9
    rjmp    haveTwoBitsK    ;2 [10]
    398a:	02 c0       	rjmp	.+4      	; 0x3990 <haveTwoBitsK>
    pop     YH              ;2 [11] undo the push from before
    398c:	df 91       	pop	r29
    rjmp    waitForK        ;2 [13] this was not the end of sync, retry
    398e:	eb cf       	rjmp	.-42     	; 0x3966 <waitForK>

00003990 <haveTwoBitsK>:
haveTwoBitsK:
;----------------------------------------------------------------------------
; push more registers and initialize values while we sample the first bits:
;----------------------------------------------------------------------------
    push    shift           ;2 [16]
    3990:	2f 93       	push	r18
    push    x1              ;2 [12]
    3992:	0f 93       	push	r16
    push    x2              ;2 [14]
    3994:	1f 93       	push	r17

    in      x1, USBIN       ;1 [17] <-- sample bit 0
    3996:	09 b1       	in	r16, 0x09	; 9
    ldi     shift, 0xff     ;1 [18]
    3998:	2f ef       	ldi	r18, 0xFF	; 255
    bst     x1, USBMINUS    ;1 [19]
    399a:	04 fb       	bst	r16, 4
    bld     shift, 0        ;1 [20]
    399c:	20 f9       	bld	r18, 0
    push    x3              ;2 [22]
    399e:	4f 93       	push	r20
    push    cnt             ;2 [24]
    39a0:	3f 93       	push	r19
    
    in      x2, USBIN       ;1 [25] <-- sample bit 1
    39a2:	19 b1       	in	r17, 0x09	; 9
    ser     x3              ;1 [26] [inserted init instruction]
    39a4:	4f ef       	ldi	r20, 0xFF	; 255
    eor     x1, x2          ;1 [27]
    39a6:	01 27       	eor	r16, r17
    bst     x1, USBMINUS    ;1 [28]
    39a8:	04 fb       	bst	r16, 4
    bld     shift, 1        ;1 [29]
    39aa:	21 f9       	bld	r18, 1
    ldi     cnt, USB_BUFSIZE;1 [30] [inserted init instruction]
    39ac:	3b e0       	ldi	r19, 0x0B	; 11
    rjmp    rxbit2          ;2 [32]
    39ae:	31 c0       	rjmp	.+98     	; 0x3a12 <rxbit2>

000039b0 <unstuff0>:
;----------------------------------------------------------------------------
; Receiver loop (numbers in brackets are cycles within byte after instr)
;----------------------------------------------------------------------------

unstuff0:               ;1 (branch taken)
    andi    x3, ~0x01   ;1 [15]
    39b0:	4e 7f       	andi	r20, 0xFE	; 254
    mov     x1, x2      ;1 [16] x2 contains last sampled (stuffed) bit
    39b2:	01 2f       	mov	r16, r17
    in      x2, USBIN   ;1 [17] <-- sample bit 1 again
    39b4:	19 b1       	in	r17, 0x09	; 9
    ori     shift, 0x01 ;1 [18]
    39b6:	21 60       	ori	r18, 0x01	; 1
    rjmp    didUnstuff0 ;2 [20]
    39b8:	28 c0       	rjmp	.+80     	; 0x3a0a <didUnstuff0>

000039ba <unstuff1>:

unstuff1:               ;1 (branch taken)
    mov     x2, x1      ;1 [21] x1 contains last sampled (stuffed) bit
    39ba:	10 2f       	mov	r17, r16
    andi    x3, ~0x02   ;1 [22]
    39bc:	4d 7f       	andi	r20, 0xFD	; 253
    ori     shift, 0x02 ;1 [23]
    39be:	22 60       	ori	r18, 0x02	; 2
    nop                 ;1 [24]
    39c0:	00 00       	nop
    in      x1, USBIN   ;1 [25] <-- sample bit 2 again
    39c2:	09 b1       	in	r16, 0x09	; 9
    rjmp    didUnstuff1 ;2 [27]
    39c4:	29 c0       	rjmp	.+82     	; 0x3a18 <didUnstuff1>

000039c6 <unstuff2>:

unstuff2:               ;1 (branch taken)
    andi    x3, ~0x04   ;1 [29]
    39c6:	4b 7f       	andi	r20, 0xFB	; 251
    ori     shift, 0x04 ;1 [30]
    39c8:	24 60       	ori	r18, 0x04	; 4
    mov     x1, x2      ;1 [31] x2 contains last sampled (stuffed) bit
    39ca:	01 2f       	mov	r16, r17
    nop                 ;1 [32]
    39cc:	00 00       	nop
    in      x2, USBIN   ;1 [33] <-- sample bit 3
    39ce:	19 b1       	in	r17, 0x09	; 9
    rjmp    didUnstuff2 ;2 [35]
    39d0:	2b c0       	rjmp	.+86     	; 0x3a28 <didUnstuff2>

000039d2 <unstuff3>:

unstuff3:               ;1 (branch taken)
    in      x2, USBIN   ;1 [34] <-- sample stuffed bit 3 [one cycle too late]
    39d2:	19 b1       	in	r17, 0x09	; 9
    andi    x3, ~0x08   ;1 [35]
    39d4:	47 7f       	andi	r20, 0xF7	; 247
    ori     shift, 0x08 ;1 [36]
    39d6:	28 60       	ori	r18, 0x08	; 8
    rjmp    didUnstuff3 ;2 [38]
    39d8:	2a c0       	rjmp	.+84     	; 0x3a2e <didUnstuff3>

000039da <unstuff4>:

unstuff4:               ;1 (branch taken)
    andi    x3, ~0x10   ;1 [40]
    39da:	4f 7e       	andi	r20, 0xEF	; 239
    in      x1, USBIN   ;1 [41] <-- sample stuffed bit 4
    39dc:	09 b1       	in	r16, 0x09	; 9
    ori     shift, 0x10 ;1 [42]
    39de:	20 61       	ori	r18, 0x10	; 16
    rjmp    didUnstuff4 ;2 [44]
    39e0:	2c c0       	rjmp	.+88     	; 0x3a3a <didUnstuff4>

000039e2 <unstuff5>:

unstuff5:               ;1 (branch taken)
    andi    x3, ~0x20   ;1 [48]
    39e2:	4f 7d       	andi	r20, 0xDF	; 223
    in      x2, USBIN   ;1 [49] <-- sample stuffed bit 5
    39e4:	19 b1       	in	r17, 0x09	; 9
    ori     shift, 0x20 ;1 [50]
    39e6:	20 62       	ori	r18, 0x20	; 32
    rjmp    didUnstuff5 ;2 [52]
    39e8:	2f c0       	rjmp	.+94     	; 0x3a48 <didUnstuff5>

000039ea <unstuff6>:

unstuff6:               ;1 (branch taken)
    andi    x3, ~0x40   ;1 [56]
    39ea:	4f 7b       	andi	r20, 0xBF	; 191
    in      x1, USBIN   ;1 [57] <-- sample stuffed bit 6
    39ec:	09 b1       	in	r16, 0x09	; 9
    ori     shift, 0x40 ;1 [58]
    39ee:	20 64       	ori	r18, 0x40	; 64
    rjmp    didUnstuff6 ;2 [60]
    39f0:	32 c0       	rjmp	.+100    	; 0x3a56 <didUnstuff6>

000039f2 <rxLoop>:
; bit 4:    none
; bit 5:    none
; bit 6:    none
; bit 7:    jump, eor
rxLoop:
    eor     x3, shift   ;1 [0] reconstruct: x3 is 0 at bit locations we changed, 1 at others
    39f2:	42 27       	eor	r20, r18
    in      x1, USBIN   ;1 [1] <-- sample bit 0
    39f4:	09 b1       	in	r16, 0x09	; 9
    st      y+, x3      ;2 [3] store data
    39f6:	49 93       	st	Y+, r20
    ser     x3          ;1 [4]
    39f8:	4f ef       	ldi	r20, 0xFF	; 255
    nop                 ;1 [5]
    39fa:	00 00       	nop
    eor     x2, x1      ;1 [6]
    39fc:	10 27       	eor	r17, r16
    bst     x2, USBMINUS;1 [7]
    39fe:	14 fb       	bst	r17, 4
    bld     shift, 0    ;1 [8]
    3a00:	20 f9       	bld	r18, 0
    in      x2, USBIN   ;1 [9] <-- sample bit 1 (or possibly bit 0 stuffed)
    3a02:	19 b1       	in	r17, 0x09	; 9
    andi    x2, USBMASK ;1 [10]
    3a04:	14 71       	andi	r17, 0x14	; 20
    breq    se0         ;1 [11] SE0 check for bit 1
    3a06:	c9 f1       	breq	.+114    	; 0x3a7a <se0>
    andi    shift, 0xf9 ;1 [12]
    3a08:	29 7f       	andi	r18, 0xF9	; 249

00003a0a <didUnstuff0>:
didUnstuff0:
    breq    unstuff0    ;1 [13]
    3a0a:	91 f2       	breq	.-92     	; 0x39b0 <unstuff0>
    eor     x1, x2      ;1 [14]
    3a0c:	01 27       	eor	r16, r17
    bst     x1, USBMINUS;1 [15]
    3a0e:	04 fb       	bst	r16, 4
    bld     shift, 1    ;1 [16]
    3a10:	21 f9       	bld	r18, 1

00003a12 <rxbit2>:
rxbit2:
    in      x1, USBIN   ;1 [17] <-- sample bit 2 (or possibly bit 1 stuffed)
    3a12:	09 b1       	in	r16, 0x09	; 9
    andi    shift, 0xf3 ;1 [18]
    3a14:	23 7f       	andi	r18, 0xF3	; 243
    breq    unstuff1    ;1 [19] do remaining work for bit 1
    3a16:	89 f2       	breq	.-94     	; 0x39ba <unstuff1>

00003a18 <didUnstuff1>:
didUnstuff1:
    subi    cnt, 1      ;1 [20]
    3a18:	31 50       	subi	r19, 0x01	; 1
    brcs    overflow    ;1 [21] loop control
    3a1a:	58 f1       	brcs	.+86     	; 0x3a72 <overflow>
    eor     x2, x1      ;1 [22]
    3a1c:	10 27       	eor	r17, r16
    bst     x2, USBMINUS;1 [23]
    3a1e:	14 fb       	bst	r17, 4
    bld     shift, 2    ;1 [24]
    3a20:	22 f9       	bld	r18, 2
    in      x2, USBIN   ;1 [25] <-- sample bit 3 (or possibly bit 2 stuffed)
    3a22:	19 b1       	in	r17, 0x09	; 9
    andi    shift, 0xe7 ;1 [26]
    3a24:	27 7e       	andi	r18, 0xE7	; 231
    breq    unstuff2    ;1 [27]
    3a26:	79 f2       	breq	.-98     	; 0x39c6 <unstuff2>

00003a28 <didUnstuff2>:
didUnstuff2:
    eor     x1, x2      ;1 [28]
    3a28:	01 27       	eor	r16, r17
    bst     x1, USBMINUS;1 [29]
    3a2a:	04 fb       	bst	r16, 4
    bld     shift, 3    ;1 [30]
    3a2c:	23 f9       	bld	r18, 3

00003a2e <didUnstuff3>:
didUnstuff3:
    andi    shift, 0xcf ;1 [31]
    3a2e:	2f 7c       	andi	r18, 0xCF	; 207
    breq    unstuff3    ;1 [32]
    3a30:	81 f2       	breq	.-96     	; 0x39d2 <unstuff3>
    in      x1, USBIN   ;1 [33] <-- sample bit 4
    3a32:	09 b1       	in	r16, 0x09	; 9
    eor     x2, x1      ;1 [34]
    3a34:	10 27       	eor	r17, r16
    bst     x2, USBMINUS;1 [35]
    3a36:	14 fb       	bst	r17, 4
    bld     shift, 4    ;1 [36]
    3a38:	24 f9       	bld	r18, 4

00003a3a <didUnstuff4>:
didUnstuff4:
    andi    shift, 0x9f ;1 [37]
    3a3a:	2f 79       	andi	r18, 0x9F	; 159
    breq    unstuff4    ;1 [38]
    3a3c:	71 f2       	breq	.-100    	; 0x39da <unstuff4>
    nop2                ;2 [40]
    3a3e:	00 c0       	rjmp	.+0      	; 0x3a40 <didUnstuff4+0x6>
    in      x2, USBIN   ;1 [41] <-- sample bit 5
    3a40:	19 b1       	in	r17, 0x09	; 9
    eor     x1, x2      ;1 [42]
    3a42:	01 27       	eor	r16, r17
    bst     x1, USBMINUS;1 [43]
    3a44:	04 fb       	bst	r16, 4
    bld     shift, 5    ;1 [44]
    3a46:	25 f9       	bld	r18, 5

00003a48 <didUnstuff5>:
didUnstuff5:
    andi    shift, 0x3f ;1 [45]
    3a48:	2f 73       	andi	r18, 0x3F	; 63
    breq    unstuff5    ;1 [46]
    3a4a:	59 f2       	breq	.-106    	; 0x39e2 <unstuff5>
    nop2                ;2 [48]
    3a4c:	00 c0       	rjmp	.+0      	; 0x3a4e <didUnstuff5+0x6>
    in      x1, USBIN   ;1 [49] <-- sample bit 6
    3a4e:	09 b1       	in	r16, 0x09	; 9
    eor     x2, x1      ;1 [50]
    3a50:	10 27       	eor	r17, r16
    bst     x2, USBMINUS;1 [51]
    3a52:	14 fb       	bst	r17, 4
    bld     shift, 6    ;1 [52]
    3a54:	26 f9       	bld	r18, 6

00003a56 <didUnstuff6>:
didUnstuff6:
    cpi     shift, 0x02 ;1 [53]
    3a56:	22 30       	cpi	r18, 0x02	; 2
    brlo    unstuff6    ;1 [54]
    3a58:	40 f2       	brcs	.-112    	; 0x39ea <unstuff6>
    nop2                ;2 [56]
    3a5a:	00 c0       	rjmp	.+0      	; 0x3a5c <didUnstuff6+0x6>
    in      x2, USBIN   ;1 [57] <-- sample bit 7
    3a5c:	19 b1       	in	r17, 0x09	; 9
    eor     x1, x2      ;1 [58]
    3a5e:	01 27       	eor	r16, r17
    bst     x1, USBMINUS;1 [59]
    3a60:	04 fb       	bst	r16, 4
    bld     shift, 7    ;1 [60]
    3a62:	27 f9       	bld	r18, 7

00003a64 <didUnstuff7>:
didUnstuff7:
    cpi     shift, 0x04 ;1 [61]
    3a64:	24 30       	cpi	r18, 0x04	; 4
    brsh    rxLoop      ;2 [63] loop control
    3a66:	28 f6       	brcc	.-118    	; 0x39f2 <rxLoop>

00003a68 <unstuff7>:
unstuff7:
    andi    x3, ~0x80   ;1 [63]
    3a68:	4f 77       	andi	r20, 0x7F	; 127
    ori     shift, 0x80 ;1 [64]
    3a6a:	20 68       	ori	r18, 0x80	; 128
    in      x2, USBIN   ;1 [65] <-- sample stuffed bit 7
    3a6c:	19 b1       	in	r17, 0x09	; 9
    nop                 ;1 [66]
    3a6e:	00 00       	nop
    rjmp    didUnstuff7 ;2 [68]
    3a70:	f9 cf       	rjmp	.-14     	; 0x3a64 <didUnstuff7>

00003a72 <overflow>:
*/

#define token   x1

overflow:
    ldi     x2, 1<<USB_INTR_PENDING_BIT
    3a72:	11 e0       	ldi	r17, 0x01	; 1
    USB_STORE_PENDING(x2)       ; clear any pending interrupts
    3a74:	1c bb       	out	0x1c, r17	; 28

00003a76 <ignorePacket>:
ignorePacket:
    clr     token
    3a76:	00 27       	eor	r16, r16
    rjmp    storeTokenAndReturn
    3a78:	17 c0       	rjmp	.+46     	; 0x3aa8 <handleSetupOrOut>

00003a7a <se0>:
; Processing of received packet (numbers in brackets are cycles after center of SE0)
;----------------------------------------------------------------------------
;This is the only non-error exit point for the software receiver loop
;we don't check any CRCs here because there is no time left.
se0:
    subi    cnt, USB_BUFSIZE    ;[5]
    3a7a:	3b 50       	subi	r19, 0x0B	; 11
    neg     cnt                 ;[6]
    3a7c:	31 95       	neg	r19
    sub     YL, cnt             ;[7]
    3a7e:	c3 1b       	sub	r28, r19
    sbci    YH, 0               ;[8]
    3a80:	d0 40       	sbci	r29, 0x00	; 0
    ldi     x2, 1<<USB_INTR_PENDING_BIT ;[9]
    3a82:	11 e0       	ldi	r17, 0x01	; 1
    USB_STORE_PENDING(x2)       ;[10] clear pending intr and check flag later. SE0 should be over.
    3a84:	1c bb       	out	0x1c, r17	; 28
    ld      token, y            ;[11]
    3a86:	08 81       	ld	r16, Y
    cpi     token, USBPID_DATA0 ;[13]
    3a88:	03 3c       	cpi	r16, 0xC3	; 195
    breq    handleData          ;[14]
    3a8a:	e9 f0       	breq	.+58     	; 0x3ac6 <handleData>
    cpi     token, USBPID_DATA1 ;[15]
    3a8c:	0b 34       	cpi	r16, 0x4B	; 75
    breq    handleData          ;[16]
    3a8e:	d9 f0       	breq	.+54     	; 0x3ac6 <handleData>
    lds     shift, usbDeviceAddr;[17]
    3a90:	20 91 1d 01 	lds	r18, 0x011D
    ldd     x2, y+1             ;[19] ADDR and 1 bit endpoint number
    3a94:	19 81       	ldd	r17, Y+1	; 0x01
    lsl     x2                  ;[21] shift out 1 bit endpoint number
    3a96:	11 0f       	add	r17, r17
    cpse    x2, shift           ;[22]
    3a98:	12 13       	cpse	r17, r18
    rjmp    ignorePacket        ;[23]
    3a9a:	ed cf       	rjmp	.-38     	; 0x3a76 <ignorePacket>
/* only compute endpoint number in x3 if required later */
#if USB_CFG_HAVE_INTRIN_ENDPOINT || USB_CFG_IMPLEMENT_FN_WRITEOUT
    ldd     x3, y+2             ;[24] endpoint number + crc
    rol     x3                  ;[26] shift in LSB of endpoint
#endif
    cpi     token, USBPID_IN    ;[27]
    3a9c:	09 36       	cpi	r16, 0x69	; 105
    breq    handleIn            ;[28]
    3a9e:	41 f1       	breq	.+80     	; 0x3af0 <handleIn>
    cpi     token, USBPID_SETUP ;[29]
    3aa0:	0d 32       	cpi	r16, 0x2D	; 45
    breq    handleSetupOrOut    ;[30]
    3aa2:	11 f0       	breq	.+4      	; 0x3aa8 <handleSetupOrOut>
    cpi     token, USBPID_OUT   ;[31]
    3aa4:	01 3e       	cpi	r16, 0xE1	; 225
    brne    ignorePacket        ;[32] must be ack, nak or whatever
    3aa6:	39 f7       	brne	.-50     	; 0x3a76 <ignorePacket>

00003aa8 <handleSetupOrOut>:
    andi    x3, 0xf             ;[32]
    breq    storeTokenAndReturn ;[33]
    mov     token, x3           ;[34] indicate that this is endpoint x OUT
#endif
storeTokenAndReturn:
    sts     usbCurrentTok, token;[35]
    3aa8:	00 93 24 01 	sts	0x0124, r16

00003aac <doReturn>:
doReturn:
    POP_STANDARD                ;[37] 12...16 cycles
    3aac:	3f 91       	pop	r19
    3aae:	4f 91       	pop	r20
    3ab0:	1f 91       	pop	r17
    3ab2:	0f 91       	pop	r16
    3ab4:	2f 91       	pop	r18
    3ab6:	df 91       	pop	r29
    USB_LOAD_PENDING(YL)        ;[49]
    3ab8:	cc b3       	in	r28, 0x1c	; 28
    sbrc    YL, USB_INTR_PENDING_BIT;[50] check whether data is already arriving
    3aba:	c0 fd       	sbrc	r28, 0
    rjmp    waitForJ            ;[51] save the pops and pushes -- a new interrupt is already pending
    3abc:	51 cf       	rjmp	.-350    	; 0x3960 <waitForJ>

00003abe <sofError>:
sofError:
    POP_RETI                    ;macro call
    3abe:	cf 91       	pop	r28
    3ac0:	cf bf       	out	0x3f, r28	; 63
    3ac2:	cf 91       	pop	r28
    reti
    3ac4:	18 95       	reti

00003ac6 <handleData>:

handleData:
#if USB_CFG_CHECK_CRC
    CRC_CLEANUP_AND_CHECK       ; jumps to ignorePacket if CRC error
#endif
    lds     shift, usbCurrentTok;[18]
    3ac6:	20 91 24 01 	lds	r18, 0x0124
    tst     shift               ;[20]
    3aca:	22 23       	and	r18, r18
    breq    doReturn            ;[21]
    3acc:	79 f3       	breq	.-34     	; 0x3aac <doReturn>
    lds     x2, usbRxLen        ;[22]
    3ace:	10 91 22 01 	lds	r17, 0x0122
    tst     x2                  ;[24]
    3ad2:	11 23       	and	r17, r17
    brne    sendNakAndReti      ;[25]
    3ad4:	11 f5       	brne	.+68     	; 0x3b1a <sendNakAndReti>
; 2006-03-11: The following two lines fix a problem where the device was not
; recognized if usbPoll() was called less frequently than once every 4 ms.
    cpi     cnt, 4              ;[26] zero sized data packets are status phase only -- ignore and ack
    3ad6:	34 30       	cpi	r19, 0x04	; 4
    brmi    sendAckAndReti      ;[27] keep rx buffer clean -- we must not NAK next SETUP
    3ad8:	12 f1       	brmi	.+68     	; 0x3b1e <sendAckAndReti>
#if USB_CFG_CHECK_DATA_TOGGLING
    sts     usbCurrentDataToken, token  ; store for checking by C code
#endif
    sts     usbRxLen, cnt       ;[28] store received data, swap buffers
    3ada:	30 93 22 01 	sts	0x0122, r19
    sts     usbRxToken, shift   ;[30]
    3ade:	20 93 1e 01 	sts	0x011E, r18
    lds     x2, usbInputBufOffset;[32] swap buffers
    3ae2:	10 91 1f 01 	lds	r17, 0x011F
    ldi     cnt, USB_BUFSIZE    ;[34]
    3ae6:	3b e0       	ldi	r19, 0x0B	; 11
    sub     cnt, x2             ;[35]
    3ae8:	31 1b       	sub	r19, r17
    sts     usbInputBufOffset, cnt;[36] buffers now swapped
    3aea:	30 93 1f 01 	sts	0x011F, r19
    rjmp    sendAckAndReti      ;[38] 40 + 17 = 57 until SOP
    3aee:	17 c0       	rjmp	.+46     	; 0x3b1e <sendAckAndReti>

00003af0 <handleIn>:

handleIn:
;We don't send any data as long as the C code has not processed the current
;input data and potentially updated the output data. That's more efficient
;in terms of code size than clearing the tx buffers when a packet is received.
    lds     x1, usbRxLen        ;[30]
    3af0:	00 91 22 01 	lds	r16, 0x0122
    cpi     x1, 1               ;[32] negative values are flow control, 0 means "buffer free"
    3af4:	01 30       	cpi	r16, 0x01	; 1
    brge    sendNakAndReti      ;[33] unprocessed input packet?
    3af6:	8c f4       	brge	.+34     	; 0x3b1a <sendNakAndReti>
    ldi     x1, USBPID_NAK      ;[34] prepare value for usbTxLen
    3af8:	0a e5       	ldi	r16, 0x5A	; 90
    brne    sendNakAndReti      ;[36]
#else
    brne    handleIn1           ;[36]
#endif
#endif
    lds     cnt, usbTxLen       ;[37]
    3afa:	30 91 00 01 	lds	r19, 0x0100
    sbrc    cnt, 4              ;[39] all handshake tokens have bit 4 set
    3afe:	34 fd       	sbrc	r19, 4
    rjmp    sendCntAndReti      ;[40] 42 + 16 = 58 until SOP
    3b00:	10 c0       	rjmp	.+32     	; 0x3b22 <sendCntAndReti>
    sts     usbTxLen, x1        ;[41] x1 == USBPID_NAK from above
    3b02:	00 93 00 01 	sts	0x0100, r16
    ldi     YL, lo8(usbTxBuf)   ;[43]
    3b06:	c2 e1       	ldi	r28, 0x12	; 18
    ldi     YH, hi8(usbTxBuf)   ;[44]
    3b08:	d1 e0       	ldi	r29, 0x01	; 1
    rjmp    usbSendAndReti      ;[45] 57 + 12 = 59 until SOP
    3b0a:	0f c0       	rjmp	.+30     	; 0x3b2a <usbSendAndReti>

00003b0c <stuffN1Delay>:
;----------------------------------------------------------------------------

txByteLoop:
txBitloop:
stuffN1Delay:                   ;     [03]
    ror     shift               ;[-5] [11] [59]
    3b0c:	27 95       	ror	r18
    brcc    doExorN1            ;[-4]      [60]
    3b0e:	a8 f4       	brcc	.+42     	; 0x3b3a <doExorN1>
    subi    x4, 1               ;[-3]
    3b10:	51 50       	subi	r21, 0x01	; 1
    brne    commonN1            ;[-2]
    3b12:	a9 f4       	brne	.+42     	; 0x3b3e <commonN1>
    lsl     shift               ;[-1] compensate ror after rjmp stuffDelay
    3b14:	22 0f       	add	r18, r18
    nop                         ;[00] stuffing consists of just waiting 8 cycles
    3b16:	00 00       	nop
    rjmp    stuffN1Delay        ;[01] after ror, C bit is reliably clear
    3b18:	f9 cf       	rjmp	.-14     	; 0x3b0c <stuffN1Delay>

00003b1a <sendNakAndReti>:

sendNakAndReti:                 ;0 [-19] 19 cycles until SOP
    ldi     x3, USBPID_NAK      ;1 [-18]
    3b1a:	4a e5       	ldi	r20, 0x5A	; 90
    rjmp    usbSendX3           ;2 [-16]
    3b1c:	03 c0       	rjmp	.+6      	; 0x3b24 <usbSendX3>

00003b1e <sendAckAndReti>:
sendAckAndReti:                 ;0 [-19] 19 cycles until SOP
    ldi     x3, USBPID_ACK      ;1 [-18]
    3b1e:	42 ed       	ldi	r20, 0xD2	; 210
    rjmp    usbSendX3           ;2 [-16]
    3b20:	01 c0       	rjmp	.+2      	; 0x3b24 <usbSendX3>

00003b22 <sendCntAndReti>:
sendCntAndReti:                 ;0 [-17] 17 cycles until SOP
    mov     x3, cnt             ;1 [-16]
    3b22:	43 2f       	mov	r20, r19

00003b24 <usbSendX3>:
usbSendX3:                      ;0 [-16]
    ldi     YL, 20              ;1 [-15] 'x3' is R20
    3b24:	c4 e1       	ldi	r28, 0x14	; 20
    ldi     YH, 0               ;1 [-14]
    3b26:	d0 e0       	ldi	r29, 0x00	; 0
    ldi     cnt, 2              ;1 [-13]
    3b28:	32 e0       	ldi	r19, 0x02	; 2

00003b2a <usbSendAndReti>:
;pointer to data in 'Y'
;number of bytes in 'cnt' -- including sync byte
;uses: x1...x2, x4, shift, cnt, Y [x1 = mirror USBOUT, x2 = USBMASK, x4 = bitstuff cnt]
;Numbers in brackets are time since first bit of sync pattern is sent (start of instruction)
usbSendAndReti:
    in      x2, USBDDR          ;[-12] 12 cycles until SOP
    3b2a:	1a b1       	in	r17, 0x0a	; 10
    ori     x2, USBMASK         ;[-11]
    3b2c:	14 61       	ori	r17, 0x14	; 20
    sbi     USBOUT, USBMINUS    ;[-10] prepare idle state; D+ and D- must have been 0 (no pullups)
    3b2e:	5c 9a       	sbi	0x0b, 4	; 11
    out     USBDDR, x2          ;[-8] <--- acquire bus
    3b30:	1a b9       	out	0x0a, r17	; 10
    in      x1, USBOUT          ;[-7] port mirror for tx loop
    3b32:	0b b1       	in	r16, 0x0b	; 11
    ldi     shift, 0x40         ;[-6] sync byte is first byte sent (we enter loop after ror)
    3b34:	20 e4       	ldi	r18, 0x40	; 64
    ldi     x2, USBMASK         ;[-5]
    3b36:	14 e1       	ldi	r17, 0x14	; 20
    push    x4                  ;[-4]
    3b38:	5f 93       	push	r21

00003b3a <doExorN1>:
doExorN1:
    eor     x1, x2              ;[-2] [06] [62]
    3b3a:	01 27       	eor	r16, r17
    ldi     x4, 6               ;[-1] [07] [63]
    3b3c:	56 e0       	ldi	r21, 0x06	; 6

00003b3e <commonN1>:
commonN1:
stuffN2Delay:
    out     USBOUT, x1          ;[00] [08] [64] <--- set bit
    3b3e:	0b b9       	out	0x0b, r16	; 11
    ror     shift               ;[01]
    3b40:	27 95       	ror	r18
    brcc    doExorN2            ;[02]
    3b42:	20 f4       	brcc	.+8      	; 0x3b4c <doExorN2>
    subi    x4, 1               ;[03]
    3b44:	51 50       	subi	r21, 0x01	; 1
    brne    commonN2            ;[04]
    3b46:	21 f4       	brne	.+8      	; 0x3b50 <commonN2>
    lsl     shift               ;[05] compensate ror after rjmp stuffDelay
    3b48:	22 0f       	add	r18, r18
    rjmp    stuffN2Delay        ;[06] after ror, C bit is reliably clear
    3b4a:	f9 cf       	rjmp	.-14     	; 0x3b3e <commonN1>

00003b4c <doExorN2>:
doExorN2:
    eor     x1, x2              ;[04] [12]
    3b4c:	01 27       	eor	r16, r17
    ldi     x4, 6               ;[05] [13]
    3b4e:	56 e0       	ldi	r21, 0x06	; 6

00003b50 <commonN2>:
commonN2:
    nop                         ;[06] [14]
    3b50:	00 00       	nop
    subi    cnt, 171            ;[07] [15] trick: (3 * 171) & 0xff = 1
    3b52:	3b 5a       	subi	r19, 0xAB	; 171
    out     USBOUT, x1          ;[08] [16] <--- set bit
    3b54:	0b b9       	out	0x0b, r16	; 11
    brcs    txBitloop           ;[09]      [25] [41]
    3b56:	d0 f2       	brcs	.-76     	; 0x3b0c <stuffN1Delay>

00003b58 <stuff6Delay>:

stuff6Delay:
    ror     shift               ;[42] [50]
    3b58:	27 95       	ror	r18
    brcc    doExor6             ;[43]
    3b5a:	28 f4       	brcc	.+10     	; 0x3b66 <doExor6>
    subi    x4, 1               ;[44]
    3b5c:	51 50       	subi	r21, 0x01	; 1
    brne    common6             ;[45]
    3b5e:	29 f4       	brne	.+10     	; 0x3b6a <common6>
    lsl     shift               ;[46] compensate ror after rjmp stuffDelay
    3b60:	22 0f       	add	r18, r18
    nop                         ;[47] stuffing consists of just waiting 8 cycles
    3b62:	00 00       	nop
    rjmp    stuff6Delay         ;[48] after ror, C bit is reliably clear
    3b64:	f9 cf       	rjmp	.-14     	; 0x3b58 <stuff6Delay>

00003b66 <doExor6>:
doExor6:
    eor     x1, x2              ;[45] [53]
    3b66:	01 27       	eor	r16, r17
    ldi     x4, 6               ;[46]
    3b68:	56 e0       	ldi	r21, 0x06	; 6

00003b6a <common6>:
common6:
stuff7Delay:
    ror     shift               ;[47] [55]
    3b6a:	27 95       	ror	r18
    out     USBOUT, x1          ;[48] <--- set bit
    3b6c:	0b b9       	out	0x0b, r16	; 11
    brcc    doExor7             ;[49]
    3b6e:	20 f4       	brcc	.+8      	; 0x3b78 <doExor7>
    subi    x4, 1               ;[50]
    3b70:	51 50       	subi	r21, 0x01	; 1
    brne    common7             ;[51]
    3b72:	21 f4       	brne	.+8      	; 0x3b7c <common7>
    lsl     shift               ;[52] compensate ror after rjmp stuffDelay
    3b74:	22 0f       	add	r18, r18
    rjmp    stuff7Delay         ;[53] after ror, C bit is reliably clear
    3b76:	f9 cf       	rjmp	.-14     	; 0x3b6a <common6>

00003b78 <doExor7>:
doExor7:
    eor     x1, x2              ;[51] [59]
    3b78:	01 27       	eor	r16, r17
    ldi     x4, 6               ;[52]
    3b7a:	56 e0       	ldi	r21, 0x06	; 6

00003b7c <common7>:
common7:
    ld      shift, y+           ;[53]
    3b7c:	29 91       	ld	r18, Y+
    tst     cnt                 ;[55]
    3b7e:	33 23       	and	r19, r19
    out     USBOUT, x1          ;[56] <--- set bit
    3b80:	0b b9       	out	0x0b, r16	; 11
    brne    txByteLoop          ;[57]
    3b82:	21 f6       	brne	.-120    	; 0x3b0c <stuffN1Delay>

;make SE0:
    cbr     x1, USBMASK         ;[58] prepare SE0 [spec says EOP may be 15 to 18 cycles]
    3b84:	0b 7e       	andi	r16, 0xEB	; 235
    lds     x2, usbNewDeviceAddr;[59]
    3b86:	10 91 23 01 	lds	r17, 0x0123
    lsl     x2                  ;[61] we compare with left shifted address
    3b8a:	11 0f       	add	r17, r17
    subi    YL, 2 + 20          ;[62] Only assign address on data packets, not ACK/NAK in x3
    3b8c:	c6 51       	subi	r28, 0x16	; 22
    sbci    YH, 0               ;[63]
    3b8e:	d0 40       	sbci	r29, 0x00	; 0
    out     USBOUT, x1          ;[00] <-- out SE0 -- from now 2 bits = 16 cycles until bus idle
    3b90:	0b b9       	out	0x0b, r16	; 11
;2006-03-06: moved transfer of new address to usbDeviceAddr from C-Code to asm:
;set address only after data packet was sent, not after handshake
    breq    skipAddrAssign      ;[01]
    3b92:	11 f0       	breq	.+4      	; 0x3b98 <skipAddrAssign>
    sts     usbDeviceAddr, x2   ; if not skipped: SE0 is one cycle longer
    3b94:	10 93 1d 01 	sts	0x011D, r17

00003b98 <skipAddrAssign>:
skipAddrAssign:
;end of usbDeviceAddress transfer
    ldi     x2, 1<<USB_INTR_PENDING_BIT;[03] int0 occurred during TX -- clear pending flag
    3b98:	11 e0       	ldi	r17, 0x01	; 1
    USB_STORE_PENDING(x2)       ;[04]
    3b9a:	1c bb       	out	0x1c, r17	; 28
    ori     x1, USBIDLE         ;[05]
    3b9c:	00 61       	ori	r16, 0x10	; 16
    in      x2, USBDDR          ;[06]
    3b9e:	1a b1       	in	r17, 0x0a	; 10
    cbr     x2, USBMASK         ;[07] set both pins to input
    3ba0:	1b 7e       	andi	r17, 0xEB	; 235
    mov     x3, x1              ;[08]
    3ba2:	40 2f       	mov	r20, r16
    cbr     x3, USBMASK         ;[09] configure no pullup on both pins
    3ba4:	4b 7e       	andi	r20, 0xEB	; 235
    pop     x4                  ;[10]
    3ba6:	5f 91       	pop	r21
    nop2                        ;[12]
    3ba8:	00 c0       	rjmp	.+0      	; 0x3baa <skipAddrAssign+0x12>
    nop2                        ;[14]
    3baa:	00 c0       	rjmp	.+0      	; 0x3bac <skipAddrAssign+0x14>
    out     USBOUT, x1          ;[16] <-- out J (idle) -- end of SE0 (EOP signal)
    3bac:	0b b9       	out	0x0b, r16	; 11
    out     USBDDR, x2          ;[17] <-- release bus now
    3bae:	1a b9       	out	0x0a, r17	; 10
    out     USBOUT, x3          ;[18] <-- ensure no pull-up resistors are active
    3bb0:	4b b9       	out	0x0b, r20	; 11
    rjmp    doReturn
    3bb2:	7c cf       	rjmp	.-264    	; 0x3aac <doReturn>

00003bb4 <_mywait>:

/* ------------------------------------------------------------------------ */

#if HAVE_UNPRECISEWAIT
static void _mywait(uint8_t waitloopcnt) {
    asm volatile (
    3bb4:	31 97       	sbiw	r30, 0x01	; 1
    3bb6:	80 40       	sbci	r24, 0x00	; 0
    3bb8:	e9 f7       	brne	.-6      	; 0x3bb4 <_mywait>
    3bba:	08 95       	ret

00003bbc <usbFunctionSetup_USBASP_FUNC_TRANSMIT>:
#endif

/* ------------------------------------------------------------------------ */


uchar usbFunctionSetup_USBASP_FUNC_TRANSMIT(usbRequest_t *rq) {
    3bbc:	fc 01       	movw	r30, r24
  uchar rval = 0;
  usbWord_t address;
  address.bytes[1] = rq->wValue.bytes[1];
    3bbe:	93 81       	ldd	r25, Z+3	; 0x03
  address.bytes[0] = rq->wIndex.bytes[0];
    3bc0:	84 81       	ldd	r24, Z+4	; 0x04

  if(rq->wValue.bytes[0] == 0x30){        /* read signature */
    3bc2:	22 81       	ldd	r18, Z+2	; 0x02
    3bc4:	20 33       	cpi	r18, 0x30	; 48
    3bc6:	39 f4       	brne	.+14     	; 0x3bd6 <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x1a>
    rval = rq->wIndex.bytes[0] & 3;
    3bc8:	83 70       	andi	r24, 0x03	; 3
    rval = signatureBytes[rval];
    3bca:	e8 2f       	mov	r30, r24
    3bcc:	f0 e0       	ldi	r31, 0x00	; 0
    3bce:	ee 5f       	subi	r30, 0xFE	; 254
    3bd0:	fe 4f       	sbci	r31, 0xFE	; 254
    3bd2:	80 81       	ld	r24, Z
    3bd4:	08 95       	ret
#else
      rval = pgm_read_byte((((addr_t)address.word)<<1)+1);
#endif
#endif
#if HAVE_EEPROM_BYTE_ACCESS
  }else if(rq->wValue.bytes[0] == 0xa0){  /* read EEPROM byte */
    3bd6:	20 3a       	cpi	r18, 0xA0	; 160
    3bd8:	09 f4       	brne	.+2      	; 0x3bdc <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x20>
      rval = eeprom_read_byte((void *)address.word);
    3bda:	ef c1       	rjmp	.+990    	; 0x3fba <__eerd_byte_m168>
    3bdc:	20 3c       	cpi	r18, 0xC0	; 192
  }else if(rq->wValue.bytes[0] == 0xc0){  /* write EEPROM byte */
    3bde:	19 f4       	brne	.+6      	; 0x3be6 <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x2a>
    3be0:	65 81       	ldd	r22, Z+5	; 0x05
      eeprom_write_byte((void *)address.word, rq->wIndex.bytes[1]);
    3be2:	f3 d1       	rcall	.+998    	; 0x3fca <__eewr_byte_m168>
    3be4:	03 c0       	rjmp	.+6      	; 0x3bec <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x30>
    3be6:	2f 3f       	cpi	r18, 0xFF	; 255
    3be8:	09 f4       	brne	.+2      	; 0x3bec <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x30>
	    (HAVE_BOOTLOADER_HIDDENEXITCOMMAND != 0x5c) && \
	    (HAVE_BOOTLOADER_HIDDENEXITCOMMAND != 0x30) && \
	    (HAVE_BOOTLOADER_HIDDENEXITCOMMAND != 0xac) && \
	    (HAVE_BOOTLOADER_HIDDENEXITCOMMAND != 0x50) && (HAVE_BOOTLOADER_HIDDENEXITCOMMAND != 0x58) && \
	    (HAVE_BOOTLOADER_HIDDENEXITCOMMAND != 0x38))
  }else if(rq->wValue.bytes[0] == (HAVE_BOOTLOADER_HIDDENEXITCOMMAND)){  /* cause a bootLoaderExit at disconnect */
    3bea:	11 ef       	ldi	r17, 0xF1	; 241
    3bec:	80 e0       	ldi	r24, 0x00	; 0
      stayinloader = 0xf1;  /* we need to be connected - so assume it */
    3bee:	08 95       	ret

00003bf0 <main>:

/* ------------------------------------------------------------------------ */


uchar usbFunctionSetup_USBASP_FUNC_TRANSMIT(usbRequest_t *rq) {
  uchar rval = 0;
    3bf0:	1a b8       	out	0x0a, r1	; 10
  }else{
      /* ignore all others, return default value == 0 */
  }
        
  return rval;
}
    3bf2:	88 e0       	ldi	r24, 0x08	; 8
static inline void  bootLoaderInit(void)
{
#if (BOOTLOADER_IGNOREPROGBUTTON)
#else
    PIN_DDR(JUMPER_PORT)  = 0;
    PIN_PORT(JUMPER_PORT) = (1<< PIN(JUMPER_PORT, JUMPER_BIT)); /* activate pull-up */
    3bf4:	8b b9       	out	0x0b, r24	; 11
    /* initialize  */
    bootLoaderInit();
    odDebugInit();
    DBG1(0x00, 0, 0);
#ifndef NO_FLASH_WRITE
    GICR = (1 << IVCE);  /* enable change of interrupt vectors */
    3bf6:	81 e0       	ldi	r24, 0x01	; 1
    3bf8:	85 bf       	out	0x35, r24	; 53
    GICR = (1 << IVSEL); /* move interrupts to boot flash section */
    3bfa:	82 e0       	ldi	r24, 0x02	; 2
    3bfc:	85 bf       	out	0x35, r24	; 53
#endif
#if (HAVE_BOOTLOADER_ADDITIONALMSDEVICEWAIT>0)    
#	if HAVE_UNPRECISEWAIT
    _mywait(1+((HAVE_BOOTLOADER_ADDITIONALMSDEVICEWAIT*F_CPU)/262144000));
    3bfe:	83 e0       	ldi	r24, 0x03	; 3
    3c00:	d9 df       	rcall	.-78     	; 0x3bb4 <_mywait>
    3c02:	80 91 3c 01 	lds	r24, 0x013C
#	if (BOOTLOADER_ALWAYSENTERPROGRAMMODE)
#		define bootLoaderCondition()	(true)
#	else
static inline bool bootLoaderCondition(void)
{
  if (__BOOTLOADERENTRY_FROMSOFTWARE__bootup_MCUCSR & (~(_BV(WDRF)))) {
    3c06:	87 7f       	andi	r24, 0xF7	; 247
    3c08:	21 f4       	brne	.+8      	; 0x3c12 <main+0x22>
    3c0a:	80 91 3d 01 	lds	r24, 0x013D
  } else {
    if (__BOOTLOADERENTRY_FROMSOFTWARE__bootup_RAMEND_doesmatch == (__BOOTLOADERENTRY_FROMSOFTWARE__EXPECTEDADDRESS & 0xff)) {
    3c0e:	88 23       	and	r24, r24
    3c10:	81 f0       	breq	.+32     	; 0x3c32 <main+0x42>
    3c12:	4b 9b       	sbis	0x09, 3	; 9
#	else
    _delay_ms(HAVE_BOOTLOADER_ADDITIONALMSDEVICEWAIT);
#	endif
#endif
    if(bootLoaderCondition()){
    3c14:	0e c0       	rjmp	.+28     	; 0x3c32 <main+0x42>
    3c16:	f8 94       	cli
}
#else
static void __attribute__((__noreturn__)) leaveBootloader(void);
static void leaveBootloader(void) {
    DBG1(0x01, 0, 0);
    cli();
    3c18:	54 9a       	sbi	0x0a, 4	; 10
    usbDeviceDisconnect();
    3c1a:	1b b8       	out	0x0b, r1	; 11

static inline void  bootLoaderExit(void)
{
#if (BOOTLOADER_IGNOREPROGBUTTON)
#else
    PIN_PORT(JUMPER_PORT) = 0;		/* undo bootLoaderInit() changes */
    3c1c:	1d ba       	out	0x1d, r1	; 29
    bootLoaderExit();
    USB_INTR_ENABLE = 0;
    3c1e:	10 92 69 00 	sts	0x0069, r1
    USB_INTR_CFG = 0;       /* also reset config bits */
    3c22:	81 e0       	ldi	r24, 0x01	; 1
    GICR = (1 << IVCE);     /* enable change of interrupt vectors */
    3c24:	85 bf       	out	0x35, r24	; 53
    3c26:	15 be       	out	0x35, r1	; 53
    GICR = (0 << IVSEL);    /* move interrupts to application flash section */
    3c28:	e0 91 10 01 	lds	r30, 0x0110
/* We must go through a global function pointer variable instead of writing
 *  ((void (*)(void))0)();
 * because the compiler optimizes a constant 0 to "rcall 0" which is not
 * handled correctly by the assembler.
 */
    nullVector();
    3c2c:	f0 91 11 01 	lds	r31, 0x0111
    3c30:	09 95       	icall
    3c32:	1e ef       	ldi	r17, 0xFE	; 254
#	endif
#endif
    if(bootLoaderCondition()){
#if (BOOTLOADER_CAN_EXIT)
#	if (USE_EXCESSIVE_ASSEMBLER)
asm  volatile  (
    3c34:	14 be       	out	0x34, r1	; 52
	 */
	MCUSR &= ~(_BV(WDRF));
#	endif
	wdt_disable();    /* main app may have enabled watchdog */
#endif
	MCUCSR = 0;       /* clear all reset flags for next time */
    3c36:	80 91 69 00 	lds	r24, 0x0069
/* ------------------------------------------------------------------------- */

USB_PUBLIC void usbInit(void)
{
#if USB_INTR_CFG_SET != 0
    USB_INTR_CFG |= USB_INTR_CFG_SET;
    3c3a:	82 60       	ori	r24, 0x02	; 2
    3c3c:	80 93 69 00 	sts	0x0069, r24
    3c40:	e8 9a       	sbi	0x1d, 0	; 29
#endif
#if USB_INTR_CFG_CLR != 0
    USB_INTR_CFG &= ~(USB_INTR_CFG_CLR);
#endif
    USB_INTR_ENABLE |= (1 << USB_INTR_ENABLE_BIT);
    3c42:	54 9a       	sbi	0x0a, 4	; 10

static void initForUsbConnectivity(void)
{
    usbInit();
    /* enforce USB re-enumerate: */
    usbDeviceDisconnect();  /* do this while interrupts are disabled */
    3c44:	8c e0       	ldi	r24, 0x0C	; 12
#if HAVE_UNPRECISEWAIT
    /* (0.25s*F_CPU)/(4 cycles per loop) ~ (65536*waitloopcnt)
     * F_CPU/(16*65536) ~ waitloopcnt
     * F_CPU / 1048576 ~ waitloopcnt
     */
    _mywait(1 + (F_CPU/1048576));
    3c46:	b6 df       	rcall	.-148    	; 0x3bb4 <_mywait>
    3c48:	54 98       	cbi	0x0a, 4	; 10
    3c4a:	78 94       	sei
#else
    _delay_ms(260);         /* fake USB disconnect for > 250 ms */
#endif
    usbDeviceConnect();
    3c4c:	00 91 22 01 	lds	r16, 0x0122
USB_PUBLIC void usbPoll(void)
{
schar   len;
uchar   i;

    len = usbRxLen - 3;
    3c50:	03 50       	subi	r16, 0x03	; 3
    3c52:	07 fd       	sbrc	r16, 7
    3c54:	27 c1       	rjmp	.+590    	; 0x3ea4 <usbFunctionWrite_finished+0x12>
    if(len >= 0){
    3c56:	80 91 1f 01 	lds	r24, 0x011F
 * need data integrity checks with this driver, check the CRC in your app
 * code and report errors back to the host. Since the ACK was already sent,
 * retries must be handled on application level.
 * unsigned crc = usbCrc16(buffer + 1, usbRxLen - 3);
 */
        usbProcessRx(usbRxBuf + USB_BUFSIZE + 1 - usbInputBufOffset, len);
    3c5a:	cc e0       	ldi	r28, 0x0C	; 12
    3c5c:	d0 e0       	ldi	r29, 0x00	; 0
    3c5e:	c8 1b       	sub	r28, r24
    3c60:	d1 09       	sbc	r29, r1
    3c62:	ca 5d       	subi	r28, 0xDA	; 218
    3c64:	de 4f       	sbci	r29, 0xFE	; 254
    3c66:	80 91 1e 01 	lds	r24, 0x011E
    if(usbRxToken < 0x10){  /* OUT to endpoint != 0: endpoint number in usbRxToken */
        usbFunctionWriteOut(data, len);
        return;
    }
#endif
    if(usbRxToken == (uchar)USBPID_SETUP){
    3c6a:	8d 32       	cpi	r24, 0x2D	; 45
    3c6c:	09 f0       	breq	.+2      	; 0x3c70 <main+0x80>
    3c6e:	b3 c0       	rjmp	.+358    	; 0x3dd6 <main+0x1e6>
    3c70:	08 30       	cpi	r16, 0x08	; 8
    3c72:	09 f0       	breq	.+2      	; 0x3c76 <main+0x86>
        if(len != 8)    /* Setup size must be always 8 bytes. Ignore otherwise. */
    3c74:	15 c1       	rjmp	.+554    	; 0x3ea0 <usbFunctionWrite_finished+0xe>
    3c76:	83 ec       	ldi	r24, 0xC3	; 195
    3c78:	80 93 12 01 	sts	0x0112, r24
            return;
        usbMsgLen_t replyLen;
        usbTxBuf[0] = USBPID_DATA0;         /* initialize data toggling */
    3c7c:	8a e5       	ldi	r24, 0x5A	; 90
    3c7e:	80 93 00 01 	sts	0x0100, r24
        usbTxLen = USBPID_NAK;              /* abort pending transmit */
    3c82:	10 92 06 01 	sts	0x0106, r1
        usbMsgFlags = 0;
    3c86:	88 81       	ld	r24, Y
    3c88:	80 76       	andi	r24, 0x60	; 96
        uchar type = rq->bmRequestType & USBRQ_TYPE_MASK;
    3c8a:	29 81       	ldd	r18, Y+1	; 0x01
    3c8c:	88 23       	and	r24, r24
    3c8e:	99 f1       	breq	.+102    	; 0x3cf6 <main+0x106>
        if(type != USBRQ_TYPE_STANDARD){    /* standard requests are handled by driver */
    3c90:	87 e0       	ldi	r24, 0x07	; 7
    3c92:	91 e0       	ldi	r25, 0x01	; 1
{
usbRequest_t    *rq = (void *)data;
usbMsgLen_t     len = 0;
static uchar    replyBuffer[4];

    usbMsgPtr = (usbMsgPtr_t)replyBuffer;
    3c94:	90 93 21 01 	sts	0x0121, r25
    3c98:	80 93 20 01 	sts	0x0120, r24
    3c9c:	23 30       	cpi	r18, 0x03	; 3
    3c9e:	31 f4       	brne	.+12     	; 0x3cac <main+0xbc>
    if(rq->bRequest == USBASP_FUNC_TRANSMIT){   /* emulate parts of ISP protocol */
    3ca0:	ce 01       	movw	r24, r28
    3ca2:	8c df       	rcall	.-232    	; 0x3bbc <usbFunctionSetup_USBASP_FUNC_TRANSMIT>
        replyBuffer[3] = usbFunctionSetup_USBASP_FUNC_TRANSMIT(rq);
    3ca4:	80 93 0a 01 	sts	0x010A, r24
    3ca8:	24 e0       	ldi	r18, 0x04	; 4
    3caa:	8b c0       	rjmp	.+278    	; 0x3dc2 <main+0x1d2>
    3cac:	25 30       	cpi	r18, 0x05	; 5
        len = (usbMsgLen_t)4;
    3cae:	f9 f0       	breq	.+62     	; 0x3cee <main+0xfe>
    3cb0:	2a 30       	cpi	r18, 0x0A	; 10
    }else if((rq->bRequest == USBASP_FUNC_ENABLEPROG) || (rq->bRequest == USBASP_FUNC_SETISPSCK)){
    3cb2:	e9 f0       	breq	.+58     	; 0x3cee <main+0xfe>
    3cb4:	82 2f       	mov	r24, r18
    3cb6:	84 50       	subi	r24, 0x04	; 4
    3cb8:	86 30       	cpi	r24, 0x06	; 6
        /* replyBuffer[0] = 0; is never touched and thus always 0 which means success */
        len = (usbMsgLen_t)1;
    }else if(rq->bRequest >= USBASP_FUNC_READFLASH && rq->bRequest <= USBASP_FUNC_SETLONGADDRESS){
    3cba:	98 f4       	brcc	.+38     	; 0x3ce2 <main+0xf2>
    3cbc:	8a 81       	ldd	r24, Y+2	; 0x02
    3cbe:	9b 81       	ldd	r25, Y+3	; 0x03
    3cc0:	90 93 0c 01 	sts	0x010C, r25
        currentAddress.w[0] = rq->wValue.word;
    3cc4:	80 93 0b 01 	sts	0x010B, r24
    3cc8:	29 30       	cpi	r18, 0x09	; 9
    3cca:	99 f0       	breq	.+38     	; 0x3cf2 <main+0x102>
    3ccc:	8e 81       	ldd	r24, Y+6	; 0x06
        if(rq->bRequest == USBASP_FUNC_SETLONGADDRESS){
    3cce:	80 93 0d 01 	sts	0x010D, r24
#if (FLASHEND) > 0xffff
            currentAddress.w[1] = rq->wIndex.word;
#endif
        }else{
            bytesRemaining = rq->wLength.bytes[0];
    3cd2:	8d 81       	ldd	r24, Y+5	; 0x05
    3cd4:	82 70       	andi	r24, 0x02	; 2
    3cd6:	80 93 0e 01 	sts	0x010E, r24
            /* if(rq->bRequest == USBASP_FUNC_WRITEFLASH) only evaluated during writeFlash anyway */
            isLastPage = rq->wIndex.bytes[1] & 0x02;
    3cda:	20 93 0f 01 	sts	0x010F, r18
    3cde:	2f ef       	ldi	r18, 0xFF	; 255
#if HAVE_EEPROM_PAGED_ACCESS
            currentRequest = rq->bRequest;
    3ce0:	69 c0       	rjmp	.+210    	; 0x3db4 <main+0x1c4>
    3ce2:	22 30       	cpi	r18, 0x02	; 2
#endif
            len = USB_NO_MSG; /* hand over to usbFunctionRead() / usbFunctionWrite() */
    3ce4:	11 f4       	brne	.+4      	; 0x3cea <main+0xfa>
    3ce6:	1e 7f       	andi	r17, 0xFE	; 254
        }

    }else if(rq->bRequest == USBASP_FUNC_DISCONNECT){
    3ce8:	04 c0       	rjmp	.+8      	; 0x3cf2 <main+0x102>
    3cea:	11 60       	ori	r17, 0x01	; 1
#if BOOTLOADER_CAN_EXIT
#	ifdef CONFIG_HAVE__BOOTLOADER_ABORTTIMEOUTONACT
      /* let the main loop know for ever that here was activity */
      stayinloader	   &= (0xfc);
#	else
      stayinloader	   &= (0xfe);
    3cec:	02 c0       	rjmp	.+4      	; 0x3cf2 <main+0x102>
    3cee:	21 e0       	ldi	r18, 0x01	; 1
#	endif
#endif
    }else{
        /* ignore: others, but could be USBASP_FUNC_CONNECT */
#if BOOTLOADER_CAN_EXIT
	stayinloader	   |= (0x01);
    3cf0:	68 c0       	rjmp	.+208    	; 0x3dc2 <main+0x1d2>
    3cf2:	20 e0       	ldi	r18, 0x00	; 0
    if(rq->bRequest == USBASP_FUNC_TRANSMIT){   /* emulate parts of ISP protocol */
        replyBuffer[3] = usbFunctionSetup_USBASP_FUNC_TRANSMIT(rq);
        len = (usbMsgLen_t)4;
    }else if((rq->bRequest == USBASP_FUNC_ENABLEPROG) || (rq->bRequest == USBASP_FUNC_SETISPSCK)){
        /* replyBuffer[0] = 0; is never touched and thus always 0 which means success */
        len = (usbMsgLen_t)1;
    3cf4:	66 c0       	rjmp	.+204    	; 0x3dc2 <main+0x1d2>
    3cf6:	8a 81       	ldd	r24, Y+2	; 0x02


usbMsgLen_t usbFunctionSetup(uchar data[8])
{
usbRequest_t    *rq = (void *)data;
usbMsgLen_t     len = 0;
    3cf8:	10 92 1b 01 	sts	0x011B, r1
 */
static inline usbMsgLen_t usbDriverSetup(usbRequest_t *rq)
{
usbMsgLen_t len = 0;
uchar   *dataPtr = usbTxBuf + 9;    /* there are 2 bytes free space at the end of the buffer */
uchar   value = rq->wValue.bytes[0];
    3cfc:	21 11       	cpse	r18, r1
#if USB_CFG_IMPLEMENT_HALT
uchar   index = rq->wIndex.bytes[0];
#endif

    dataPtr[0] = 0; /* default reply common to USBRQ_GET_STATUS and USBRQ_GET_INTERFACE */
    3cfe:	06 c0       	rjmp	.+12     	; 0x3d0c <main+0x11c>
    3d00:	10 92 1c 01 	sts	0x011C, r1
    SWITCH_START(rq->bRequest)
    SWITCH_CASE(USBRQ_GET_STATUS)           /* 0 */
    3d04:	8b e1       	ldi	r24, 0x1B	; 27
            dataPtr[0] =  USB_CFG_IS_SELF_POWERED;
#if USB_CFG_IMPLEMENT_HALT
        if(recipient == USBRQ_RCPT_ENDPOINT && index == 0x81)   /* request status for endpoint 1 */
            dataPtr[0] = usbTxLen1 == USBPID_STALL;
#endif
        dataPtr[1] = 0;
    3d06:	91 e0       	ldi	r25, 0x01	; 1
    3d08:	22 e0       	ldi	r18, 0x02	; 2
 * standard requests instead of class and custom requests.
 */
static inline usbMsgLen_t usbDriverSetup(usbRequest_t *rq)
{
usbMsgLen_t len = 0;
uchar   *dataPtr = usbTxBuf + 9;    /* there are 2 bytes free space at the end of the buffer */
    3d0a:	4e c0       	rjmp	.+156    	; 0x3da8 <main+0x1b8>
    3d0c:	25 30       	cpi	r18, 0x05	; 5
#if USB_CFG_IMPLEMENT_HALT
        if(recipient == USBRQ_RCPT_ENDPOINT && index == 0x81)   /* request status for endpoint 1 */
            dataPtr[0] = usbTxLen1 == USBPID_STALL;
#endif
        dataPtr[1] = 0;
        len = 2;
    3d0e:	19 f4       	brne	.+6      	; 0x3d16 <main+0x126>
    3d10:	80 93 23 01 	sts	0x0123, r24
        if(value == 0 && index == 0x81){    /* feature 0 == HALT for endpoint == 1 */
            usbTxLen1 = rq->bRequest == USBRQ_CLEAR_FEATURE ? USBPID_NAK : USBPID_STALL;
            usbResetDataToggling();
        }
#endif
    SWITCH_CASE(USBRQ_SET_ADDRESS)          /* 5 */
    3d14:	3d c0       	rjmp	.+122    	; 0x3d90 <main+0x1a0>
        usbNewDeviceAddr = value;
    3d16:	26 30       	cpi	r18, 0x06	; 6
    3d18:	a9 f5       	brne	.+106    	; 0x3d84 <main+0x194>
    3d1a:	9b 81       	ldd	r25, Y+3	; 0x03
        USB_SET_ADDRESS_HOOK();
    SWITCH_CASE(USBRQ_GET_DESCRIPTOR)       /* 6 */
    3d1c:	91 30       	cpi	r25, 0x01	; 1
    3d1e:	19 f4       	brne	.+6      	; 0x3d26 <main+0x136>
#else
        }while (1);  		/* main event loop */
#endif
    }
    leaveBootloader();
}
    3d20:	88 e9       	ldi	r24, 0x98	; 152
{
usbMsgLen_t len = 0;
uchar       flags = USB_FLG_MSGPTR_IS_ROM;

    SWITCH_START(rq->wValue.bytes[1])
    SWITCH_CASE(USBDESCR_DEVICE)    /* 1 */
    3d22:	98 e3       	ldi	r25, 0x38	; 56
    3d24:	04 c0       	rjmp	.+8      	; 0x3d2e <main+0x13e>
        GET_DESCRIPTOR(USB_CFG_DESCR_PROPS_DEVICE, usbDescriptorDevice)
    3d26:	92 30       	cpi	r25, 0x02	; 2
    3d28:	41 f4       	brne	.+16     	; 0x3d3a <main+0x14a>
    3d2a:	86 e8       	ldi	r24, 0x86	; 134
    SWITCH_CASE(USBDESCR_CONFIG)    /* 2 */
    3d2c:	98 e3       	ldi	r25, 0x38	; 56
    3d2e:	90 93 21 01 	sts	0x0121, r25
        GET_DESCRIPTOR(USB_CFG_DESCR_PROPS_CONFIGURATION, usbDescriptorConfiguration)
    3d32:	80 93 20 01 	sts	0x0120, r24
    3d36:	22 e1       	ldi	r18, 0x12	; 18
    3d38:	21 c0       	rjmp	.+66     	; 0x3d7c <main+0x18c>
    3d3a:	93 30       	cpi	r25, 0x03	; 3
    3d3c:	f1 f4       	brne	.+60     	; 0x3d7a <main+0x18a>
    3d3e:	81 11       	cpse	r24, r1
    SWITCH_CASE(USBDESCR_STRING)    /* 3 */
    3d40:	08 c0       	rjmp	.+16     	; 0x3d52 <main+0x162>
    3d42:	84 ed       	ldi	r24, 0xD4	; 212
        if(USB_CFG_DESCR_PROPS_STRINGS & USB_PROP_IS_RAM)
            flags = 0;
        len = usbFunctionDescriptor(rq);
#else   /* USB_CFG_DESCR_PROPS_STRINGS & USB_PROP_IS_DYNAMIC */
        SWITCH_START(rq->wValue.bytes[0])
        SWITCH_CASE(0)
    3d44:	98 e3       	ldi	r25, 0x38	; 56
    3d46:	90 93 21 01 	sts	0x0121, r25
            GET_DESCRIPTOR(USB_CFG_DESCR_PROPS_STRING_0, usbDescriptorString0)
    3d4a:	80 93 20 01 	sts	0x0120, r24
    3d4e:	24 e0       	ldi	r18, 0x04	; 4
    3d50:	15 c0       	rjmp	.+42     	; 0x3d7c <main+0x18c>
    3d52:	81 30       	cpi	r24, 0x01	; 1
    3d54:	41 f4       	brne	.+16     	; 0x3d66 <main+0x176>
    3d56:	88 eb       	ldi	r24, 0xB8	; 184
        SWITCH_CASE(1)
    3d58:	98 e3       	ldi	r25, 0x38	; 56
    3d5a:	90 93 21 01 	sts	0x0121, r25
            GET_DESCRIPTOR(USB_CFG_DESCR_PROPS_STRING_VENDOR, usbDescriptorStringVendor)
    3d5e:	80 93 20 01 	sts	0x0120, r24
    3d62:	2c e1       	ldi	r18, 0x1C	; 28
    3d64:	0b c0       	rjmp	.+22     	; 0x3d7c <main+0x18c>
    3d66:	82 30       	cpi	r24, 0x02	; 2
    3d68:	41 f4       	brne	.+16     	; 0x3d7a <main+0x18a>
    3d6a:	8a ea       	ldi	r24, 0xAA	; 170
        SWITCH_CASE(2)
    3d6c:	98 e3       	ldi	r25, 0x38	; 56
    3d6e:	90 93 21 01 	sts	0x0121, r25
            GET_DESCRIPTOR(USB_CFG_DESCR_PROPS_STRING_PRODUCT, usbDescriptorStringDevice)
    3d72:	80 93 20 01 	sts	0x0120, r24
    3d76:	2e e0       	ldi	r18, 0x0E	; 14
    3d78:	01 c0       	rjmp	.+2      	; 0x3d7c <main+0x18c>
    3d7a:	20 e0       	ldi	r18, 0x00	; 0
    3d7c:	80 e4       	ldi	r24, 0x40	; 64
    3d7e:	80 93 06 01 	sts	0x0106, r24
    SWITCH_DEFAULT
        if(USB_CFG_DESCR_PROPS_UNKNOWN & USB_PROP_IS_DYNAMIC){
            len = usbFunctionDescriptor(rq);
        }
    SWITCH_END
    usbMsgFlags = flags;
    3d82:	16 c0       	rjmp	.+44     	; 0x3db0 <main+0x1c0>
    3d84:	28 30       	cpi	r18, 0x08	; 8
    3d86:	69 f0       	breq	.+26     	; 0x3da2 <main+0x1b2>
    3d88:	29 30       	cpi	r18, 0x09	; 9
        usbNewDeviceAddr = value;
        USB_SET_ADDRESS_HOOK();
    SWITCH_CASE(USBRQ_GET_DESCRIPTOR)       /* 6 */
        len = usbDriverDescriptor(rq);
        goto skipMsgPtrAssignment;
    SWITCH_CASE(USBRQ_GET_CONFIGURATION)    /* 8 */
    3d8a:	29 f4       	brne	.+10     	; 0x3d96 <main+0x1a6>
    3d8c:	80 93 25 01 	sts	0x0125, r24
        dataPtr = &usbConfiguration;  /* send current configuration value */
        len = 1;
    SWITCH_CASE(USBRQ_SET_CONFIGURATION)    /* 9 */
    3d90:	8b e1       	ldi	r24, 0x1B	; 27
        usbConfiguration = value;
    3d92:	91 e0       	ldi	r25, 0x01	; 1
    3d94:	04 c0       	rjmp	.+8      	; 0x3d9e <main+0x1ae>
 * standard requests instead of class and custom requests.
 */
static inline usbMsgLen_t usbDriverSetup(usbRequest_t *rq)
{
usbMsgLen_t len = 0;
uchar   *dataPtr = usbTxBuf + 9;    /* there are 2 bytes free space at the end of the buffer */
    3d96:	8b e1       	ldi	r24, 0x1B	; 27
    3d98:	91 e0       	ldi	r25, 0x01	; 1
    3d9a:	2a 30       	cpi	r18, 0x0A	; 10
    3d9c:	21 f0       	breq	.+8      	; 0x3da6 <main+0x1b6>
    3d9e:	20 e0       	ldi	r18, 0x00	; 0
        dataPtr = &usbConfiguration;  /* send current configuration value */
        len = 1;
    SWITCH_CASE(USBRQ_SET_CONFIGURATION)    /* 9 */
        usbConfiguration = value;
        usbResetStall();
    SWITCH_CASE(USBRQ_GET_INTERFACE)        /* 10 */
    3da0:	03 c0       	rjmp	.+6      	; 0x3da8 <main+0x1b8>
    3da2:	85 e2       	ldi	r24, 0x25	; 37
/* usbDriverSetup() is similar to usbFunctionSetup(), but it's used for
 * standard requests instead of class and custom requests.
 */
static inline usbMsgLen_t usbDriverSetup(usbRequest_t *rq)
{
usbMsgLen_t len = 0;
    3da4:	91 e0       	ldi	r25, 0x01	; 1
    3da6:	21 e0       	ldi	r18, 0x01	; 1
        USB_SET_ADDRESS_HOOK();
    SWITCH_CASE(USBRQ_GET_DESCRIPTOR)       /* 6 */
        len = usbDriverDescriptor(rq);
        goto skipMsgPtrAssignment;
    SWITCH_CASE(USBRQ_GET_CONFIGURATION)    /* 8 */
        dataPtr = &usbConfiguration;  /* send current configuration value */
    3da8:	90 93 21 01 	sts	0x0121, r25
        len = 1;
    SWITCH_CASE(USBRQ_SET_CONFIGURATION)    /* 9 */
        usbConfiguration = value;
        usbResetStall();
    SWITCH_CASE(USBRQ_GET_INTERFACE)        /* 10 */
        len = 1;
    3dac:	80 93 20 01 	sts	0x0120, r24
        usbResetStall();
#endif
    SWITCH_DEFAULT                          /* 7=SET_DESCRIPTOR, 12=SYNC_FRAME */
        /* Should we add an optional hook here? */
    SWITCH_END
    usbMsgPtr = (usbMsgPtr_t)dataPtr;
    3db0:	2f 3f       	cpi	r18, 0xFF	; 255
    3db2:	39 f4       	brne	.+14     	; 0x3dc2 <main+0x1d2>
    3db4:	88 81       	ld	r24, Y
            replyLen = usbFunctionSetup(data);
        }else{
            replyLen = usbDriverSetup(rq);
        }
#if USB_CFG_IMPLEMENT_FN_READ || USB_CFG_IMPLEMENT_FN_WRITE
        if(replyLen == USB_NO_MSG){         /* use user-supplied read/write function */
    3db6:	87 fd       	sbrc	r24, 7
    3db8:	2e 81       	ldd	r18, Y+6	; 0x06
            /* do some conditioning on replyLen, but on IN transfers only */
            if((rq->bmRequestType & USBRQ_DIR_MASK) != USBRQ_DIR_HOST_TO_DEVICE){
    3dba:	80 e8       	ldi	r24, 0x80	; 128
    3dbc:	80 93 06 01 	sts	0x0106, r24
                    replyLen = rq->wLength.bytes[0];
                }else{
                    replyLen = rq->wLength.word;
                }
            }
            usbMsgFlags = USB_FLG_USE_USER_RW;
    3dc0:	07 c0       	rjmp	.+14     	; 0x3dd0 <main+0x1e0>
    3dc2:	8f 81       	ldd	r24, Y+7	; 0x07
    3dc4:	81 11       	cpse	r24, r1
    3dc6:	04 c0       	rjmp	.+8      	; 0x3dd0 <main+0x1e0>
        }else   /* The 'else' prevents that we limit a replyLen of USB_NO_MSG to the maximum transfer len. */
#endif
        if(sizeof(replyLen) < sizeof(rq->wLength.word)){ /* help compiler with optimizing */
            if(!rq->wLength.bytes[1] && replyLen > rq->wLength.bytes[0])    /* limit length to max */
    3dc8:	8e 81       	ldd	r24, Y+6	; 0x06
    3dca:	82 17       	cp	r24, r18
    3dcc:	08 f4       	brcc	.+2      	; 0x3dd0 <main+0x1e0>
    3dce:	28 2f       	mov	r18, r24
    3dd0:	20 93 01 01 	sts	0x0101, r18
    3dd4:	65 c0       	rjmp	.+202    	; 0x3ea0 <usbFunctionWrite_finished+0xe>
                replyLen = rq->wLength.bytes[0];
        }else{
            if(replyLen > rq->wLength.word)     /* limit length to max */
                replyLen = rq->wLength.word;
        }
        usbMsgLen = replyLen;
    3dd6:	80 91 06 01 	lds	r24, 0x0106
    3dda:	87 ff       	sbrs	r24, 7
    }else{  /* usbRxToken must be USBPID_OUT, which means data phase of setup (control-out) */
#if USB_CFG_IMPLEMENT_FN_WRITE
        if(usbMsgFlags & USB_FLG_USE_USER_RW){
    3ddc:	61 c0       	rjmp	.+194    	; 0x3ea0 <usbFunctionWrite_finished+0xe>
    3dde:	80 91 0d 01 	lds	r24, 0x010D
    3de2:	80 17       	cp	r24, r16
uchar usbFunctionWrite(uchar *data, uchar len)
{
uchar   isLast;

    DBG1(0x31, (void *)&currentAddress.l, 4);
    if(len > bytesRemaining)
    3de4:	08 f4       	brcc	.+2      	; 0x3de8 <main+0x1f8>
    3de6:	08 2f       	mov	r16, r24
    3de8:	80 1b       	sub	r24, r16
    3dea:	80 93 0d 01 	sts	0x010D, r24
        len = bytesRemaining;
    bytesRemaining -= len;
    3dee:	dd 24       	eor	r13, r13
    3df0:	d3 94       	inc	r13
    3df2:	81 11       	cpse	r24, r1
    isLast = bytesRemaining == 0;
    3df4:	d1 2c       	mov	r13, r1
    3df6:	80 91 0f 01 	lds	r24, 0x010F
    3dfa:	87 30       	cpi	r24, 0x07	; 7
    if(currentRequest >= USBASP_FUNC_READEEPROM){
    3dfc:	b0 f0       	brcs	.+44     	; 0x3e2a <main+0x23a>
    3dfe:	7e 01       	movw	r14, r28
    3e00:	0f c0       	rjmp	.+30     	; 0x3e20 <main+0x230>
    3e02:	d7 01       	movw	r26, r14
    3e04:	6d 91       	ld	r22, X+
    3e06:	7d 01       	movw	r14, r26
        uchar i;
        for(i = 0; i < len; i++){
            eeprom_write_byte((void *)(currentAddress.w[0]++), *data++);
    3e08:	80 91 0b 01 	lds	r24, 0x010B
    3e0c:	90 91 0c 01 	lds	r25, 0x010C
    3e10:	9c 01       	movw	r18, r24
    3e12:	2f 5f       	subi	r18, 0xFF	; 255
    3e14:	3f 4f       	sbci	r19, 0xFF	; 255
    3e16:	30 93 0c 01 	sts	0x010C, r19
    3e1a:	20 93 0b 01 	sts	0x010B, r18
    3e1e:	d5 d0       	rcall	.+426    	; 0x3fca <__eewr_byte_m168>
    3e20:	8e 2d       	mov	r24, r14
    3e22:	8c 1b       	sub	r24, r28
    3e24:	80 17       	cp	r24, r16
    3e26:	68 f3       	brcs	.-38     	; 0x3e02 <main+0x212>
        len = bytesRemaining;
    bytesRemaining -= len;
    isLast = bytesRemaining == 0;
    if(currentRequest >= USBASP_FUNC_READEEPROM){
        uchar i;
        for(i = 0; i < len; i++){
    3e28:	38 c0       	rjmp	.+112    	; 0x3e9a <usbFunctionWrite_finished+0x8>
    3e2a:	80 91 0e 01 	lds	r24, 0x010E
    3e2e:	e0 91 0b 01 	lds	r30, 0x010B
            eeprom_write_byte((void *)(currentAddress.w[0]++), *data++);
        }
    }else{
	asm  volatile  (
    3e32:	f0 91 0c 01 	lds	r31, 0x010C
    3e36:	de 01       	movw	r26, r28
    3e38:	00 fd       	sbrc	r16, 0
    3e3a:	03 95       	inc	r16

00003e3c <usbFunctionWrite_flashloop>:
    3e3c:	02 50       	subi	r16, 0x02	; 2
    3e3e:	48 f1       	brcs	.+82     	; 0x3e92 <usbFunctionWrite_finished>
    3e40:	f8 33       	cpi	r31, 0x38	; 56
    3e42:	38 f5       	brcc	.+78     	; 0x3e92 <usbFunctionWrite_finished>
    3e44:	22 d0       	rcall	.+68     	; 0x3e8a <usbFunctionWrite_waitA>
    3e46:	f8 94       	cli
    3e48:	0d 90       	ld	r0, X+
    3e4a:	1d 90       	ld	r1, X+
    3e4c:	21 e0       	ldi	r18, 0x01	; 1
    3e4e:	17 d0       	rcall	.+46     	; 0x3e7e <usbFunctionWrite_saveflash>
    3e50:	2e 2f       	mov	r18, r30
    3e52:	2e 5f       	subi	r18, 0xFE	; 254
    3e54:	2f 77       	andi	r18, 0x7F	; 127
    3e56:	31 f0       	breq	.+12     	; 0x3e64 <usbFunctionWrite_pageisfull>
    3e58:	dd 20       	and	r13, r13
    3e5a:	79 f0       	breq	.+30     	; 0x3e7a <usbFunctionWrite_skippageisfull>
    3e5c:	88 23       	and	r24, r24
    3e5e:	69 f0       	breq	.+26     	; 0x3e7a <usbFunctionWrite_skippageisfull>
    3e60:	00 30       	cpi	r16, 0x00	; 0
    3e62:	59 f4       	brne	.+22     	; 0x3e7a <usbFunctionWrite_skippageisfull>

00003e64 <usbFunctionWrite_pageisfull>:
    3e64:	23 e0       	ldi	r18, 0x03	; 3
    3e66:	0b d0       	rcall	.+22     	; 0x3e7e <usbFunctionWrite_saveflash>
    3e68:	10 d0       	rcall	.+32     	; 0x3e8a <usbFunctionWrite_waitA>
    3e6a:	25 e0       	ldi	r18, 0x05	; 5
    3e6c:	08 d0       	rcall	.+16     	; 0x3e7e <usbFunctionWrite_saveflash>
    3e6e:	0d d0       	rcall	.+26     	; 0x3e8a <usbFunctionWrite_waitA>
    3e70:	07 b6       	in	r0, 0x37	; 55
    3e72:	06 fe       	sbrs	r0, 6
    3e74:	02 c0       	rjmp	.+4      	; 0x3e7a <usbFunctionWrite_skippageisfull>
    3e76:	21 e1       	ldi	r18, 0x11	; 17
    3e78:	02 d0       	rcall	.+4      	; 0x3e7e <usbFunctionWrite_saveflash>

00003e7a <usbFunctionWrite_skippageisfull>:
    3e7a:	32 96       	adiw	r30, 0x02	; 2
    3e7c:	df cf       	rjmp	.-66     	; 0x3e3c <usbFunctionWrite_flashloop>

00003e7e <usbFunctionWrite_saveflash>:
    3e7e:	f8 94       	cli
    3e80:	27 bf       	out	0x37, r18	; 55
    3e82:	e8 95       	spm
    3e84:	11 24       	eor	r1, r1
    3e86:	78 94       	sei
    3e88:	08 95       	ret

00003e8a <usbFunctionWrite_waitA>:
    3e8a:	07 b6       	in	r0, 0x37	; 55
    3e8c:	00 fc       	sbrc	r0, 0
    3e8e:	fd cf       	rjmp	.-6      	; 0x3e8a <usbFunctionWrite_waitA>
    3e90:	08 95       	ret

00003e92 <usbFunctionWrite_finished>:
    3e92:	f0 93 0c 01 	sts	0x010C, r31
    3e96:	e0 93 0b 01 	sts	0x010B, r30
    3e9a:	d1 10       	cpse	r13, r1
    3e9c:	10 92 01 01 	sts	0x0101, r1
    3ea0:	10 92 22 01 	sts	0x0122, r1
            uchar rval = usbFunctionWrite(data, len);
            if(rval == 0xff){   /* an error occurred */
                usbTxLen = USBPID_STALL;
            }else if(rval != 0){    /* This was the final package */
                usbMsgLen = 0;  /* answer with a zero-sized data packet */
    3ea4:	80 91 00 01 	lds	r24, 0x0100
        usbProcessRx(usbRxBuf + USB_BUFSIZE + 1 - usbInputBufOffset, len);
#if USB_CFG_HAVE_FLOWCONTROL
        if(usbRxLen > 0)    /* only mark as available if not inactivated */
            usbRxLen = 0;
#else
        usbRxLen = 0;       /* mark rx buffer as available */
    3ea8:	84 ff       	sbrs	r24, 4
    3eaa:	71 c0       	rjmp	.+226    	; 0x3f8e <usbFunctionWrite_finished+0xfc>
#endif
    }
    if(usbTxLen & 0x10){    /* transmit system idle */
    3eac:	80 91 01 01 	lds	r24, 0x0101
    3eb0:	8f 3f       	cpi	r24, 0xFF	; 255
    3eb2:	09 f4       	brne	.+2      	; 0x3eb6 <usbFunctionWrite_finished+0x24>
        if(usbMsgLen != USB_NO_MSG){    /* transmit data pending? */
    3eb4:	6c c0       	rjmp	.+216    	; 0x3f8e <usbFunctionWrite_finished+0xfc>
    3eb6:	08 2f       	mov	r16, r24
    3eb8:	89 30       	cpi	r24, 0x09	; 9
    3eba:	08 f0       	brcs	.+2      	; 0x3ebe <usbFunctionWrite_finished+0x2c>
    3ebc:	08 e0       	ldi	r16, 0x08	; 8
    3ebe:	80 1b       	sub	r24, r16
    3ec0:	80 93 01 01 	sts	0x0101, r24
    3ec4:	80 91 12 01 	lds	r24, 0x0112
uchar       len;

    wantLen = usbMsgLen;
    if(wantLen > 8)
        wantLen = 8;
    usbMsgLen -= wantLen;
    3ec8:	98 e8       	ldi	r25, 0x88	; 136
    3eca:	89 27       	eor	r24, r25
    usbTxBuf[0] ^= USBPID_DATA0 ^ USBPID_DATA1; /* DATA toggling */
    3ecc:	80 93 12 01 	sts	0x0112, r24
    3ed0:	00 23       	and	r16, r16
    3ed2:	09 f4       	brne	.+2      	; 0x3ed6 <usbFunctionWrite_finished+0x44>
    3ed4:	4b c0       	rjmp	.+150    	; 0x3f6c <usbFunctionWrite_finished+0xda>
    3ed6:	80 91 06 01 	lds	r24, 0x0106
/* This function is similar to usbFunctionRead(), but it's also called for
 * data handled automatically by the driver (e.g. descriptor reads).
 */
static uchar usbDeviceRead(uchar *data, uchar len)
{
    if(len > 0){    /* don't bother app with 0 sized reads */
    3eda:	87 ff       	sbrs	r24, 7
    3edc:	29 c0       	rjmp	.+82     	; 0x3f30 <usbFunctionWrite_finished+0x9e>
#if USB_CFG_IMPLEMENT_FN_READ
        if(usbMsgFlags & USB_FLG_USE_USER_RW){
    3ede:	80 91 0d 01 	lds	r24, 0x010D
    3ee2:	80 17       	cp	r24, r16
    3ee4:	08 f4       	brcc	.+2      	; 0x3ee8 <usbFunctionWrite_finished+0x56>

uchar usbFunctionRead(uchar *data, uchar len)
{
uchar   i;

    if(len > bytesRemaining)
    3ee6:	08 2f       	mov	r16, r24
    3ee8:	80 1b       	sub	r24, r16
    3eea:	80 93 0d 01 	sts	0x010D, r24
    3eee:	d0 90 0f 01 	lds	r13, 0x010F
        len = bytesRemaining;
    bytesRemaining -= len;
    3ef2:	c3 e1       	ldi	r28, 0x13	; 19
    3ef4:	d1 e0       	ldi	r29, 0x01	; 1
    for(i = 0; i < len; i++){
        if(currentRequest >= USBASP_FUNC_READEEPROM){
    3ef6:	15 c0       	rjmp	.+42     	; 0x3f22 <usbFunctionWrite_finished+0x90>
    3ef8:	e0 90 0b 01 	lds	r14, 0x010B
    3efc:	f0 90 0c 01 	lds	r15, 0x010C
    3f00:	b6 e0       	ldi	r27, 0x06	; 6
    3f02:	bd 15       	cp	r27, r13
    3f04:	18 f4       	brcc	.+6      	; 0x3f0c <usbFunctionWrite_finished+0x7a>
    3f06:	c7 01       	movw	r24, r14
    3f08:	58 d0       	rcall	.+176    	; 0x3fba <__eerd_byte_m168>
    3f0a:	02 c0       	rjmp	.+4      	; 0x3f10 <usbFunctionWrite_finished+0x7e>
    3f0c:	f7 01       	movw	r30, r14
            *data = eeprom_read_byte((void *)currentAddress.w[0]);
    3f0e:	84 91       	lpm	r24, Z
    3f10:	88 83       	st	Y, r24
    3f12:	21 96       	adiw	r28, 0x01	; 1
    3f14:	ff ef       	ldi	r31, 0xFF	; 255
        }else{
#if ((FLASHEND) > 65535)
            *data = pgm_read_byte_far(CURRENT_ADDRESS);
#else
            *data = pgm_read_byte(CURRENT_ADDRESS);
    3f16:	ef 1a       	sub	r14, r31
    3f18:	ff 0a       	sbc	r15, r31
    3f1a:	f0 92 0c 01 	sts	0x010C, r15
#endif
        }
        data++;
        CURRENT_ADDRESS++;
    3f1e:	e0 92 0b 01 	sts	0x010B, r14
    3f22:	83 e1       	ldi	r24, 0x13	; 19
    3f24:	91 e0       	ldi	r25, 0x01	; 1
    3f26:	2c 2f       	mov	r18, r28
    3f28:	28 1b       	sub	r18, r24
    3f2a:	20 17       	cp	r18, r16
uchar   i;

    if(len > bytesRemaining)
        len = bytesRemaining;
    bytesRemaining -= len;
    for(i = 0; i < len; i++){
    3f2c:	28 f3       	brcs	.-54     	; 0x3ef8 <usbFunctionWrite_finished+0x66>
    3f2e:	1c c0       	rjmp	.+56     	; 0x3f68 <usbFunctionWrite_finished+0xd6>
    3f30:	e0 91 20 01 	lds	r30, 0x0120
    3f34:	f0 91 21 01 	lds	r31, 0x0121
    3f38:	a3 e1       	ldi	r26, 0x13	; 19
            len = usbFunctionRead(data, len);
        }else
#endif
        {
            uchar i = len;
            usbMsgPtr_t r = usbMsgPtr;
    3f3a:	b1 e0       	ldi	r27, 0x01	; 1
    3f3c:	86 ff       	sbrs	r24, 6
    3f3e:	09 c0       	rjmp	.+18     	; 0x3f52 <usbFunctionWrite_finished+0xc0>
    3f40:	84 91       	lpm	r24, Z
            if(usbMsgFlags & USB_FLG_MSGPTR_IS_ROM){    /* ROM data */
    3f42:	8d 93       	st	X+, r24
    3f44:	31 96       	adiw	r30, 0x01	; 1
    3f46:	83 e1       	ldi	r24, 0x13	; 19
    3f48:	91 e0       	ldi	r25, 0x01	; 1
                do{
                    uchar c = USB_READ_FLASH(r);    /* assign to char size variable to enforce byte ops */
    3f4a:	80 0f       	add	r24, r16
                    *data++ = c;
    3f4c:	8a 13       	cpse	r24, r26
                    r++;
    3f4e:	f8 cf       	rjmp	.-16     	; 0x3f40 <usbFunctionWrite_finished+0xae>
#endif
    usbDeviceConnect();
    sei();
}

int __attribute__((__noreturn__)) main(void)
    3f50:	07 c0       	rjmp	.+14     	; 0x3f60 <usbFunctionWrite_finished+0xce>
    3f52:	81 91       	ld	r24, Z+
    3f54:	8d 93       	st	X+, r24
                }while(--i);
    3f56:	83 e1       	ldi	r24, 0x13	; 19
    3f58:	91 e0       	ldi	r25, 0x01	; 1
    3f5a:	80 0f       	add	r24, r16
            }else{  /* RAM data */
                do{
                    *data++ = *((uchar *)r);
    3f5c:	8a 13       	cpse	r24, r26
    3f5e:	f9 cf       	rjmp	.-14     	; 0x3f52 <usbFunctionWrite_finished+0xc0>
    3f60:	f0 93 21 01 	sts	0x0121, r31
    3f64:	e0 93 20 01 	sts	0x0120, r30
                    r++;
                }while(--i);
    3f68:	09 30       	cpi	r16, 0x09	; 9
            }
            usbMsgPtr = r;
    3f6a:	58 f4       	brcc	.+22     	; 0x3f82 <usbFunctionWrite_finished+0xf0>
    3f6c:	60 2f       	mov	r22, r16
    3f6e:	83 e1       	ldi	r24, 0x13	; 19
    3f70:	91 e0       	ldi	r25, 0x01	; 1
    if(wantLen > 8)
        wantLen = 8;
    usbMsgLen -= wantLen;
    usbTxBuf[0] ^= USBPID_DATA0 ^ USBPID_DATA1; /* DATA toggling */
    len = usbDeviceRead(usbTxBuf + 1, wantLen);
    if(len <= 8){           /* valid data packet */
    3f72:	ef dc       	rcall	.-1570   	; 0x3952 <usbCrc16Append>
    3f74:	0c 5f       	subi	r16, 0xFC	; 252
        usbCrc16Append(&usbTxBuf[1], len);
    3f76:	0c 30       	cpi	r16, 0x0C	; 12
    3f78:	41 f0       	breq	.+16     	; 0x3f8a <usbFunctionWrite_finished+0xf8>
    3f7a:	8f ef       	ldi	r24, 0xFF	; 255
    3f7c:	80 93 01 01 	sts	0x0101, r24
        len += 4;           /* length including sync byte */
    3f80:	04 c0       	rjmp	.+8      	; 0x3f8a <usbFunctionWrite_finished+0xf8>
        if(len < 12)        /* a partial package identifies end of message */
    3f82:	8f ef       	ldi	r24, 0xFF	; 255
    3f84:	80 93 01 01 	sts	0x0101, r24
            usbMsgLen = USB_NO_MSG;
    3f88:	0e e1       	ldi	r16, 0x1E	; 30
    3f8a:	00 93 00 01 	sts	0x0100, r16
    }else{
        len = USBPID_STALL;   /* stall the endpoint */
        usbMsgLen = USB_NO_MSG;
    3f8e:	84 e1       	ldi	r24, 0x14	; 20
    3f90:	99 b1       	in	r25, 0x09	; 9
    3f92:	94 71       	andi	r25, 0x14	; 20
        usbCrc16Append(&usbTxBuf[1], len);
        len += 4;           /* length including sync byte */
        if(len < 12)        /* a partial package identifies end of message */
            usbMsgLen = USB_NO_MSG;
    }else{
        len = USBPID_STALL;   /* stall the endpoint */
    3f94:	31 f4       	brne	.+12     	; 0x3fa2 <usbFunctionWrite_finished+0x110>
        usbMsgLen = USB_NO_MSG;
    }
    usbTxLen = len;
    3f96:	81 50       	subi	r24, 0x01	; 1
    3f98:	d9 f7       	brne	.-10     	; 0x3f90 <usbFunctionWrite_finished+0xfe>
        usbCrc16Append(&usbTxBuf[1], len);
        len += 4;           /* length including sync byte */
        if(len < 12)        /* a partial package identifies end of message */
            usbMsgLen = USB_NO_MSG;
    }else{
        len = USBPID_STALL;   /* stall the endpoint */
    3f9a:	10 92 23 01 	sts	0x0123, r1
        if(usbMsgLen != USB_NO_MSG){    /* transmit data pending? */
            usbBuildTxBlock();
        }
    }
    for(i = 20; i > 0; i--){
        uchar usbLineStatus = USBIN & USBMASK;
    3f9e:	10 92 1d 01 	sts	0x011D, r1
        if(usbLineStatus != 0)  /* SE0 has ended */
    3fa2:	10 31       	cpi	r17, 0x10	; 16
    if(usbTxLen & 0x10){    /* transmit system idle */
        if(usbMsgLen != USB_NO_MSG){    /* transmit data pending? */
            usbBuildTxBlock();
        }
    }
    for(i = 20; i > 0; i--){
    3fa4:	18 f0       	brcs	.+6      	; 0x3fac <main_stayinloader_smaller>
        uchar usbLineStatus = USBIN & USBMASK;
        if(usbLineStatus != 0)  /* SE0 has ended */
            goto isNotReset;
    }
    /* RESET condition, called multiple times during reset */
    usbNewDeviceAddr = 0;
    3fa6:	4b 99       	sbic	0x09, 3	; 9
    3fa8:	10 51       	subi	r17, 0x10	; 16
    usbDeviceAddr = 0;
    3faa:	04 c0       	rjmp	.+8      	; 0x3fb4 <main_stayinloader_finished>

00003fac <main_stayinloader_smaller>:
    3fac:	12 30       	cpi	r17, 0x02	; 2
#else
  stayinloader &= 0x0f;
#endif
#else
#if USE_EXCESSIVE_ASSEMBLER
asm  volatile  (
    3fae:	10 f0       	brcs	.+4      	; 0x3fb4 <main_stayinloader_finished>
    3fb0:	4b 9b       	sbis	0x09, 3	; 9
    3fb2:	12 50       	subi	r17, 0x02	; 2

00003fb4 <main_stayinloader_finished>:
    3fb4:	11 11       	cpse	r17, r1
    3fb6:	4a ce       	rjmp	.-876    	; 0x3c4c <main+0x5c>
    3fb8:	2e ce       	rjmp	.-932    	; 0x3c16 <main+0x26>

00003fba <__eerd_byte_m168>:
    3fba:	f9 99       	sbic	0x1f, 1	; 31
    3fbc:	fe cf       	rjmp	.-4      	; 0x3fba <__eerd_byte_m168>
    3fbe:	92 bd       	out	0x22, r25	; 34
#endif
#endif
#endif

#if BOOTLOADER_CAN_EXIT
        }while (stayinloader);	/* main event loop, if BOOTLOADER_CAN_EXIT*/
    3fc0:	81 bd       	out	0x21, r24	; 33
    3fc2:	f8 9a       	sbi	0x1f, 0	; 31
    3fc4:	99 27       	eor	r25, r25
    3fc6:	80 b5       	in	r24, 0x20	; 32
    3fc8:	08 95       	ret

00003fca <__eewr_byte_m168>:
    3fca:	26 2f       	mov	r18, r22

00003fcc <__eewr_r18_m168>:
    3fcc:	f9 99       	sbic	0x1f, 1	; 31
    3fce:	fe cf       	rjmp	.-4      	; 0x3fcc <__eewr_r18_m168>
    3fd0:	1f ba       	out	0x1f, r1	; 31
    3fd2:	92 bd       	out	0x22, r25	; 34
    3fd4:	81 bd       	out	0x21, r24	; 33
    3fd6:	20 bd       	out	0x20, r18	; 32
    3fd8:	0f b6       	in	r0, 0x3f	; 63
    3fda:	f8 94       	cli
    3fdc:	fa 9a       	sbi	0x1f, 2	; 31
    3fde:	f9 9a       	sbi	0x1f, 1	; 31
    3fe0:	0f be       	out	0x3f, r0	; 63
    3fe2:	01 96       	adiw	r24, 0x01	; 1
    3fe4:	08 95       	ret

00003fe6 <_exit>:
    3fe6:	f8 94       	cli

00003fe8 <__stop_program>:
    3fe8:	ff cf       	rjmp	.-2      	; 0x3fe8 <__stop_program>
