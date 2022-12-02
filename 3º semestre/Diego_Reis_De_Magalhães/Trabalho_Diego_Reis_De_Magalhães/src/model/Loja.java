package model;

import java.util.ArrayList;

import javax.swing.JOptionPane;

public class Loja implements control.InterLoja {
	public static ArrayList<model.Livro> acervo = new ArrayList();
	model.Livro a;
	public Loja() {
		
	}
	public void mostrarAcervo() {
	
		JOptionPane.showMessageDialog(null,"Bem vindo(a), Os preços de cada livro:\n\n"+acervo.get(0).getTitulo()+" - R$20\n"+acervo.get(1).getTitulo()+" - R$50\n"+acervo.get(2).getTitulo()+" - R$30\n"+acervo.get(3).getTitulo()+" - R$10\n"+acervo.get(4).getTitulo()+" - R$100","Livros na promoção",JOptionPane.PLAIN_MESSAGE);
	}
	
	
}
