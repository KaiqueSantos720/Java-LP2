package hashcode;

public class TesteHashcode {
	
	public static void main(String[] args) {
		Carro c1 = new Carro("Ferrari");
		Carro c2 = new Carro("Lamborghini");
		Carro c3 = new Carro("Lamborghini");
		
		System.out.println("Hashcode c1: " + c1.hashCode());
		System.out.println("Hashcode c2: " + c2.hashCode());
		System.out.println("Hashcode c3: " + c3.hashCode());
	}
	
	
}
