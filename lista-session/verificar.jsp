<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.*" %>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String dia = request.getParameter("dia");
		String mes = request.getParameter("mes");
		String ano = request.getParameter("ano");
		
		if(dia.isBlank() || mes.isBlank() || ano.isBlank()){
			response.sendRedirect(request.getContextPath() + "/lista-session/data.jsp");
		} else if(Integer.parseInt(mes) > 12 || Integer.parseInt(mes) < 0 || Integer.parseInt(dia) > 31 || Integer.parseInt(dia) < 0){
			throw new IllegalArgumentException("Deu Erro");
		}
		else{
			LocalDate data = LocalDate.of(Integer.parseInt(ano), Integer.parseInt(mes), Integer.parseInt(dia));
			session.setAttribute("data", data);
		}
		
	%>
	<a href="final.jsp">Página Final</a>
</body>
</html>