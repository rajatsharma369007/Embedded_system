#line 1 "F:/ES group 3/ass1/led_blinking.c"
void main()
{
 unsigned char i;
 p2=0x00;

 while(1)
 {
 p2=0b00001000;
 delay_ms(500);
 p2=0b00000100;
 delay_ms(500);
 p2=0b00000010;
 delay_ms(500);
 p2=0b00000001;
 delay_ms(500);
 }
}
