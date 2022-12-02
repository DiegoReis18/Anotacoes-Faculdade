//Classe PessoaFisica
import javax.swing.JOptionPane;

public class PessoaFisica {
private String Nome = "";
private String cpf = "CPF INVALIDO";

private boolean cpfValido(String txtCpf) {
boolean status = true;
int soma = 0;
int val = 0;
int aux = 10;
int p = 0;
int dig1 = 0;
int soma2 = 0;
int aux2 = 0;
String letra = "";
	for(int i=0;i<txtCpf.length();i++) {
	letra = String.valueOf(txtCpf.charAt(i));
	val = Integer.parseInt(letra);
	
	if(i<9) {
		aux2 = 11-i;
		p = val*aux2;
		soma2 = p+soma2;
		aux = 10-i;
		System.out.println("aux:"+aux);
		p = val*aux;
		soma = p+soma;
	}
	else if(i==9) {
		System.out.println("Digito 1:  "+val);	
		dig1 = 11 - (soma % 11);
		if(dig1>9) {
			dig1 = 0;
		}
		System.out.println(dig1);
			if (dig1!=val) {
				status = false;
				System.out.println("Erro");
			}else {
				System.out.println("digito ok");
		}	
	}else if(i==10) {
		System.out.println("Digito 2:  "+val);	
		soma2 = soma2+(dig1*2);
		System.out.println("Soma:  "+soma2);	
		int dig2 = 11 - (soma2 % 11);
		if(dig1>9) {
			dig1 = 0;
		}
		System.out.println(dig2);
			if (dig2!=val) {
				status = false;
				System.out.println("Erro");
			}else {
				System.out.println("digito ok");
			}
	}
		
	
}

return status;
}

// Getters e Setters

public String getCpf() {
return cpf;
}
public String getNome() {
return Nome;
}

// Ao inserir dado no CPF, validar antes de preencher

public boolean setCpf(String cpf) {
		if(cpf.length()==11) {
		boolean aux = false;
		aux = this.cpfValido(cpf);
			if (aux==true) {
		
				this.cpf = cpf;
				return true;
			}else {
			JOptionPane.showMessageDialog(null,"CPF INVÁLIDO","Algo deu errado!",JOptionPane.ERROR_MESSAGE);
				return false;
}
		}else {
			JOptionPane.showMessageDialog(null,"Tamanho inválido","Algo deu errado!",JOptionPane.ERROR_MESSAGE);
			return false;
		}

}

public void setNome(String nome) {
	this.Nome = nome;
	System.out.println(nome);
}
}

