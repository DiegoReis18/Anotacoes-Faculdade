#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main(){
	
	float N1,N2,N3,M;
	int aux=0;
	while(aux==0){
	
		printf("Digite sua nota 1: ");
    	scanf("%f",&N1);
    	printf("Digite sua nota 2: ");
    	scanf("%f",&N2);
    	printf("Digite sua nota 3: ");
    	scanf("%f",&N3);
    	M = (N1+N2+N3)/3;
    	if(M>=7){
    		printf("\nParabens!! Voce foi aprovado com %.1f de media", M);
		}else if (M>=5&&M<7){
			printf("Voce esta de recuperacao com %.1f de media :/ , boa sorte!", M);
		}else{
			printf("Voce foi reprovado com %.1f de media ;-;", M);
		}
		printf("\n\nDigite 0 para reiniciar o simulador, ou qualquer outro numero para encerrar");
    	scanf("%d",&aux);
    	system("cls");
}
}