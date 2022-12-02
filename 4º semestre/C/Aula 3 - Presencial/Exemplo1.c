#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define MAX 100
#define PREC 0.0000001
main(){
	float num,raiz,inf,sup,I;
	do{
		printf("\n\nDigite um numero real positivo: ");
		scanf("%f",&num);
	}while(num<=1);
		inf=0;
		sup=num;
		I=0;
	do{
		I=I+1;
		raiz = 0.5*(inf+sup);
		if(raiz*raiz>num){
			sup=raiz;
		}else{
			inf=raiz;		
	}
	}while((sup-inf) > PREC && I<MAX);
	raiz=0.5*(inf+sup);
	printf("Raiz: %f +- %f",raiz,PREC);

	
	
	
}

