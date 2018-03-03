
_main:
	MOV SP+0, #128
;segment.c,1 :: 		void main()
;segment.c,4 :: 		int a[]={192,249,164,176,153,146,130,248,128,152};
	MOV 130, #?ICSmain_a_L0+0
	MOV 131, hi(#?ICSmain_a_L0+0)
	MOV R0, #main_a_L0+0
	MOV R1, #20
	LCALL ___CC2D+0
;segment.c,6 :: 		p2=0x00;
	MOV P2+0, #0
;segment.c,7 :: 		i=0;
	MOV main_i_L0+0, #0
	MOV main_i_L0+1, #0
;segment.c,8 :: 		while(1)
L_main0:
;segment.c,10 :: 		p2=a[i];
	MOV R2, #1
	MOV R1, main_i_L0+1
	MOV A, main_i_L0+0
	INC R2
	SJMP L__main3
L__main4:
	CLR C
	RLC A
	XCH A, R1
	RLC A
	XCH A, R1
L__main3:
	DJNZ R2, L__main4
	MOV R0, A
	MOV A, #main_a_L0+0
	ADD A, R0
	MOV R0, A
	MOV P2+0, @R0
;segment.c,11 :: 		delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;segment.c,12 :: 		if(i==9)
	MOV A, #9
	XRL A, main_i_L0+0
	JNZ L__main5
	MOV A, #0
	XRL A, main_i_L0+1
L__main5:
	JNZ L_main2
;segment.c,14 :: 		i=0;
	MOV main_i_L0+0, #0
	MOV main_i_L0+1, #0
;segment.c,15 :: 		continue;
	SJMP L_main0
;segment.c,16 :: 		}
L_main2:
;segment.c,17 :: 		i++;
	MOV A, #1
	ADD A, main_i_L0+0
	MOV main_i_L0+0, A
	MOV A, #0
	ADDC A, main_i_L0+1
	MOV main_i_L0+1, A
;segment.c,18 :: 		}
	SJMP L_main0
;segment.c,19 :: 		}
	SJMP #254
; end of _main
