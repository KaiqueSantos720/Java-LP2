<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

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
				for(int i = 0 ; i < 101; i++){
					if(i % 3 == 0){
						out.print("<td>" + i + "</td>");
					}
				}
				
			%>
		</tr>
	</table>
</body>
</html>