<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h3>Envio de Dados dos pordutos.</h3>
	<hr />
	<p />

	<form action="controle">
		<fieldset style="width: 15%;">
			<table>
				<tr>
					<td>Nome:</td>
					<td><input type="Text" name="nome" size="25" /></td>
				</tr>
				<tr>
					<td>Fabricante:</td>
					<td><select name="fabric">
							<option>Hp</option>
							<option>Dell</option>
							<option>Sony</option>
							<option>Apple</option>
					</select></td>
				</tr>

				<tr>
					<td>Quantidade:</td>
					<td><input type="Text" name="qtd" size="10" /></td>
				</tr>
				<tr>
					<td>Preço:</td>
					<td><input type="Text" name="preco" size="10" /></td>
				</tr>

				<tr>
					<td>Descrição:</td>
					<td><textarea rows="4" name="descricao" cols="25"></textarea></td>
				</tr>
				<tr><td colspan="2"><br><hr/></td></tr>
				<tr>
					<td><input type="submit" value="Enviar" /><td><input type="reset" value="Limpar" /></td>
				</tr>

			</table>
		</fieldset>
	</form>


</body>
</html>