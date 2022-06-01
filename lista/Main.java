package lista;
import java.util.List;
import java.util.ArrayList;

public class Main {

	public static void main(String[] args) {
		//Caio Ferrari - Daiki Sakuragi - Kaique Santos
		
		Lista a1 = new Lista();
		
		a1.add("Química");
		a1.add("Física");
		a1.add(23424);
		a1.add(new Lista());
		a1.add("fbhdfh");
		a1.add("hjfjf");
		
		System.out.println(a1);
		System.out.println(a1.buscarMeio());
		System.out.println(a1.buscarInicio());
		System.out.println(a1.buscarFim());
		

	}
	

}
