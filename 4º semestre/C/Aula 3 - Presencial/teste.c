#include <stdio.h>
#include <stdlib.h>
#include <math.h>


int soma(int num,int num2){
	int res;
	res = num+num2;
	return res;
}
 main(){
	float n1=0,n2=0,r=0;
	printf("Digite o número 1: ");
	scanf("%f",&n1);
	printf("Digite o número 2: ");
	scanf("%f",&n2);
	r = soma(n1,n2);
	printf("Resultado: %f",r);
	system("PAUSE");
	
	
}
