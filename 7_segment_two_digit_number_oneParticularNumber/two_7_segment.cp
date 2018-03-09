#line 1 "F:/ES group 3/ass5/two_7_segment.c"
void main()
{
 int i;
 int j;
 int k;
 int n[]={0,0};
 p0=0x00;
 p2=0x00;

 while(1)
 {
 if(n[1]==9&&n[0]!=9)
 { n[1]=0;
 n[0]+=1;
 }
 else if(n[0]==9 && n[1]==9)
 {n[1]=0;
 n[0]=0;}
 else
 {
 n[1]+=1;
 }
 for(k=0;k<50; k++)
 {
 for(j=0;j<=1;j++)
 {
 switch(j)
 {
 case 0:p0=1; break;
 case 1:p0=2; break;
 }

 i = n[j];
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
