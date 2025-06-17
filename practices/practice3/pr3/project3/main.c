#include <8051.h>

void main()
{
	unsigned int i = 0, k = 0;
	P0 = 0x38;
	P2 = 0x1;
	P2 = 0x0;
	P0 = 0x80;
	P2 = 0x1;
	P2 = 0x0; 
	while(1)
	{ 
		k = i;
		while (k != 0) 
		{
			if (k >= 8) { P0 = 0x00; P2 = 0x3; P2 = 0x2; }
			if (k == 7) { P0 = 0xA5; P2 = 0x3; P2 = 0x2; }
			if (k == 6) { P0 = 0xA2; P2 = 0x3; P2 = 0x2; }
			if (k == 5) { P0 = 0xA3; P2 = 0x3; P2 = 0x2; }
			if (k == 4) { P0 = 0xA5; P2 = 0x3; P2 = 0x2; }
			if (k == 3) { P0 = 0xAE; P2 = 0x3; P2 = 0x2; }
			if (k == 2) { P0 = 0xA9; P2 = 0x3; P2 = 0x2; }
			if (k == 1) { P0 = 0xAA; P2 = 0x3; P2 = 0x2; }
			k--;
			if (k == i - 16) { k = 0; }
		} 
		if (i++ == 22) { i = 0; }
		P0 = 0x01;
		P2 = 0x1;
		P2 = 0x0;
	}
}
