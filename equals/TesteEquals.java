package equals;

public class TesteEquals {
	
	public static void main(String[] args) {
		
		Carro palio = new Carro("Palio");
		Carro celta = new Carro("Celta");
		Carro carro = new Carro("Palio");
		System.out.println(palio.equals(celta));
		System.out.println(palio.equals(carro));

	}

}
