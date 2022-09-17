<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		public Integer aleatorio(){
			return new Random().nextInt(1, 7);
		}
	%>
	
	<%
		String aleatorio = Integer.toString(aleatorio());
		
		if(request.getParameter("numeros").equals("")){
			response.sendRedirect( request.getContextPath() + "/dado.jsp");
		}else{
			if(request.getParameter("numeros").equals(aleatorio)){
				out.print("<h1> Parabéns, você ganhou! </h1>");
			}else{
				out.print("<h1> Você perdeu! </h1>");
			}
			
		}
	%>
</body>
</html>