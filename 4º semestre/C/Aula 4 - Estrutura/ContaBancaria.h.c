typedef struct {
	int numero;
	double saldo;
}ContaBancaria;

void Inicializa(ContaBancaria* conta, int numero, double saldo);
void Deposito(ContaBancaria* conta, double valor);
void Saque(ContaBancaria* conta, double valor);
void Imprimir(ContaBancaria conta);