<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado</title>
</head>
<body>
	<%!
		public Integer aleatorio(){
			return new Random().nextInt(1000);
		}
	%>
	<% 
		String nome = request.getParameter("nome");
		Integer aleatorio = aleatorio();	
	
		if(aleatorio % 2 == 0 ){
			out.print("<h1>" + nome + " Vencedor, seu número é: " + aleatorio + "</h1>");
		}else{
			out.print("<h1>" + nome + " Perdeu, seu número é: " + aleatorio +  "</h1>");
		}
	%>
</body>
</html>