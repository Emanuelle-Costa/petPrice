class Produto{
  String imagem;
  String nome;
  double preco;
  String vendedor;
  String endereco;

 Produto(this.imagem, this.nome, this.preco, this.vendedor, this.endereco);

  @override
  String toString() {
    return 'Produto{nome: $nome, preco: $preco, vendedor: $vendedor, endereco: $endereco}';
  }
}