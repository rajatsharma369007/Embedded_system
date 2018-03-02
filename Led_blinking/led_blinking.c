// for leds are connected at p2.0, p2.1, p2.2, p2.3 output pins

void main()
{
          p2=0x00;			//intializing P2 port with all zeros
          
          while(1)
          {
                  p2=0b00001000;		//p2.3 port will be active
                  delay_ms(500);
                  p2=0b00000100;		//p2.2 port will be active
                  delay_ms(500);
                  p2=0b00000010;		//p2.1 port will be active
                  delay_ms(500);
                  p2=0b00000001;		//p2.0 port will be active
                  delay_ms(500);
          }
}
