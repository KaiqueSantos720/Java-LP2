<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("<h1>" + LocalDate.now().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")) + "</h1>");
	%>
</body>
</html>