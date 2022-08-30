<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exercício 2</title>
</head>
<body>
	<%!
		public Integer Valores(ArrayList<Integer> array){
			if(array.size() == 0){
				return 0;
			}
			else if(array.size() == 1){
				return array.get(0);
			}
			else{
				Integer maiorValor = array.get(0);
				Integer menorValor = array.get(0);
				
				for(Integer numero : array){
					if(numero > maiorValor){
						maiorValor = numero;
					}
					if(numero < menorValor){
						menorValor = numero;
					}
				}
				
				return maiorValor + menorValor;
			}
		}
	%>
	
	<%
		out.print("<h1>" + Valores(new ArrayList<Integer>(Arrays.asList(-10, 5, 9, 4, 2, 20, 8, 13))) + "</h1>");
	%>
</body>
</html>