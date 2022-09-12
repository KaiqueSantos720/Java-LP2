<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exercício 3</title>
</head>
<body>
	<%!
		public Integer Vogais(String palavraAnalisada){
			ArrayList<Character> arrayVogais = new ArrayList<>(List.of('a', 'e', 'i', 'o', 'u'));
			Integer quantidadeVogais = 0;
			palavraAnalisada.toLowerCase();
			
			for(Integer i = 0; i < palavraAnalisada.length(); i++){
				Character letraDaPalavra = palavraAnalisada.charAt(i);
				if(arrayVogais.contains(letraDaPalavra)){
					quantidadeVogais++;
				}		
			}
			return quantidadeVogais;
		}
	
		public Integer Consoantes(String palavraAnalisada){
			ArrayList<Character> arrayConsoante = new ArrayList<>(List.of('b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'));
			Integer quantidadeConsoantes = 0;
			
			for(Integer i = 0; i < palavraAnalisada.length(); i++){
				Character letraDaPalavra = palavraAnalisada.charAt(i);
				if(arrayConsoante.contains(letraDaPalavra)){
					quantidadeConsoantes++;
				}		
			}
			return quantidadeConsoantes;
		}
	%>
	
	<%
		out.print("<h1>" + "Quantidade de Vogais: " + Vogais("Bayern de Munique".toLowerCase()) + "</h1>");
		out.print("<h1>" + "Quantidade de Consoantes: " + Consoantes("Bayern de Munique".toLowerCase()) + "</h1>");
	%>
</body>
</html>