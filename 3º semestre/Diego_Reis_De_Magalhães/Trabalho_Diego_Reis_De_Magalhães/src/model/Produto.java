package model;

import javax.swing.JOptionPane;

public class Produto { //abstrata
	private int cod,qtd;
	private double preco;
	
	public Produto(String cod,int qtd,double preco) { //obrigatório
		setqtd(qtd+1);
		setpreco(preco);
	}
	public int getcod() {
		return cod;
		}
	public void setcod(int COD) {
		this.cod = COD;
		}
	public int getqtd() {
		return qtd;
		}
	public void setqtd(int QTD) {
		this.qtd = QTD;
		}
	public double getpreco() {
		return preco;
		}
	public void setpreco(double PRECO) {
		this.preco = PRECO;
		}
	
}
