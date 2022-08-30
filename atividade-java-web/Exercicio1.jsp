<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exercício 1</title>
</head>
<body>
	<%!
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		DateTimeFormatter formatterWithoutMonth = DateTimeFormatter.ofPattern("dd/MM");
		
		public ArrayList<LocalDate> datasPosteriores(){
			LocalDate dataHoje = LocalDate.now();
			ArrayList<LocalDate> datas = new ArrayList<LocalDate>();
			
			for(Integer i = 1; i <= 45; i++){
				datas.add(dataHoje.plusDays(i));
			}
			return datas;
		}
	%>
		
	<table border="3">
		<tr>
			<%
				for(LocalDate data : datasPosteriores()){
					if(data.getDayOfMonth() % 2 == 0){
						out.print("<td>" + data.format(formatter) + "</td>");
					}
				}
			%>
		</tr>
	</table>
	
	<table border="3">
		<tr>
			<%
				for(LocalDate data : datasPosteriores()){
					if(data.getDayOfMonth() % 2 != 0){
						out.print("<td>" + data.format(formatterWithoutMonth) + "</td>");
					}
				}
			%>
		</tr>
	</table>

</body>
</html>