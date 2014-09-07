JSP_Servlet
===========

Aplicação Servlet Utilizando Método GET

Uma aplicação em Java na web requer a existência de um servidor de aplicação para ser executado. Dentre os principais estão:

•	Tomcat(Apache)
•	GlassFish(Sun/Oracle)
•	JBoss(Redhat)
•	WebSphere(IBM)


Método para de Envio GEt Através da Função doGEt

```Java
@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// Resgate de parametros do protocólo HTTP.
		// request.getParameter() - resgata como String.
		String nome = request.getParameter("nome");
		String fabric = request.getParameter("fabric");
		Integer qtd = Integer.parseInt(request.getParameter("qtd"));
		Double preco = Double.parseDouble(request.getParameter("preco"));
		String descricao = request.getParameter("descricao");

		Produto p = new Produto(nome, fabric, qtd, preco, descricao);
		
		// Criar um atributo, em request, chamado produto que tem p como conteudo.
		request.setAttribute("produto", p);
		
		// Redirecionamento para resgate.jsp levando o conteudo do request.
		request.getRequestDispatcher("resgate.jsp").forward(request, response);
		
		// response.getWriter().print(p);
	}
	
}

```


![](http://marcosjunior.hol.es/git/img/servlet_1.0_tela.png)

Método para exibição em navegador

```Html
<body>

	<h3>Resgate dos dados do produto.</h3>
	<hr />
	<p />

	<!-- O uso de código java dentro de um arquivo JSP é 
	feito usando Scriptlets. -->
	<%
		
		// request.getAttribute("produto") retorna um object.
		Produto prod = (Produto) request.getAttribute("produto");

		out.print("<b>Nome: " + prod.getNome());
		out.print("<br />Fabricante: " + prod.getFabricante());
		out.print("<br />Quantidade: " + prod.getQtd());
		out.print("<br />Preço: " + prod.getPreco());
		out.print("<br />Descrição: " + prod.getDescricao());
		
	%>
	
	<p />
	<a href="envio.jsp">Pagina de Envio.</a>

</body>

```

