#line 1 "F:/ES group 3/ass4/7_segment_push.c"
void main()
{
 int i;
 p1=0xff;
 p2=0x00;
 i=0;
 while(1)
 {
 if(p1==0b11111110)
 {p2=249;}
 else if(p1==0b11111101)
 {p2=164;}
 else if(p1==0b11111011)
 {p2=176;}
 else if(p1==0b11110111)
 {p2=153;}
 else
 {p2= 192;}
 }
}
