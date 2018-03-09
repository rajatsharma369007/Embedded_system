// this program is developed to show the interface of the push button
// with the 7_segment display using 8051 microcontroller.
// Date: 09/03/2018
// Embedded system Laboratory, Tezpur University

void main()
{
	
	int i;
	p1=0xff;	// to set the P1 as input port, when push button is pressed it will return 0 to port	
	p2=0x00;	// to set the P2 as output port, it gives the output 1 as high and 0 as low
	i=0;
 
	while(1)
	{
		 // when push button at p1.0 is pressed, display 1 at 7 segment
         if(p1==0b11111110)
         {p2=249;}
		 // when push button at p1.1 is pressed, display 2 at 7 segment
         else if(p1==0b11111101)
         {p2=164;}
		 // when push button at p1.2 is pressed, display 3 at 7 segment
         else if(p1==0b11111011)
         {p2=176;}
		 // when push button at p1.3 is pressed, display 4 at 7 segment
         else if(p1==0b11110111)
         {p2=153;}
		 // if nothing pressed, display 0 at 7 segment
         else
         {p2= 192;}
	}
}
