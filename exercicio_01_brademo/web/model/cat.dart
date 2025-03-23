import 'animal.dart';

class Cat extends Animal {
  String som;

  Cat(int id, String nome, String cor, this.som) : super(id, nome, cor);

  void exibirDetalhes() {
    print("ID: $id, Nome: $nome, Cor: $cor, Som: $som");
  }
}
