package model;

import javax.swing.JOptionPane;

public class Livro extends Produto{
	private String titulo;
	static String dis;
	static int dis2;
	static double dis3;
	model.Loja loja = new model.Loja();
	
	public Livro(String Titulo) {//obrigatório
		super(dis,dis2,dis3);

		setTitulo(Titulo);
		
	}
	public String getTitulo() {
		return titulo;
		}
	public void setTitulo(String TITULO) {
		this.titulo = TITULO;
		}

}
