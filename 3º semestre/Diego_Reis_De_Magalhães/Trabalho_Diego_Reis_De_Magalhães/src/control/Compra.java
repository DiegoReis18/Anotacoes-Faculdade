package control;
import java.util.ArrayList;

import javax.swing.JOptionPane;

import model.Livro;
import model.Loja;
public class Compra implements control.InterCompra{
	static double preço;
	public static int qtd1=0,qtd2=0,qtd3=0,qtd4=0,qtd5=0,a=1;
	model.Loja loja = new model.Loja();
	ArrayList<model.Livro> cesta = new ArrayList();
	public void iniciarCompra() {
		String inicio;
		inicio = JOptionPane.showInputDialog(null,"PROMOÇÃO!!!\n\nDigite 'Iniciar' para começar as compras","Bem vindo(a)",JOptionPane.PLAIN_MESSAGE);
		if(inicio.equals("Iniciar")||inicio.equals("iniciar")||inicio.equals("INICIAR")) {
			JOptionPane.showMessageDialog(null,"Iniciado com sucesso!","UHU!",JOptionPane.INFORMATION_MESSAGE);
		}else {
			JOptionPane.showMessageDialog(null,"Obrigado e Volte Sempre!","Até mais",JOptionPane.INFORMATION_MESSAGE);
			System.exit(0);
		}
		
	}
	public void comprar(String escolha,String nome) {
		
		if(escolha.equals("1")) {
			preço = 20;
			model.Produto produto = new model.Produto(escolha,qtd1,preço);
			qtd1 = produto.getqtd();
			setTotal(precoTotal+produto.getpreco());
			setIndice(indiceCompra+1);
			model.Livro aux = new model.Livro("A culpa é das estrelas");
			aux.getTitulo();
			cesta.add(aux);
			JOptionPane.showMessageDialog(null,"A culpa é das estrelas foi adicionado para a sua cesta","Item adicionado à sua cesta!",JOptionPane.INFORMATION_MESSAGE);
		}else if(escolha.equals("2")) {
			preço = 50;
			model.Produto produto = new model.Produto(escolha,qtd2,preço);
			qtd2 = produto.getqtd();
			setTotal(precoTotal+produto.getpreco());
			setIndice(indiceCompra+1);
			model.Livro aux = new model.Livro("Game of thrones");
			aux.getTitulo();
			cesta.add(aux);
			JOptionPane.showMessageDialog(null,"Game of Thrones foi adicionado para a sua cesta","Item adicionado à sua cesta!",JOptionPane.INFORMATION_MESSAGE);
		}else if(escolha.equals("3")) {
			preço = 30;
			model.Produto produto = new model.Produto(escolha,qtd3,preço);
			qtd3 = produto.getqtd();
			setTotal(precoTotal+produto.getpreco());
			setIndice(indiceCompra+1);
			model.Livro aux = new model.Livro("Percy Jackson");
			aux.getTitulo();
			cesta.add(aux);
			JOptionPane.showMessageDialog(null,"Percy Jackson foi adicionado para a sua cesta","Item adicionado à sua cesta!",JOptionPane.INFORMATION_MESSAGE);
		}else if(escolha.equals("4")) {
			preço = 10;
			model.Produto produto = new model.Produto(escolha,qtd4,preço);
			qtd4 = produto.getqtd();
			setTotal(precoTotal+produto.getpreco());
			model.Livro aux = new model.Livro("O Pequeno Principe");
			aux.getTitulo();
			cesta.add(aux);
			JOptionPane.showMessageDialog(null,"O Pequeno Principe foi adicionado para a sua cesta","Item adicionado à sua cesta!",JOptionPane.INFORMATION_MESSAGE);
			setIndice(indiceCompra+1);
		}else if(escolha.equals("5")) {
			preço = 100;
			model.Produto produto = new model.Produto(escolha,qtd5,preço);
			qtd5 = produto.getqtd();
			setTotal(precoTotal+produto.getpreco());
			setIndice(indiceCompra+1);
			model.Livro aux = new model.Livro("Harry Potter");
			aux.getTitulo();
			cesta.add(aux);
			JOptionPane.showMessageDialog(null,"Harry Potter foi adicionado para a sua cesta","Item adicionado à sua cesta!",JOptionPane.INFORMATION_MESSAGE);
		}else if(escolha.equals("Rever")||escolha.equals("REVER")||escolha.equals("rever")) {
			loja.mostrarAcervo();
		}else {
			a=2;
			finalizarCompra(nome);
		}
		
	}
	public void finalizarCompra(String nome) {
		String cestaf = "";
		for(int i=0;i<cesta.size();i++) {
			System.out.println(cesta.get(i).getTitulo());
			cestaf = cestaf+"\n- "+cesta.get(i).getTitulo();
		}
		JOptionPane.showMessageDialog(null,"Fim do seu pedido "+nome+"!","Obrigado por comprar conosco!",JOptionPane.INFORMATION_MESSAGE);
		JOptionPane.showMessageDialog(null,"Ordem dos itens comprados:\n"+cestaf,"Cesta de "+nome,JOptionPane.PLAIN_MESSAGE);
		JOptionPane.showMessageDialog(null,"Total de itens pedidos: "+getIndice(),"Obrigado por comprar conosco!",JOptionPane.INFORMATION_MESSAGE);
		mostrarCesta(nome);
	}
	public void mostrarCesta(String nome) {
		double preço1=20,preço2=50,preço3=30,preço4=10,preço5=100;
		double preço1f=preço1*qtd1;
		double preço2f=preço2*qtd2;
		double preço3f=preço3*qtd3;
		double preço4f=preço4*qtd4;
		double preço5f=preço5*qtd5;
		if(preço1f>0){
		JOptionPane.showMessageDialog(null,"A culpa é das estrelas:\n\nPreço Unitário: R$"+preço1+"\nQuantidades compradas: "+qtd1+"\n\nPreço Total: R$"+preço1f,"Cesta de "+nome,JOptionPane.PLAIN_MESSAGE);
		}
		if(preço2f>0) {
		JOptionPane.showMessageDialog(null,"Game of Thrones:\n\nPreço Unitário: R$"+preço2+"\nQuantidades compradas: "+qtd2+"\n\nPreço Total: R$"+preço2f,"Cesta de "+nome,JOptionPane.PLAIN_MESSAGE);
		}
		if(preço3f>0) {
		JOptionPane.showMessageDialog(null,"Percy Jackson:\n\nPreço Unitário: R$"+preço3+"\nQuantidades compradas: "+qtd3+"\n\nPreço Total: R$"+preço3f,"Cesta de "+nome,JOptionPane.PLAIN_MESSAGE);
		}
		if(preço4f>0) {
		JOptionPane.showMessageDialog(null,"O Pequeno Principe:\n\nPreço Unitário: R$"+preço4+"\nQuantidades compradas: "+qtd4+"\n\nPreço Total: R$"+preço4f,"Cesta de "+nome,JOptionPane.PLAIN_MESSAGE);
		}
		if(preço5f>0) {
		JOptionPane.showMessageDialog(null,"Harry Potter:\n\nPreço Unitário: R$"+preço5+"\nQuantidades compradas: "+qtd5+"\n\nPreço Total: R$"+preço5f,"Cesta de "+nome,JOptionPane.PLAIN_MESSAGE);
		}
		JOptionPane.showMessageDialog(null,"Total de itens pedidos: "+getIndice()+"\nPreço total do pedido: R$"+getTotal(),"Cesta de "+nome,JOptionPane.PLAIN_MESSAGE);

	}
	model.Loja lj = new model.Loja();
	
	private double precoTotal = 0;
	private int indiceCompra = 0;
	public String getOpcao(String escolha) {
		 escolha = JOptionPane.showInputDialog(null,"Digite abaixo o Código do livro desejado\nDigite 'Rever' para ver os preços novamente\n\n1- "+lj.acervo.get(0).getTitulo()+"\n2- "+lj.acervo.get(1).getTitulo()+"\n3- "+lj.acervo.get(2).getTitulo()+"\n4- "+lj.acervo.get(3).getTitulo()+"\n5- "+lj.acervo.get(4).getTitulo()+"\n\n 0- Encerrar pedido","Faça seu pedido",JOptionPane.PLAIN_MESSAGE);
		 return escolha;
	}
	private boolean verificaOpcao(String escolha) {
		if(escolha.equals("1")||escolha.equals("2")||escolha.equals("3")||escolha.equals("4")||escolha.equals("5")||escolha.equals("0")||escolha.equals("Rever")||escolha.equals("REVER")||escolha.equals("rever")) {
			return true;
		}else {
		return false;
		}
	}
	public boolean getVerifica(String escolha) {
		return verificaOpcao(escolha);
	}
	public int getIndice() {
		return indiceCompra;
		}
	public void setIndice(int COD) {
		this.indiceCompra = COD;
		}
	public double getTotal() {
		return precoTotal;
		}
	public void setTotal(double QTD) {
		this.precoTotal = QTD;
		
	}
}
