#include <8051.h>

void main()
{
	unsigned char i,j; 
	unsigned char massiv [11] = {0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90, 0xFF};

	P1 = massiv [10]; 
	i = 0;

	while(1)
{
		if(P30 == 1 && i <= 10){
		if(i == 10){i = 0;}
		P2 = massiv[i];
		i++;   
		}
	}  
	P2 = massiv[10]; 
}
