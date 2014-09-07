package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import entidade.Produto;

public class ControleProduto extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String nome = request.getParameter("nome");
		String fabric = request.getParameter("fabric");
		Integer qtd = Integer.parseInt(request.getParameter("qtd"));
		Double preco = Double.parseDouble(request.getParameter("preco"));
		String descricao = request.getParameter("descricao");
		
		Produto p = new Produto(nome, fabric, qtd, preco, descricao);
		
		request.setAttribute("produto", p);
		request.getRequestDispatcher("resgate.jsp").forward(request, response);
		
	}
	
	

}
