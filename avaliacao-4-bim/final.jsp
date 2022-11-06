<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String nome = (String) session.getAttribute("nome");
		String prontuario = (String) session.getAttribute("prontuario");
		String periodo = (String) session.getAttribute("periodo");
		String curso = (String) session.getAttribute("curso");
		out.println("<h1>Dados</h1>");
		out.println("<h1>" + "Nome: " + nome + "</h1>");
		out.println("<h1>" + "Prontuário: " + prontuario + "</h1>");
		out.println("<h1>" + "Período: " + periodo + "</h1>");
		out.println("<h1>" + "Curso: " + curso + "</h1>");
	%>
</body>
</html>