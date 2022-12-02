#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int fatorial(int num){
	if(num<=1){
		return 1;
	}else{
		int res = num*fatorial(num-1);
		return(res);
	}
}

int main(){
int n,res,aux=1;
while(aux!=0){
printf("Digite o número da fatorial:\n");
scanf("%d",&n);
res = fatorial(n);
printf("Fatorial do número %d é igual a %d",n,res);
printf("\nDigite 0 para encerrar: ");
scanf("%d",&aux);
system("cls");
}
}