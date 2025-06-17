#include <8052.h>
#include <htc.h>
 
int flag, flag2;

void imp(unsigned int cnt)
{
	do{}while(TF2 == 0);
	TF2 = 0;
	P10 = 1;
	while (cnt != 0)cnt--;
	P10 = 0;
	if(P36 == 1){ flag = 1;}
	if(P37 == 1){ flag = 0;}
}

void main()
{
	flag = 0;

	P1 = 0xFE; 
	RCAP2H = 0x0; 
	RCAP2L = 0x0; 
 
	T2CON &= 0xFC;
	ET2 = 1; 
	EA = 1; 
	T2CON |= 0x4; 

	while(1)
	{
		if (flag == 1){imp(2100);}
		else imp(3500);

		if(P36 == 1){ flag = 1;}
		if(P37 == 1){ flag = 0;}
	}
}
