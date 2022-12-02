#include <stdio.h>
#include <stdlib.h>
#include <math.h>

main(){
	float altura,raio,area,money,litro,lata,aux=1;
while(aux==1){

	float altura,raio,area,money,litro,lata;
	printf("Informe a altura do tanque.");
	scanf("%f",&altura);
	printf("Informe o raio do tanque.");
	scanf("%f",&raio);
	area = 2*3.14*raio*raio+2*3.14*raio*altura;
	litro = area/3;
	lata =  litro/5;
	money = lata*20;
	printf("Litros de tintas necessarios: %.2f\nLatas necessarias: %.2f\nDinheiro necessario: %.2f",litro,lata,money);
	printf("\n\n Digite 1 caso queira reiniciar o programa: ");
	scanf("%f",&aux);
}

	
	
}
