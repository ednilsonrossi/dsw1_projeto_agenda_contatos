package br.edu.ifsp.dsw1;

import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.stream.Collectors;

public class ContatosBean {
	
	private List<Contato> contatos;
	
	public ContatosBean() {
		contatos = new LinkedList<Contato>();
	}
	
	public void insere(Contato contato) {
		if (contato != null) {
			contatos.add(contato);
		}
	}
	
	public void apaga(Contato contato) {
		contatos.remove(contato);
	}
	
	public Contato buscaPorId(Long id) {
		return contatos.stream()
				.filter(c -> c.getId() == id)
				.findFirst()
				.orElseThrow( () -> new NoSuchElementException("Id: " + id + " não encontrado.")  );
	}
	
	public List<Contato> buscaTodos() {
		return contatos.stream()
				.sorted( (contato1, contato2) -> contato1.getNome().compareToIgnoreCase(contato2.getNome()) )
				.collect(Collectors.toList());
	}
	
}
