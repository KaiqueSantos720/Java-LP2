package exercicio_hashcode_equals;

public class Pessoa {
	private String nome;
	private String corDoCabelo;
	
	public Pessoa() {
		this.corDoCabelo = "";
		this.nome = "";
	}
	
	public Pessoa(String nome, String corDoCabelo) {
		this.nome = nome;
		this.corDoCabelo = corDoCabelo;
	}
	
	public Pessoa(String nome) {
		this.nome = nome;
		this.corDoCabelo = "";
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCorDoCabelo() {
		return corDoCabelo;
	}

	public void setCorDoCabelo(String corDoCabelo) {
		this.corDoCabelo = corDoCabelo;
	}

	@Override
	public boolean equals(Object obj) { //escrito igual ao da classe Object
		if (this == obj) {
			return true;
		}
		//Verifica se o argumento é nulo
		if(obj == null) {
			return false;
		}
		//Classes diferentes retorna false
		if(getClass() != obj.getClass()) {
			return false;
		}
		
		Pessoa other = (Pessoa) obj; //conversão
		
		if(corDoCabelo == null) {
			if(other.corDoCabelo != null) {
				return false;
			}
		} 
		else if(!corDoCabelo.equals(other.corDoCabelo)) {
			return false;
		}	
		
		if(nome == null) {
			if(other.nome != null) {
				return false;
			}
		} 
		else if(!nome.equals(other.nome)) {
			return false;
		}
		return true;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((corDoCabelo == null) ? 0 : corDoCabelo.hashCode());
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		return result;
	}
}
