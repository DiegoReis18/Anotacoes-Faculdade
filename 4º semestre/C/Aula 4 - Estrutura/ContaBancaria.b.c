#include<stdio.h>
#include"ContaBancaria.h.c"

void Inicializa(ContaBancaria* conta, int numero, double saldo){
	(*conta).numero = numero
	(*conta).saldo = saldo
	
	
}
void Deposito(ContaBancaria* conta, double valor){
	(*conta).saldo += valor
}
void Saque(ContaBancaria* conta, double valor){
	(*conta).saldo -= valor
}

void Imprimir(ContaBancaria conta){
	printf("Numero: %d/n ",(*conta).numero)
	printf("Saldo: %d/n ",(*conta).saldo)
}