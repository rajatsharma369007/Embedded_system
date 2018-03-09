// this program is developed to show the interfacing of two 7 segment Leds
// using only one 8bit port of 8051 microcontroller.
// Aim: to show 00 to 99 on 7 segment LED.
// Date: 09/03/2018
// Embedded system Laboratory, Tezpur University

void main()
{
     int i;
     int j;
     int k;
     int n[]={0,0};		// initialize the number with 00
     p0=0x00;			// to set port 0 and 1 as output port
     p2=0x00;

     while(1)
     {
		// when unit digit reaches 9 then increment ten's digit and set unit digit = 0
		// e.g if number reaches 19 then ten's should be 2 and unit should be 0 in next iter
		if(n[1] == 9 && n[0] != 9)
		{	     
			n[1]=0;
            n[0]+=1;
		}
		else if(n[0] == 9 && n[1] == 9)			// to start again from 00 once reach 99
		{
			n[1]=0;
			n[0]=0;
		}
		else
		{
			n[1]+=1;							// to increment unit place in every iter
		}
		
		for(k=0;k<50; k++)
		{
			 // to switch between the two 7 segment leds
			 // 0 for unit place and 1 for ten's place 
             for(j=0;j<=1;j++)
             {
                   switch(j)
                   {
                         case 0:p0=1; break;	// activate the unit 7 segment
                         case 1:p0=2; break;	// activate the ten's 7 segment
                   }

                   i = n[j];	// to avoid the error, using n[j] directly in switch gives error
                   switch(i)
                   {
						 case 0:p2=192; delay_ms(1); break;
                         case 1:p2=249; delay_ms(1); break;
                         case 2:p2=164; delay_ms(1); break;
                         case 3:p2=176; delay_ms(1); break;
                         case 4:p2=153; delay_ms(1); break;
                         case 5:p2=146; delay_ms(1); break;
                         case 6:p2=130; delay_ms(1); break;
                         case 7:p2=248; delay_ms(1); break;
                         case 8:p2=128; delay_ms(1); break;
                         case 9:p2=152; delay_ms(1); break;
                   }
             }
		}
	}
}
