
_main:
	MOV SP+0, #128
;push_button.c,1 :: 		void main()
;push_button.c,3 :: 		p1=0xFF;
	MOV P1+0, #255
;push_button.c,5 :: 		while(1)
L_main0:
;push_button.c,7 :: 		p2=p1;
	MOV P2+0, ___DoIFC+0
;push_button.c,8 :: 		delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;push_button.c,9 :: 		}
	SJMP L_main0
;push_button.c,11 :: 		}
	SJMP #254
; end of _main
