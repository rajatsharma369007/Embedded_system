void main()
{
	 // stored the binary output for each symbol as a integer in the array. 
	 
     	int a[]={192, 249, 164, 176, 153, 146, 130, 248, 128, 152};
     	int i;
	 
     	p2=0x00;						// initializing the port 2 with the 0		
     	i=0;
     
	while(1)
        {
		p2=a[i];			
		delay_ms(500);
		
		if(i==9)			// to restart the the symbol from 0
		{
			i=0;
			continue;
		}
		i++;
        }
}
