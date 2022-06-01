import java.util.*;

public class App {
    public static void main(String[] args) throws Exception {
        	/* 
            Caio Ferrari - SP3044891
            Daiki Sakuragi - SP3045102
            Kaique Santos - SP3044203
            José Carlos - SP3044939
            Victor Toni Paim - SP3044971
            */

        //Cria a lista
        Lista<String> lista = new Lista<String>();

        //parte do map
        Map<Integer, String> teste = new HashMap<>();

        //Adiciona elementos à lista teste.
        teste.put(1, "Real Madrid");
        teste.put(2, "Liverpool");
        teste.put(3, "Bayern");
        teste.put(4, "Milan");

        lista.exibirTodos(teste);

        //Adiciona elementos à lista 
        lista.add("Chelsea");
        lista.add("Manchester United");
        lista.add("Manchester City");
        lista.add("Tottenham");
        lista.add("Internazionale");
        lista.add("Leipzig");
        
        Collections.sort(lista.getList()); //Ordena em ordem alfabética 

        lista.exibir();

        println("Buscar por index: " + lista.buscar(1)); //Busca por index dentro da lista

        lista.delete("Vla"); //Deleta o elemento por nome.

        println("Buscar o ultimo: " + lista.buscarFim()); //Retorna o ultimo valor da lista

        lista.deleteIndex(0); //Deleta elemento passando o index.

        println("Buscar o do inicio: " + lista.buscarInicio()); //Retorna o elemento inicial da lista.

        println("Tamanho: " + lista.tamanho()); //Retorna o tamanho da lista

        lista.exibir(); //Exibe a lista
    
        lista.addInicio("salve"); //Adiciona um elemento no início da Lista

        lista.exibir();
        
    }

    //Substitui o System.out.println por apenas println
	public static void println(String input) {
		System.out.println(input);
    }
}
