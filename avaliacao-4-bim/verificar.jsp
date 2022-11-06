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
		String nome = request.getParameter("nome");
		String prontuario = request.getParameter("prontuario");
		String periodo = request.getParameter("periodo");
		String curso = request.getParameter("curso");
		
		if(nome.isBlank() || prontuario.isBlank() || periodo.isBlank() || curso == null){
			response.sendRedirect(request.getContextPath() + "/avaliacao-4-bim/formulario.jsp"); //a string não é dinamica, caso mude a localizacao dos arquivos é preciso atualizar essa linha de código
		}else{
			session.setAttribute("nome", nome);
			session.setAttribute("prontuario", prontuario);
			session.setAttribute("periodo", periodo);
			session.setAttribute("curso", curso);
		}
		
	%>
	<a href="final.jsp">Página Final</a>
</body>
</html>