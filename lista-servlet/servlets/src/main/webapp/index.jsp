<%@ page isELIgnored="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulário</title>
</head>
<body>
	<form action="Cadastro" method="POST">
		<table>
			<tr>
				<td>Nome: </td>
				<td><input type="text" name="nome"></td>
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
				<td>Cep: </td>
				<td><input type="text" name="cep"></td>
			</tr>
			<tr>
				<td>Telefone: </td>
				<td><input type="text" name="telefone"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Cadastrar"> </td>
			</tr>
		</table>
	</form>
</body>
</html>