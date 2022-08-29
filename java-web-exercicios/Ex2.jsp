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
		public ArrayList<Integer> geraNumero(){
			ArrayList<Integer> array = new ArrayList<Integer>();
			for(int i = 1; i <= 10000; i++){
				if(i % 5 == 0){
					array.add(i);
				}
			}
			return array;
		}
	%>
	
	<table border='3'>
		<tr>
			<%
				for(Integer numero : geraNumero()){
					out.print("<td>" + numero + "</td>");
				}
			%>
		</tr>
	</table>
</body>
</html>