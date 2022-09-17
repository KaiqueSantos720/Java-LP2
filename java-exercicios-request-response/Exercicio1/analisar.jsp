<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		ArrayList<Character> arrayVogais = new ArrayList<>(List.of('a', 'e', 'i', 'o', 'u'));
		ArrayList<Character> arrayConsoante = new ArrayList<>(List.of('b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'));
	
		public ArrayList<Integer> Palavra(String palavra){
			Integer quantidadeVogais = 0;
			Integer quantidadeConsoantes = 0;
			Integer quantidadeEspacos = 0;
			Integer total = 0;
			
			for(Integer i = 0; i < palavra.length(); i++){
				Character letraDaPalavra = palavra.charAt(i);
				if(arrayVogais.contains(letraDaPalavra)){
					quantidadeVogais++;
				}
				if(arrayConsoante.contains(letraDaPalavra)){
					quantidadeConsoantes++;
				}
				if(letraDaPalavra.equals(' ')){
					quantidadeEspacos++;
				}
				total++;
			}
			return new ArrayList<Integer>(List.of(quantidadeVogais, quantidadeConsoantes, quantidadeEspacos, total));
		}
		
	%>
	<%
		if(request.getParameter("palavra").equals("")){
			response.sendRedirect( request.getContextPath() + "/palavra.jsp");
		}else{
			out.print("<h1> Vogais: " + Palavra(request.getParameter("palavra").toLowerCase()).get(0) + "</h1>");
			out.print("<h1> Consoante: " + Palavra(request.getParameter("palavra").toLowerCase()).get(1) + "</h1>");
			out.print("<h1> Espaço: " + Palavra(request.getParameter("palavra").toLowerCase()).get(2) + "</h1>");
			out.print("<h1> Total: " + Palavra(request.getParameter("palavra").toLowerCase()).get(3) + "</h1>");
		}
	%>
</body>
</html>