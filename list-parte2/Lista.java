import java.util.*;

public class Lista<T> {
	private List<T> array;
		
	public Lista() {
		array = new ArrayList<T>();
	}

	//get do array
	public List<T> getList(){
		return array;
	}
	
	//método que adiciona elemento no inicio da lista
	public void add(T elemento) {
		array.add(elemento);
	}

	//método que adiciona o elemento com o index
	public void addIndex(int index, T elemento){
		array.add(index, elemento);
	}

	//método para adicionar elemento pelo inicio
	public void addInicio(T elemento){
		array.add(0, elemento);
	}
	
	//método para deletar o ultimo elemento
	public void delete(T elemento) {
		array.remove(elemento);
	}

	//método para deletar o elemento passando index
	public void deleteIndex(int index) {
		array.remove(index);
	}

	//método para deletar o primeiro elemento
	public void deleteInicio(){
		array.remove(0);
	}

	//método para retornar o ultimo elemento da lista
	public T buscarFim() {
		return array.get(array.size() - 1);
	}
	
	//método para retornar o primeiro elemento da lista
	public T buscarInicio() {
		return array.get(0);
	}

	//método para buscar o elemento passando o index.
	public T buscar(int index) {
		return array.get(index);
	}

	//método para exibir todos os elementos dentro da lista
	public void exibirTodos(Map<Integer, String> teste) {
		Iterator<Integer> it = teste.keySet().iterator();
		while(it.hasNext()) {
			System.out.println(teste.get(it.next()));
		}
	}

	//método que retorna o tamanho da lista
	public int tamanho(){
		return array.size();
	}

	//método para retornar o valor do meio da lista
	public T retornarMeio(){
		if(array.size() % 2 == 0) { //if para ver se o número é par
			throw new IllegalArgumentException("Vetor com tamanho par, portanto, não há meio");
		}
		return array.get((int) ((array.size()/2) + 0.5)); //retorna o meio da lista
	}

	//método para exibir todos os elementos da lista
	public void exibir(){
		for(T elemento : array){
			System.out.println(elemento);
		}
	}
}
