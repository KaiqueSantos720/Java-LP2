package lista;

import java.util.ArrayList;

public class Lista {
	private ArrayList<Object> array;
	
	public Lista() {
		array = new ArrayList<Object>();
	}
	
	public Object buscarMeio() {
		return (array.size() % 2 != 0) ? 
				array.get((int) ((array.size()/2) + 0.5)) : 
				array.get((int) ((array.size()/2)));
	}
	
	public void add(Object elemento) {
		array.add(elemento);
	}
	
	public void delete(Object elemento) {
		array.remove(elemento);
	}
	
	public Object buscarFim() {
		return array.get(array.size() - 1);
	}
	
	public Object buscarInicio() {
		return array.get(0);
	}
	
}
