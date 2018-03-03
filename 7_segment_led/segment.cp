#line 1 "F:/ES group 3/ass3/segment.c"
void main()
{

 int a[]={192,249,164,176,153,146,130,248,128,152};
 int i;
 p2=0x00;
 i=0;
 while(1)
 {
 p2=a[i];
 delay_ms(500);
 if(i==9)
 {
 i=0;
 continue;
 }
 i++;
 }
}
