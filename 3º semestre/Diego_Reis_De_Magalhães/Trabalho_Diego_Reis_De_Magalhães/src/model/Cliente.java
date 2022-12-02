package model;

import javax.swing.JOptionPane;

public class Cliente {
	private String Nome;
	control.Compra c = new control.Compra();

	
	public Cliente(String nome) {//obrigatório
		nome = JOptionPane.showInputDialog(null,"Digite o seu nome","Bem vindo(a)",JOptionPane.INFORMATION_MESSAGE);
		setNome(nome);
		System.out.println(Nome);
	}
	public String getNome() {
		return Nome;
	}
	public void setNome(String nome) {
			this.Nome = nome;
	}
		
	}

