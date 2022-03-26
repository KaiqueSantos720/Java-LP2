package equals;

public class Carro {
	
	private String modelo;
	
	public Carro(String modelo) {
		this.modelo = modelo;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	@Override
	public boolean equals(Object obj) {
		//Verifica se est� sendo comparado objetos iguais
		if (this == obj)
			return true;
		
		//Verifica se um objeto n�o-nulo est� sendo comparado com um objeto nulo 
		if (obj == null)
			return false;
		
		//Verifica se as classes dos objetos s�o iguais
		if (getClass() != obj.getClass())
			return false;
		
		//Se nenhum dos ifs anteriores forem chamados, o argumento obj � convertido na classe correspondente
		Carro other = (Carro) obj;
		
		//Comparar os atributos
		//Verifica se os atributos s�o nulos
		if (modelo == null) {
			if (other.modelo != null)
				return false;
		} 
		//Compara os valores dos atributos
		else if (!modelo.equals(other.modelo))
			return false;
		
		return true;
	}
	

}
