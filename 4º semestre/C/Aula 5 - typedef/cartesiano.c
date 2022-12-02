#include <stdio.h>
#include <stdlib.h>
#include <math.h>
typedef struct{
	float x;
	float y;
}numeros;

void inclusao (numeros *numeros){
	printf("Digite o Valor de X\n");
	scanf("%f",&numeros->x); 
	printf("Digite o Valor de Y\n");
	scanf("%f",&numeros->y); 

}
void imprimir (numeros *numeros){
	printf("\nX = %f\n",numeros->x);
	printf("\nY = %f\n",numeros->y);
}

float calc (numeros *p1,numeros *p2){
	float dx = p2->x - p1->x;
	float dy = p2->y - p1->y;
	float res = sqrt(dx*dx + dy*dy);
	return res;
}
int main(){
	numeros ponto1;
	numeros ponto2;
	printf("\nPonto1\n");
	 inclusao(&ponto1);
	printf("\nPonto2\n");
	inclusao(&ponto2);
	int a=0;
	int p;
	float res=0;
	while(a!=4){
	printf("\nDigite o comando desejado\n1-Novos valores\n2-Ver valores\n3-Calcular\n4-Fechar programa\n");
	scanf("%d",&a); 
	switch(a){
	case(1):
		printf("\nQual ponto deseja alterar?o\n1-Ponto1\n2-Ponto2\n");
		scanf("%d",&p); 
		if(p==1){
			inclusao(&ponto1);
		}
		if(p==2){
			inclusao(&ponto2);
		}
		break;
	case(2):
			printf("\nQual ponto deseja ver?\n1-Ponto1\n2-Ponto2\n");
		scanf("%d",&p); 
		if(p==1){
			printf("\nPonto1");
			imprimir(&ponto1);
		}
		if(p==2){
			printf("\nPonto2");
			imprimir(&ponto2);
		}

		break;
	case(3):
		res = calc(&ponto1,&ponto2);
		printf("\nResultado: %f",res);
		break;
	case(4):
		
		break;
	}
}
}