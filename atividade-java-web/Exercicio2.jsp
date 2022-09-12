<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exercício 2</title>
</head>
<body>
	<%!
		public Integer somaNumeroMaiorMenor(ArrayList<Integer> arrayListInteger){
			if(arrayListInteger.size() == 0){
				return 0;
			}
			else if(arrayListInteger.size() == 1){
				return arrayListInteger.get(0);
			}
			else{
				Integer maiorValorArray = arrayListInteger.get(0);
				Integer menorValorArray = arrayListInteger.get(0);
				
				for(Integer numero : arrayListInteger){
					if(numero > maiorValorArray){
						maiorValorArray = numero;
					}
					if(numero < menorValorArray){
						menorValorArray = numero;
					}
				}
				
				return maiorValorArray + menorValorArray;
			}
		}
	%>
	
	<%
		out.print("<h1>" + "A soma do maior e menor número do vetor é: " + somaNumeroMaiorMenor(new ArrayList<Integer>(List.of(15, 5, 9))) + "</h1>");
	%>
</body>
</html>