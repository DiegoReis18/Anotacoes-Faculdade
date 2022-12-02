#include<stdio.h>
#include<stdlib.h>
#include"ContaBancaria.h.c"

int main(int argc, int *argv[]){
	
	ContaBancaria conta1;
	Inicializa(&conta1,918556,300);
	printf("/n Antes da Movimentação");
	Imprimir(conta1);
	Deposito(&conta1,50);
	Saque(&conta1,70);
	printf("/n Depois da Movimentação");
	Imprimir(conta1);
}