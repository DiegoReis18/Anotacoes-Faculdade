#include <stdio.h>
#include <stdlib.h>
#include <math.h>

float Media(){
	float n1,n2,n3,a;
	for(int i=1;i<4;i++){
		printf("Digite sua nota %d: ",i);
		scanf("%f",&a);
		if(i==1){
			n1 = a;
		}else if(i==2){
			n2 = a;
		}else{
			n3 = a;
		}
	}
	return (n1+n2+n3)/3;
	
}
void Consulta(float M){
	if(M>=7){
    		printf("\nParabens!! Voce foi aprovado com %.1f de media", M);
		}else if (M>=5&&M<7){
			printf("Voce esta de recuperacao com %.1f de media :/ , boa sorte!", M);
		}else{
			printf("Voce foi reprovado com %.1f de media ;-;", M);
		}
}
int main(){
	float M;
	int aux=0;
	while(aux==0){
		M = Media();
		Consulta(M);
		printf("\n\nDigite 0 para reiniciar o simulador, ou qualquer outro numero para encerrar");
    	scanf("%d",&aux);
    	system("cls");
    }
}
