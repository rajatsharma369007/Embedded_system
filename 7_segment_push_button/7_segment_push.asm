
_main:
	MOV SP+0, #128
;7_segment_push.c,1 :: 		void main()
;7_segment_push.c,4 :: 		p1=0xff;
	MOV P1+0, #255
;7_segment_push.c,5 :: 		p2=0x00;
	MOV P2+0, #0
;7_segment_push.c,7 :: 		while(1)
L_main0:
;7_segment_push.c,9 :: 		if(p1==0b11111110)
	MOV A, P1+0
	XRL A, #254
	JNZ L_main2
;7_segment_push.c,10 :: 		{p2=249;}
	MOV P2+0, #249
	SJMP L_main3
L_main2:
;7_segment_push.c,11 :: 		else if(p1==0b11111101)
	MOV A, P1+0
	XRL A, #253
	JNZ L_main4
;7_segment_push.c,12 :: 		{p2=164;}
	MOV P2+0, #164
	SJMP L_main5
L_main4:
;7_segment_push.c,13 :: 		else if(p1==0b11111011)
	MOV A, P1+0
	XRL A, #251
	JNZ L_main6
;7_segment_push.c,14 :: 		{p2=176;}
	MOV P2+0, #176
	SJMP L_main7
L_main6:
;7_segment_push.c,15 :: 		else if(p1==0b11110111)
	MOV A, P1+0
	XRL A, #247
	JNZ L_main8
;7_segment_push.c,16 :: 		{p2=153;}
	MOV P2+0, #153
	SJMP L_main9
L_main8:
;7_segment_push.c,18 :: 		{p2= 192;}
	MOV P2+0, #192
L_main9:
L_main7:
L_main5:
L_main3:
;7_segment_push.c,19 :: 		}
	SJMP L_main0
;7_segment_push.c,20 :: 		}
	SJMP #254
; end of _main
