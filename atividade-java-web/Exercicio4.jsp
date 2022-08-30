<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exercício 4</title>
</head>
<body>
	<%!
		public Integer Inverter(Integer numero){
			Boolean negativo = false;
			
			if(numero < 0){
				numero *= -1;
				negativo = true;
			}
			
			Integer numeroInverso = 0;
			while(numero > 0){
				numeroInverso *= 10;
				numeroInverso += (numero % 10);
				numero /= 10;
			}
			
			if(negativo){
				return numeroInverso * -1;
			}
			else{
				return numeroInverso;
			}
		}
	%>
	
	<%
		out.print("<h1>" + Inverter(-1024) + "</h1>");
	%>
</body>
</html>