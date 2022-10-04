<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		LocalDate data = (LocalDate) session.getAttribute("data");
		out.println("<h1>Dados</h1>");
		out.print("<h1>" + data + "</h1>");
	%>
</body>
</html>