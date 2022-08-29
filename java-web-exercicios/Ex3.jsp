<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		public ArrayList<LocalDate> datasAnteriores(){
			LocalDate data = LocalDate.now();
			ArrayList<LocalDate> datas = new ArrayList<LocalDate>();
			for(Integer i = 1; i <= 7; i++){
				datas.add(data.minusDays(i));
			}
			return datas;
		}
		%>
		
		<table border="3">
			<tr>
				<%
					for(LocalDate data : datasAnteriores()){
						out.print("<td>" + data.format(formatter) + "</td>");
					}
				%>
			</tr>
		</table>
		
		
	%>
</body>
</html>