<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exercício 3</title>
</head>
<body>
	<%!
		public Integer Vogais(String palavra){
			Integer vogais = 0;
			palavra.toLowerCase();
			
			for(Integer i = 0; i < palavra.length(); i++){
				Character letra = palavra.charAt(i);
				if(letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u'){
					vogais++;
				}		
			}
			return vogais;
		}
	
		public Integer Consoantes(String palavra){
			Integer consoantes = 0;
			palavra.toLowerCase();
			
			for(Integer i = 0; i < palavra.length(); i++){
				Character letra = palavra.charAt(i);
				if(letra != 'a' && letra != 'e' && letra != 'i' && letra != 'o' && letra != 'u' && letra != ' '){
					consoantes++;
				}		
			}
			return consoantes;
		}
	%>
	
	<%
		out.print("<h1>" + Vogais("RasenBallsport Leipzig") + "</h1>");
		out.print("<h1>" + Consoantes("RasenBallsport Leipzig") + "</h1>");
	%>
</body>
</html>