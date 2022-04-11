package exercicio_hashcode_equals;

public class Exercicio {
	public static void main(String[] args) {
		Pessoa p1 = new Pessoa("Kaique", "Preto");
		Pessoa p2 = new Pessoa("José", "Preto");
		Pessoa p3 = new Pessoa("José", "Preto");
		
		System.out.println(p1.equals(p2));
		System.out.println(p3.equals(p2));
		System.out.println(p1.hashCode());
		System.out.println(p2.hashCode());
		System.out.println(p3.hashCode());
		
		

	}
}
