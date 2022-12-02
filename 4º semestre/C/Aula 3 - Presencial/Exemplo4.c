#include <stdio.h>
#include <stdlib.h>
#include <math.h>
void criar(float conta[100],float saldo[100],int I){
	conta[I] = I;
	printf("\nCodigo da sua conta: %.0f",conta[I]);
	printf("\nDigite o valor que deseja depositar: ");
	scanf("%f",&saldo[I]);
	
}
float depositar (float saldo[100],int cont){
	float money,novo=0;
	printf("\nDeseja depositar quanto?: ");
	scanf("%f",&money);
	novo = saldo[cont];
	novo = novo+money;
	saldo[cont] = novo;
	
	return saldo[cont];
}
float transferir (float saldo[100],int cont){
	float money;
	printf("\nDeseja transferir quanto?: ");
	scanf("%f",&money);
	saldo[cont] = saldo[cont]-money;
	
	return saldo[cont];
}
	

int main(){
	float conta[100];
	float saldo[100];
	float aux,cod,deposito,transferi,reini=1;
	int cont,b=0;
	while(reini==1){
	
	int I=1;
	int i=0;
	do{
	printf("\nVoce possui uma conta?\n1-Sim\n2-Nao\n");
	scanf("%f",&aux);
	if(aux==2){
		criar(conta,saldo,I);
		I++;
	}
	}while(aux!=1);
	do{
	
	printf("\nDigite o Codigo da conta: ");
	scanf("%f",&cod);
	for(i=0;i<101;i++){
		if(cod==conta[i]){
			printf("\nConta achada!");
			cont = i;
			i = 101;
			b = 1;
		}
	}
	}while(b==0);
	
	do{
	printf("\nSaldo: %.2f",saldo[cont]);
	printf("\nO que deseja realizar?\n1-Depositar\n2-Transferir\n3-Imprimir\n4-Sair\n");
	scanf("%f",&aux);
	if(aux==1){
		saldo[cont] = depositar(saldo,cont);
	}else if(aux==2){
		transferir(saldo,cont);
	}else if(aux==3){
			printf("\nSaldo: %.2f",saldo[cont]);
	}
	}while(aux!=4);
	printf("\n\n Digite 1 caso queira reiniciar o programa: ");
		scanf("%f",&reini);

		
}
}
