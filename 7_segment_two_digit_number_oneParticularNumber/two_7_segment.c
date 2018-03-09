// this program is developed to show the interfacing of two 7 segment Leds
// using only one 8bit port of 8051 microcontroller.
// Aim: to show a two digit number on 7 segment.
// Date: 09/03/2018
// Embedded system Laboratory, Tezpur University

void main()
{
     int i;
     int j;
     int k;
     int n[]={5,2};		// the numbers to show on the two 7 segment led
     p0=0x00;			// to initial p0 and p2 as output port
     p2=0x00;
     
     while(1)
     {
			for(j=0;j<=1;j++)		// to switch between the two 7 segment leds
			{						// 0 for unit place and 1 for ten's place 
                     switch(j)
                     {
                          case 0:p0=1; break;	// activate the unit 7 segment
                          case 1:p0=2; break;	// activate the ten's 7 segment
                     }
                   
					 i = n[j];		// to avoid the error, using n[j] directly in switch gives error
                     switch(i)		
                     {
                          case 0:p2=192; delay_ms(5); break;	
                          case 1:p2=249; delay_ms(5); break;
                          case 2:p2=164; delay_ms(5); break;
                          case 3:p2=176; delay_ms(5); break;
                          case 4:p2=153; delay_ms(5); break
						  case 5:p2=146; delay_ms(5); break;
                          case 6:p2=130; delay_ms(5); break;
                          case 7:p2=248; delay_ms(5); break;
                          case 8:p2=128; delay_ms(5); break;
                          case 9:p2=152; delay_ms(5); break;
                     }
			}
		
	}
}