package entidade;

public class Produto {
	
	private String nome;
	private String fabricante;
	private Integer qtd;
	private Double preco;
	private String descricao;
	
	public Produto() {
		// TODO Auto-generated constructor stub
	}

	public Produto(String nome, String fabricante, Integer qtd, Double preco,
			String descricao) {
		super();
		this.nome = nome;
		this.fabricante = fabricante;
		this.qtd = qtd;
		this.preco = preco;
		this.descricao = descricao;
	}

	@Override
	public String toString() {
		return "Produto [nome=" + nome + ", fabricante=" + fabricante
				+ ", qtd=" + qtd + ", preco=" + preco + ", descricao="
				+ descricao + "]";
	}

	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getFabricante() {
		return fabricante;
	}
	public void setFabricante(String fabricante) {
		this.fabricante = fabricante;
	}
	public Integer getQtd() {
		return qtd;
	}
	public void setQtd(Integer qtd) {
		this.qtd = qtd;
	}
	public Double getPreco() {
		return preco;
	}
	public void setPreco(Double preco) {
		this.preco = preco;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}	
	

}
