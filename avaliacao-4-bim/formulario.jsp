<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="verificar.jsp" method="GET">
		<table>
			<tr>
				<td>Nome: </td>
				<td><input type="text" name="nome"></td>
			</tr>
			<tr>
				<td>Prontuário: </td>
				<td><input type="text" name="prontuario"></td>
			</tr>
			<tr>
				<td>Período: </td>
				<td>
					<select name="periodo">
						<option value="">Selecionar</option>
						<option value="matutino">Matutino</option>
						<option value="vespertino">Vespertino</option>
						<option value="noturno">Noturno</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Curso Técnico: </td>
			</tr>
			<tr>
				<td>
					<input type="radio" value="edificacoes" id="edificacoes"  name="curso">
					<label for="edificacoes">Edificações</label>
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" value="informatica" id="informatica" name="curso">
					<label for="informatica">Informática</label>
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" value="mecanica" id="mecanica" name="curso">
					<label for="mecanica">Mecânica</label>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="Enviar"> </td>
			</tr>
		</table>
	</form>
</body>
</html>