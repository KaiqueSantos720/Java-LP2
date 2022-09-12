<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exercício 1</title>
</head>
<body>
	<%!
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		DateTimeFormatter formatterWithoutMonth = DateTimeFormatter.ofPattern("dd/MM");
		
		public ArrayList<ArrayList<LocalDate>> datas(){
			LocalDate dataHoje = LocalDate.now();
			ArrayList<ArrayList<LocalDate>> arrays = new ArrayList<ArrayList<LocalDate>>();
			ArrayList<LocalDate> datasPosteriores = new ArrayList<LocalDate>();
			ArrayList<LocalDate> datasAnteriores = new ArrayList<LocalDate>();
			
			for(Integer i = 1; i <= 45; i++){
				datasPosteriores.add(dataHoje.plusDays(i));
				datasAnteriores.add(dataHoje.minusDays(i));
			}
			arrays.add(datasPosteriores);
			arrays.add(datasAnteriores);
			return arrays;
		}
		
	%>

	<h1>Tabela das Datas Pares Posteriores</h1>
	<table border="3">
		<tr>
			<%
				for(Integer i = 0; i < datas().size(); i++){
					for(LocalDate datas : datas().get(i)){
						if(i == 0){
							if(datas.getDayOfMonth() % 2 == 0){
								out.print("<td>" + datas.format(formatter) + "</td>");
							}
						}
					}
				}
			%>
		</tr>
	</table>
	
	<h1>Tabela das Datas Ímpares Anteriores</h1>
	<table border="3">
		<tr>
			<%
				for(Integer i = 0; i < datas().size(); i++){
					for(LocalDate datas : datas().get(i)){
						if(i == 1){
							if(datas.getDayOfMonth() % 2 != 0){
								out.print("<td>" + datas.format(formatterWithoutMonth) + "</td>");
							}
						}
					}
				}
			%>
		</tr>
	</table>
</body>
</html>