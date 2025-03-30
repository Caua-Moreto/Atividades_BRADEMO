import 'animal.dart';

class Cat extends Animal {
  String som;

  // Construtor
  Cat(super.id, super.nome, super.cor, this.som);

  void exibirDetalhes() {
    print("ID: $id, Nome: $nome, Cor: $cor, Som: $som");
  }
}
