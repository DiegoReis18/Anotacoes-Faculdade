#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main(){

    float X1,X2,Y1,Y2,d;
	printf("Digite o valor do X1: ");
    scanf("%f",&X1);
    printf("Digite o valor do Y1: ");
    scanf("%f",&Y1);
    printf("Digite o valor do X2: ");
    scanf("%f",&X2);
    printf("Digite o valor do Y2: ");
    scanf("%f",&Y2);
    d=sqrt(pow((X2-X1),2)+pow((Y2-Y1),2));
    printf("A distancia entre os pontos P1 e P2: %f",d);
	system("PAUSE");
}
