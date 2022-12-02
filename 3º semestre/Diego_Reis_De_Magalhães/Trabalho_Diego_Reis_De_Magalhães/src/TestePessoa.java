//Classe TestePessoa
import javax.swing.JOptionPane;

public class TestePessoa {

public static void main(String[] args) {
try {
int aux = 1;
while(aux==1) {
boolean aux2 = false;
// TODO Auto-generated method stub

String msgIni = "Entre com o número do CPF ";

msgIni += "\n(sem digitar pontos e nem traço): ";

String nome = JOptionPane.showInputDialog(null,"Digite seu nome","Informações pessoais!",JOptionPane.PLAIN_MESSAGE);
String inCpf = JOptionPane.showInputDialog(null, msgIni, "CPF:", JOptionPane.PLAIN_MESSAGE);


if (!(inCpf==null)) {

PessoaFisica p1 = new PessoaFisica();
p1.setNome(nome);
while (aux2==false) {
aux2 = p1.setCpf(inCpf);
if (aux2==false){
	inCpf = JOptionPane.showInputDialog(null, "Digite um cpf válido:","Digite corretamente!",JOptionPane.WARNING_MESSAGE);// CPF: 123.456.789-00
}
}

// fazer o teste com algum número de CPF válido

String txtFinal = "";
txtFinal += "\nNome: " + p1.getNome();
txtFinal += "\nCPF: " + p1.getCpf();
System.out.println(txtFinal);
JOptionPane.showMessageDialog(null,txtFinal,"Informações Pessoais:",JOptionPane.PLAIN_MESSAGE);
}
System.out.println("Fim do TESTE...");
aux = Integer.parseInt(JOptionPane.showInputDialog(null,"Digite 1 para reiniciar o programa","Finalizado",JOptionPane.INFORMATION_MESSAGE));
}
}catch(Exception e) {
	JOptionPane.showMessageDialog(null,"Encerrado","Algo deu errado!",JOptionPane.ERROR_MESSAGE);
}
}

}
