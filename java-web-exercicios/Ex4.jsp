<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		public ArrayList<String> tabuada(Integer number){
			ArrayList<String> tabuada = new ArrayList<String>();
			for(int i = 1; i < 11; i++){
				String tab = number + " x " + i + " = " + number * i;
				tabuada.add(tab);
			}
			return tabuada;
			
		}

	%>
	
	<table border="3">
			<tr>
				<%
					for(String tabuada : tabuada(10)){
						out.print("<td>" + tabuada + "</td>");
					}
				%>
			</tr>
	</table>
	
	<table border="3">
			<tr>
				<%
					for(String tabuada : tabuada(12)){
						out.print("<td>" + tabuada + "</td>");
					}
				%>
			</tr>
	</table>
	
	<table border="3">
			<tr>
				<%
					for(String tabuada : tabuada(14)){
						out.print("<td>" + tabuada + "</td>");
					}
				%>
			</tr>
	</table>
	
	<table border="3">
			<tr>
				<%
					for(String tabuada : tabuada(16)){
						out.print("<td>" + tabuada + "</td>");
					}
				%>
			</tr>
	</table>
</body>
</html>