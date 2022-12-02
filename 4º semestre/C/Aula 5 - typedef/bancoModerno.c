#include <stdio.h>
#include <stdlib.h>
#include <math.h>
typedef struct{
	
	float conta[100];
	float saldo[100];
}Contabancaria;
void criar(Contabancaria *conta,int I){
	conta->conta[I] = I;
	printf("\nCodigo da sua conta: %.0f",conta->conta[I]);
	printf("\nDigite o valor que deseja depositar: ");
	scanf("%f",&conta->saldo[I]);
	
}
float depositar (Contabancaria *conta,int cont){
	float money,novo=0;
	printf("\nDeseja depositar quanto?: ");
	scanf("%f",&money);
	novo = conta->saldo[cont];
	novo = novo+money;
	conta->saldo[cont] = novo;
	
	return conta->saldo[cont];
}
float sacar (Contabancaria *conta,int cont){
	float money,aux;
	do{
		printf("\nDeseja transferir quanto?: \n");
		scanf("%f",&money);
		if(money > conta->saldo[cont]){
		printf("Saldo insuficiente para saque!");
	}
	}while(conta->saldo[cont] < money);

	conta->saldo[cont] = conta->saldo[cont]-money;
	
	return conta->saldo[cont];
}

float transferir (Contabancaria *conta,int cont){
	float money;
	int aux=0,ct,i;
	printf("\nDeseja transferir para qual conta? \n");
	scanf("%d",&ct);
	while(aux==0){
	for(i=0;i<101;i++){
		if(ct==conta->conta[i]){
			printf("\nConta achada!");
			
		do{
		printf("\nDeseja transferir quanto?: \n");
		scanf("%f",&money);
		if(money > conta->saldo[cont]){
		printf("Saldo insuficiente para saque!");
		}
		}while(conta->saldo[cont] < money);
			
			conta->saldo[cont] = conta->saldo[cont]-money;
			conta->saldo[i] = conta->saldo[i]-money;
			printf("\nSaldo conta %d: %f",i,conta->saldo[i]);
			printf("\nSaldo conta %d: %f",cont,conta->saldo[cont]);
			i=102;
			aux=1;
		}
	}
		if(aux=0){
			printf("\nConta não encontrada");
	}
	}
	
	while(money > conta->saldo[cont]){
	printf("\nDeseja transferir quanto?: \n");
	scanf("%f",&money);
	if(money > conta->saldo[cont]){
		printf("Saldo insuficiente para saque!");
	}
}
	conta->saldo[cont] = conta->saldo[cont]-money;
	
	return conta->saldo[cont];
}
	

int main(){
	Contabancaria conta;
	float aux,cod,deposito,transferi,reini=1;
	int cont,b=0;
	while(reini==1){
	
	int I=1;
	int i=0;
	do{
	printf("\nVoce possui uma conta?\n1-Sim\n2-Nao\n");
	scanf("%f",&aux);
	if(aux==2){
		criar(&conta,I);
		I++;
	}
	}while(aux!=1);
	do{
	
	printf("\nDigite o Codigo da conta: ");
	scanf("%f",&cod);
	for(i=0;i<101;i++){
		if(cod==conta.conta[i]){
			printf("\nConta achada!");
			cont = i;
			i = 101;
			b = 1;
		}
	}
	}while(b==0);
	
	do{
	printf("\nSaldo: %.2f",conta.saldo[cont]);
	printf("\nO que deseja realizar?\n1-Depositar\n2-Sacar\n3-Transferir\n4-Imprimir\n5-Sair\n");
	scanf("%f",&aux);
	if(aux==1){
		conta.saldo[cont] = depositar(&conta,cont);
	}else if(aux==2){
		sacar(&conta,cont);
	}else if(aux==3){
		transferir(&conta,cont);
	}else if(aux==4){
			printf("\nSaldo: %.2f",conta.saldo[cont]);
	}
	}while(aux!=5);
	printf("\n\n Digite 1 caso queira reiniciar o programa: ");
		scanf("%f",&reini);

		
}
}
