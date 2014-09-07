<%@page import="entidade.Produto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resgate</title>
</head>
<body>

	<h3>Resgate dos Dados do Produto.</h3>
	<hr />
	<p />

	<%
		Produto prod = (Produto) request.getAttribute("produto");
		out.print("<p/><b>Nome: " + prod.getNome());
		out.print("<p/><b>Fabricante: " + prod.getFabricante());
		out.print("<p/><b>Quantidade: " + prod.getQtd());
		out.print("<p/><b>Preço: " + prod.getPreco());
		out.print("<p/><b>Descrição: " + prod.getDescricao());
	%>
	<hr />
	<br>
	
	<p />
	<a href="envio.jsp"> <-- Página de Envio.</a>

</body>
</html>