void main()
{
     p1=0xFF;            // initializing all the push buttons (input ports) as 1

     while(1)
     {
       p2=~p1;           // when p1 is low (button is pushed) then p2 will be high
       delay_ms(500);
     }
}
