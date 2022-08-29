<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Random" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<%
				Random aleatorio = new Random();
				for(int i = 0 ; i < 10; i++){
					out.print("<td>" + aleatorio.nextInt(101) + "</td>");
				}
				
			%>
		</tr>
	</table>
</body>
</html>