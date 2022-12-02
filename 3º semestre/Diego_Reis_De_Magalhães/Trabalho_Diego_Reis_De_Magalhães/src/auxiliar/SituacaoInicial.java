package auxiliar;
import java.util.ArrayList;

import model.Livro;
public class SituacaoInicial {
	
	public static void montarLojasLivros(model.Loja a) { //obrigatório
		
		model.Livro oi2 = new model.Livro("A culpa é das estrelas");
		oi2.getTitulo();
		a.acervo.add(oi2);
		oi2 = new model.Livro("Game of Thrones");
		oi2.getTitulo();
		a.acervo.add(oi2);
		oi2 = new model.Livro("Percy Jackson");
		oi2.getTitulo();
		a.acervo.add(oi2);
		oi2 = new model.Livro("O Pequeno Principe");
		oi2.getTitulo();
		a.acervo.add(oi2);
		oi2 = new model.Livro("Harry Potter");
		oi2.getTitulo();
		a.acervo.add(oi2);
		
		for(int i=0;i<a.acervo.size();i++) {
			System.out.println(a.acervo.get(i).getTitulo());
		}
	
		
		
		
	}
}
