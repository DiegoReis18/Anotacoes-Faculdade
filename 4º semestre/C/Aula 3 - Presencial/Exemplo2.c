#include <stdio.h>
#include <stdlib.h>
#include <math.h>

main(){
	float n1,n2,n3,m,aux=1;
	while(aux==1){
		printf("\nDigite as 3 notas: ");
		scanf("%f\n%f\n%f",&n1,&n2,&n3);
		m = (n1+n2+n3)/3;
		printf("Nota 1: %.2f\nNota 2: %.2f\nNota 3: %.2f\n\nMedia: %.2f\n",n1,n2,n3,m);
		printf("\n\n Digite 1 caso queira reiniciar o programa: ");
		scanf("%f",&aux);
		
	}
}
