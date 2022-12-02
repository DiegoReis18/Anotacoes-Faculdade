#include <stdio.h>
#include <stdlib.h>
#include <math.h>
main()
{
      float x1, y1, x2, y2;
      float d;
      printf ("\nDigite o valor de X1: ");
      scanf ("%f",&x1);
      printf ("\nDigite o valor de Y1: ");
      scanf ("%f",&y1);
      printf ("\nDigite o valor de X2: ");
      scanf ("%f",&x2);
      printf ("\nDigite o valor de Y2: ");
      scanf ("%f",&y2);
      d=sqrt(pow((x2-x1),2)+pow((y2-y1),2));
      printf ("\nA distancia entre os pontos P1 e P2 eh %.2f\n",d);
      system("PAUSE");	
}
