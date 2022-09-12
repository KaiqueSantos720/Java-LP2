<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulário</title>
</head>
<body>
	<form action="Final.jsp" method="POST">
		<table>
			<tr>
				<td>Nome: </td>
				<td><input type="text" name="nome"></td>
			</tr>
			<tr>
				<td>Idade: </td>
				<td><input type="text" name="idade"></td>
			</tr>
			<tr>
				<td>Email: </td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>Endereço: </td>
				<td><input type="text" name="endereco"></td>
			</tr>
			<tr>
				<td>Bairro: </td>
				<td><input type="text" name="bairro"></td>
			</tr>
			<tr>
				<td>Cidade: </td>
				<td><input type="text" name="cidade"></td>
			</tr>
			<tr>
				<td>CEP: </td>
				<td><input type="text" name="cep"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Enviar"> </td>
			</tr>
		</table>
	</form>
</body>
</html>