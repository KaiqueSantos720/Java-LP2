<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exercício 4</title>
</head>
<body>
	<%!
		public ArrayList<String> multiplicacoes(Integer numeroTabuada){
			ArrayList<String> multiplicacao = new ArrayList<String>();
			for(int i = 1; i < 11; i++){
				multiplicacao.add(numeroTabuada + " X " + i + " = " + numeroTabuada * i);
			}
			return multiplicacao;
			
		}
	%>
	
	<h1>Tabuada do 8</h1>
	<table border="3">
			<tr>
				<%
					for(String multiplicacao : multiplicacoes(8)){
						out.print("<td>" + multiplicacao + "</td>");
					}
				%>
			</tr>
	</table>
	
	<h1>Tabuada do 10</h1>
	<table border="3">
			<tr>
				<%
					for(String multiplicacao : multiplicacoes(10)){
						out.print("<td>" + multiplicacao + "</td>");
					}
				%>
			</tr>
	</table>
	
	<h1>Tabuada do 12</h1>
	<table border="3">
			<tr>
				<%
					for(String multiplicacao : multiplicacoes(12)){
						out.print("<td>" + multiplicacao + "</td>");
					}
				%>
			</tr>
	</table>
</body>
</html>