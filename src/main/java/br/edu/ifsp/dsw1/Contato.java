package br.edu.ifsp.dsw1;

public class Contato {
	private static Long ultimo_id = 1L;
	
	private Long id;
	private String nome;
	private String telefone;
	private String email;
	
	public Contato() {
		ultimo_id ++;
		this.id = ultimo_id;
	}

	public Contato(String nome, String telefone, String email) {
		this();
		this.nome = nome;
		this.telefone = telefone;
		this.email = email;
	}

	public Contato(Long id, String nome, String telefone, String email) {
		this.id = id;
		this.nome = nome;
		this.telefone = telefone;
		this.email = email;
	}

	public Long getId() {
		return id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
}
