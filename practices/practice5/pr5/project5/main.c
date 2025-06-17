#include <8051.h>

void main()
{
 char symbol[3][5]={{'0','1','2','3','4'},
                   {'5','6','7','8','9'},
                   {'A','B','C','D','E'}};
 P0 = 0x38;
 P2 = 0x1;
 P2 = 0x0;
 P0 = 0x80;
 P2 = 0x1;
 P2 = 0x0;


 while(1){

  P10 = 0;
  if(P13 == 0){ P0 = symbol[0][4]; P2 = 0x3; P2 = 0x2;}
  if(P14 == 0){ P0 = symbol[0][3]; P2 = 0x3; P2 = 0x2;}
  if(P15 == 0){ P0 = symbol[0][2]; P2 = 0x3; P2 = 0x2;}
  if(P16 == 0){ P0 = symbol[0][1]; P2 = 0x3; P2 = 0x2;}
  if(P17 == 0){ P0 = symbol[0][0]; P2 = 0x3; P2 = 0x2;}
  P10 = 1;

  P11 = 0;
  if(P13 == 0){ P0 = symbol[1][4]; P2 = 0x3; P2 = 0x2;}
  if(P14 == 0){ P0 = symbol[1][3]; P2 = 0x3; P2 = 0x2;}
  if(P15 == 0){ P0 = symbol[1][2]; P2 = 0x3; P2 = 0x2;}
  if(P16 == 0){ P0 = symbol[1][1]; P2 = 0x3; P2 = 0x2;}
  if(P17 == 0){ P0 = symbol[1][0]; P2 = 0x3; P2 = 0x2;}
  P11 = 1;

  P12 = 0;
  if(P13 == 0){ P0 = symbol[2][4]; P2 = 0x3; P2 = 0x2;}
  if(P14 == 0){ P0 = symbol[2][3]; P2 = 0x3; P2 = 0x2;}
  if(P15 == 0){ P0 = symbol[2][2]; P2 = 0x3; P2 = 0x2;}
  if(P16 == 0){ P0 = symbol[2][1]; P2 = 0x3; P2 = 0x2;}
  if(P17 == 0){ P0 = symbol[2][0]; P2 = 0x3; P2 = 0x2;}
  P12 = 1;

  P0 = 0x01;
  P2 = 0x1;
  P2 = 0x0;
 }
}
