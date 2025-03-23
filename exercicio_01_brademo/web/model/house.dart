class House {
  int id;
  String nome;
  double preco;

  House(this.id, this.nome, this.preco);

  void exibirDetalhes() {
    print("ID: $id, Nome: $nome, Preço: R\$${preco.toStringAsFixed(2)}");
  }
}
