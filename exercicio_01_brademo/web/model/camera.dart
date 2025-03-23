class Camera {
  int _id;
  String _marca;
  String _cor;
  double _preco;

  // Construtor
  Camera(this._id, this._marca, this._cor, this._preco);

  // Getters & Setters
  int get id => _id;
  String get marca => _marca;
  String get cor => _cor;
  double get preco => _preco;

  set id(int novoId) => _id = novoId;
  set marca(String novaMarca) => _marca = novaMarca;
  set cor(String novaCor) => _cor = novaCor;
  set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    } else {
      print("O preço deve ser maior que zero.");
    }
  }

  void exibirDetalhes() {
    print("ID: $_id, Marca: $_marca, Cor: $_cor, Preço: R\$${_preco.toStringAsFixed(2)}"); 
    // o toStringAsFixed serve para formatar nºs decimais
  }
}
