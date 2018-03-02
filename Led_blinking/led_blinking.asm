
_main:
	MOV SP+0, #128
;led_blinking.c,1 :: 		void main()
;led_blinking.c,4 :: 		p2=0x00;
	MOV P2+0, #0
;led_blinking.c,6 :: 		while(1)
L_main0:
;led_blinking.c,8 :: 		p2=0b00001000;
	MOV P2+0, #8
;led_blinking.c,9 :: 		delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;led_blinking.c,10 :: 		p2=0b00000100;
	MOV P2+0, #4
;led_blinking.c,11 :: 		delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;led_blinking.c,12 :: 		p2=0b00000010;
	MOV P2+0, #2
;led_blinking.c,13 :: 		delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;led_blinking.c,14 :: 		p2=0b00000001;
	MOV P2+0, #1
;led_blinking.c,15 :: 		delay_ms(500);
	MOV R5, 4
	MOV R6, 129
	MOV R7, 121
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
	NOP
;led_blinking.c,16 :: 		}
	SJMP L_main0
;led_blinking.c,17 :: 		}
	SJMP #254
; end of _main
