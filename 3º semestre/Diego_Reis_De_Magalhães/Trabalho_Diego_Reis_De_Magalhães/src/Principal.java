import javax.swing.JOptionPane;
import java.util.ArrayList;
import auxiliar.SituacaoInicial;
import model.Loja;

public class Principal {
	public static void main(String args[]) {
		String clienteNome = "oi";
		String escolha = "";
		boolean verificar = false;
		try {
		model.Cliente cliente = new model.Cliente(clienteNome);
		control.Compra compra = new control.Compra();
		model.Loja loja = new model.Loja();
	
	
		
		SituacaoInicial.montarLojasLivros(loja);
		System.out.println(cliente.getNome());
		compra.iniciarCompra();
		while(verificar==false) {
			
		loja.mostrarAcervo();
		while(compra.a==1) {
			try {
		String escolha2 = compra.getOpcao(escolha);
		verificar = compra.getVerifica(escolha2);
		if(verificar==true) {
			compra.comprar(escolha2,cliente.getNome());
		}else {
			JOptionPane.showMessageDialog(null,"Siga as instruções por favor!","Algo deu errado!",JOptionPane.ERROR_MESSAGE);
		}
		
		}catch(Exception e) {
			JOptionPane.showMessageDialog(null,"Siga as instruções por favor!","Algo deu errado!",JOptionPane.ERROR_MESSAGE);
		}
			
		}
		JOptionPane.showMessageDialog(null,"Obrigado e Volte Sempre!","Até mais",JOptionPane.INFORMATION_MESSAGE);
		}
		
		}catch(Exception e) {
			JOptionPane.showMessageDialog(null,"Siga as instruções por favor!","Algo deu errado!",JOptionPane.ERROR_MESSAGE);
		}
		}
}
