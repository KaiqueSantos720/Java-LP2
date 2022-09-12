<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Final</title>
</head>
<body>
	<%
		ArrayList<String> dados = new ArrayList<String>(List.of(request.getParameter("nome"), 
				request.getParameter("idade"), 
				request.getParameter("email"), 
				request.getParameter("endereco"), 
				request.getParameter("bairro"), 
				request.getParameter("cidade"), 
				request.getParameter("cep")));
		/*String nome = request.getParameter("nome");
		String idade = request.getParameter("idade");
		String email = request.getParameter("email");
		String endereco = request.getParameter("endereco");
		String bairro = request.getParameter("bairro");
		String cidade = request.getParameter("cidade");
		String cep = request.getParameter("cep");
		
		if(nome.isEmpty() || idade.isEmpty() || email.isEmpty() || endereco.isEmpty() || bairro.isEmpty() || cidade.isEmpty() || cep.isEmpty()){
			response.sendRedirect( request.getContextPath() + "/Formulario.jsp");
		}else{
			out.print("<h1> Parabéns, você acessou o servidor. </h1>");
		}*/
		
		if(dados.contains("")){
			response.sendRedirect( request.getContextPath() + "/Formulario.jsp");
		}else{
			out.print("<h1> Parabéns, você acessou o servidor. </h1>");
		}
	%>
</body>
</html>