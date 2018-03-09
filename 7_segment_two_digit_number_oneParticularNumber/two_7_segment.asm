
_main:
	MOV SP+0, #128
;two_7_segment.c,1 :: 		void main()
;two_7_segment.c,6 :: 		int n[]={0,0};
	MOV main_n_L0+0, #0
	MOV main_n_L0+1, #0
	MOV main_n_L0+2, #0
	MOV main_n_L0+3, #0
;two_7_segment.c,7 :: 		p0=0x00;
	MOV P0+0, #0
;two_7_segment.c,8 :: 		p2=0x00;
	MOV P2+0, #0
;two_7_segment.c,10 :: 		while(1)
L_main0:
;two_7_segment.c,12 :: 		if(n[1]==9&&n[0]!=9)
	MOV A, #9
	XRL A, main_n_L0+2
	JNZ L__main34
	MOV A, #0
	XRL A, main_n_L0+3
L__main34:
	JNZ L_main4
	MOV A, #9
	XRL A, main_n_L0+0
	JNZ L__main35
	MOV A, #0
	XRL A, main_n_L0+1
L__main35:
	JZ L_main4
L__main33:
;two_7_segment.c,13 :: 		{           n[1]=0;
	MOV main_n_L0+2, #0
	MOV main_n_L0+3, #0
;two_7_segment.c,14 :: 		n[0]+=1;
	MOV A, #1
	ADD A, main_n_L0+0
	MOV main_n_L0+0, A
	MOV A, #0
	ADDC A, main_n_L0+1
	MOV main_n_L0+1, A
;two_7_segment.c,15 :: 		}
	SJMP L_main5
L_main4:
;two_7_segment.c,16 :: 		else if(n[0]==9 && n[1]==9)
	MOV A, #9
	XRL A, main_n_L0+0
	JNZ L__main36
	MOV A, #0
	XRL A, main_n_L0+1
L__main36:
	JNZ L_main8
	MOV A, #9
	XRL A, main_n_L0+2
	JNZ L__main37
	MOV A, #0
	XRL A, main_n_L0+3
L__main37:
	JNZ L_main8
L__main32:
;two_7_segment.c,17 :: 		{n[1]=0;
	MOV main_n_L0+2, #0
	MOV main_n_L0+3, #0
;two_7_segment.c,18 :: 		n[0]=0;}
	MOV main_n_L0+0, #0
	MOV main_n_L0+1, #0
	SJMP L_main9
L_main8:
;two_7_segment.c,21 :: 		n[1]+=1;
	MOV A, #1
	ADD A, main_n_L0+2
	MOV main_n_L0+2, A
	MOV A, #0
	ADDC A, main_n_L0+3
	MOV main_n_L0+3, A
;two_7_segment.c,22 :: 		}
L_main9:
L_main5:
;two_7_segment.c,23 :: 		for(k=0;k<50; k++)
	MOV main_k_L0+0, #0
	MOV main_k_L0+1, #0
L_main10:
	CLR C
	MOV A, main_k_L0+0
	SUBB A, #50
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, main_k_L0+1
	XRL A, #128
	SUBB A, R0
	JC #3
	LJMP L_main11
;two_7_segment.c,25 :: 		for(j=0;j<=1;j++)
	MOV main_j_L0+0, #0
	MOV main_j_L0+1, #0
L_main13:
	SETB C
	MOV A, main_j_L0+0
	SUBB A, #1
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, main_j_L0+1
	XRL A, #128
	SUBB A, R0
	JC #3
	LJMP L_main14
;two_7_segment.c,27 :: 		switch(j)
	SJMP L_main16
;two_7_segment.c,29 :: 		case 0:p0=1; break;
L_main18:
	MOV P0+0, #1
	SJMP L_main17
;two_7_segment.c,30 :: 		case 1:p0=2; break;
L_main19:
	MOV P0+0, #2
	SJMP L_main17
;two_7_segment.c,31 :: 		}
L_main16:
	MOV A, main_j_L0+0
	ORL A, main_j_L0+1
	JZ L_main18
	MOV A, #1
	XRL A, main_j_L0+0
	JNZ L__main38
	MOV A, #0
	XRL A, main_j_L0+1
L__main38:
	JZ L_main19
L_main17:
;two_7_segment.c,33 :: 		i = n[j];
	MOV R2, #1
	MOV R1, main_j_L0+1
	MOV A, main_j_L0+0
	INC R2
	SJMP L__main39
L__main40:
	CLR C
	RLC A
	XCH A, R1
	RLC A
	XCH A, R1
L__main39:
	DJNZ R2, L__main40
	MOV R0, A
	MOV A, #main_n_L0+0
	ADD A, R0
	MOV R0, A
	MOV main_i_L0+0, @R0
	INC R0
	MOV main_i_L0+1, @R0
;two_7_segment.c,34 :: 		switch(i)
	LJMP L_main20
;two_7_segment.c,36 :: 		case 0:p2=192; delay_ms(1); break;
L_main22:
	MOV P2+0, #192
	MOV R6, 2
	MOV R7, 202
	DJNZ R7, 
	DJNZ R6, 
	LJMP L_main21
;two_7_segment.c,37 :: 		case 1:p2=249; delay_ms(1); break;
L_main23:
	MOV P2+0, #249
	MOV R6, 2
	MOV R7, 202
	DJNZ R7, 
	DJNZ R6, 
	LJMP L_main21
;two_7_segment.c,38 :: 		case 2:p2=164; delay_ms(1); break;
L_main24:
	MOV P2+0, #164
	MOV R6, 2
	MOV R7, 202
	DJNZ R7, 
	DJNZ R6, 
	LJMP L_main21
;two_7_segment.c,39 :: 		case 3:p2=176; delay_ms(1); break;
L_main25:
	MOV P2+0, #176
	MOV R6, 2
	MOV R7, 202
	DJNZ R7, 
	DJNZ R6, 
	LJMP L_main21
;two_7_segment.c,40 :: 		case 4:p2=153; delay_ms(1); break;
L_main26:
	MOV P2+0, #153
	MOV R6, 2
	MOV R7, 202
	DJNZ R7, 
	DJNZ R6, 
	LJMP L_main21
;two_7_segment.c,41 :: 		case 5:p2=146; delay_ms(1); break;
L_main27:
	MOV P2+0, #146
	MOV R6, 2
	MOV R7, 202
	DJNZ R7, 
	DJNZ R6, 
	LJMP L_main21
;two_7_segment.c,42 :: 		case 6:p2=130; delay_ms(1); break;
L_main28:
	MOV P2+0, #130
	MOV R6, 2
	MOV R7, 202
	DJNZ R7, 
	DJNZ R6, 
	LJMP L_main21
;two_7_segment.c,43 :: 		case 7:p2=248; delay_ms(1); break;
L_main29:
	MOV P2+0, #248
	MOV R6, 2
	MOV R7, 202
	DJNZ R7, 
	DJNZ R6, 
	LJMP L_main21
;two_7_segment.c,44 :: 		case 8:p2=128; delay_ms(1); break;
L_main30:
	MOV P2+0, #128
	MOV R6, 2
	MOV R7, 202
	DJNZ R7, 
	DJNZ R6, 
	LJMP L_main21
;two_7_segment.c,45 :: 		case 9:p2=152; delay_ms(1); break;
L_main31:
	MOV P2+0, #152
	MOV R6, 2
	MOV R7, 202
	DJNZ R7, 
	DJNZ R6, 
	LJMP L_main21
;two_7_segment.c,46 :: 		}
L_main20:
	MOV A, main_i_L0+0
	ORL A, main_i_L0+1
	JNZ #3
	LJMP L_main22
	MOV A, #1
	XRL A, main_i_L0+0
	JNZ L__main41
	MOV A, #0
	XRL A, main_i_L0+1
L__main41:
	JNZ #3
	LJMP L_main23
	MOV A, #2
	XRL A, main_i_L0+0
	JNZ L__main42
	MOV A, #0
	XRL A, main_i_L0+1
L__main42:
	JNZ #3
	LJMP L_main24
	MOV A, #3
	XRL A, main_i_L0+0
	JNZ L__main43
	MOV A, #0
	XRL A, main_i_L0+1
L__main43:
	JNZ #3
	LJMP L_main25
	MOV A, #4
	XRL A, main_i_L0+0
	JNZ L__main44
	MOV A, #0
	XRL A, main_i_L0+1
L__main44:
	JNZ #3
	LJMP L_main26
	MOV A, #5
	XRL A, main_i_L0+0
	JNZ L__main45
	MOV A, #0
	XRL A, main_i_L0+1
L__main45:
	JNZ #3
	LJMP L_main27
	MOV A, #6
	XRL A, main_i_L0+0
	JNZ L__main46
	MOV A, #0
	XRL A, main_i_L0+1
L__main46:
	JNZ #3
	LJMP L_main28
	MOV A, #7
	XRL A, main_i_L0+0
	JNZ L__main47
	MOV A, #0
	XRL A, main_i_L0+1
L__main47:
	JNZ #3
	LJMP L_main29
	MOV A, #8
	XRL A, main_i_L0+0
	JNZ L__main48
	MOV A, #0
	XRL A, main_i_L0+1
L__main48:
	JNZ #3
	LJMP L_main30
	MOV A, #9
	XRL A, main_i_L0+0
	JNZ L__main49
	MOV A, #0
	XRL A, main_i_L0+1
L__main49:
	JNZ #3
	LJMP L_main31
L_main21:
;two_7_segment.c,25 :: 		for(j=0;j<=1;j++)
	MOV A, #1
	ADD A, main_j_L0+0
	MOV main_j_L0+0, A
	MOV A, #0
	ADDC A, main_j_L0+1
	MOV main_j_L0+1, A
;two_7_segment.c,47 :: 		}
	LJMP L_main13
L_main14:
;two_7_segment.c,23 :: 		for(k=0;k<50; k++)
	MOV A, #1
	ADD A, main_k_L0+0
	MOV main_k_L0+0, A
	MOV A, #0
	ADDC A, main_k_L0+1
	MOV main_k_L0+1, A
;two_7_segment.c,49 :: 		}
	LJMP L_main10
L_main11:
;two_7_segment.c,50 :: 		}
	LJMP L_main0
;two_7_segment.c,51 :: 		}
	SJMP #254
; end of _main
