<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Random"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
	<%!
		public Integer numeroAleatorio(){
			Random random = new Random();
			Integer numero = random.nextInt(1001);
			return numero;
		}
	%>
	<h1>Número aleatório: <%= numeroAleatorio() %></h1>
</body>
</html>