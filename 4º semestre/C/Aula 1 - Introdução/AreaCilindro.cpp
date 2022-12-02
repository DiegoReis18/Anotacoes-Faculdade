#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main(){
	
	float a,r,pi,area=0,litros=0,latas=0,valor=0;
	pi = 3.14;
	printf("Digite o valor da altura do cilindro: ");
    scanf("%f",&a);
    printf("Digite o valor do raio do cilindro: ");
    scanf("%f",&r);
    area = 2*pi*r*r+2*pi*r*a;//628
    litros = area/3;
    latas = litros/5;
    valor = 20*latas;
    printf("\nValor da area: %.2f\nLitros de tinta necessarios: %.0f\nLatas necessarias: %.0f\nValor total: %.2f", area,litros,latas,valor);
  	system("PAUSE");
}