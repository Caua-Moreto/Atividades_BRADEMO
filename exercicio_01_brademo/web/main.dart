import 'model/laptop.dart';
import 'model/house.dart';
import 'model/cat.dart';
import 'model/camera.dart';
import 'package:web/web.dart' as web;

void main() {
  // Laptops
  Laptop laptop1 = Laptop(1, "Dell XPS", 16);
  Laptop laptop2 = Laptop(2, "MacBook Pro", 32);
  Laptop laptop3 = Laptop(3, "Lenovo ThinkPad", 8);

  print("\nLaptops:");
  laptop1.exibirDetalhes();
  laptop2.exibirDetalhes();
  laptop3.exibirDetalhes();

  // Casas
  List<House> casas = [
    House(1, "Casa Verde", 250000),
    House(2, "Casa Azul", 180000),
    House(3, "Casa Branca", 320000)
  ];

  print("\nCasas:");
  for (var casa in casas) {
    casa.exibirDetalhes();
  }

  // Gato
  Cat gato = Cat(1, "Mimi", "Branco", "Miau");

  print("\nGato:");
  gato.exibirDetalhes();

  // Câmeras
  Camera cam1 = Camera(1, "Canon", "Preto", 4500.00);
  Camera cam2 = Camera(2, "Nikon", "Prata", 3800.50);
  Camera cam3 = Camera(3, "Sony", "Preto", 5200.99);

  print("\nCâmeras:");
  cam1.exibirDetalhes();
  cam2.exibirDetalhes();
  cam3.exibirDetalhes();

  final now = DateTime.now();
  final element = web.document.querySelector('#output') as web.HTMLDivElement;
  element.text =
      'Agora é ${now.hour}:${now.minute}. '
      'Os resultados irão aparecer no console, na inspeção de elementos!';

}