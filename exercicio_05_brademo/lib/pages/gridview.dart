import 'package:flutter/material.dart';
import '../models/lugar.dart';

class Gridview extends StatelessWidget {
  const Gridview({super.key});

  // Lista de lugares usando objetos `Lugar`
  final List<Lugar> lugares = const [
    Lugar(
      titulo: "Norway",
      subtitulo: "Points to stop",
      imagem: "assets/images/A_cruise_with_34_stops_in_just_7_days_In_Norway_its_a_must-do.jpg",
    ),
    Lugar(
      titulo: "Switzerland",
      subtitulo: "A Dinner in Lauterbrunnen",
      imagem: "assets/images/Dinner_in_Lauterbrunnen_Switzerland_Imgur.jpg",
    ),
    Lugar(
      titulo: "Norway",
      subtitulo: "Beautiful...",
      imagem: "assets/images/Norway.jpg",
    ),
    Lugar(
      titulo: "Switzerland",
      subtitulo: "Beautiful too...",
      imagem: "assets/images/Switzerland.jpg",
    ),
    Lugar(
      titulo: "Norway",
      subtitulo: "Lofoten Islands",
      imagem: "assets/images/Polar_wonders_Lofoten_Islands.jpg",
    ),
    Lugar(
      titulo: "Switzerland",
      subtitulo: "A sky high in Interlaken",
      imagem: "assets/images/Sky_High_in_Interlaken.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício 1 - GridView'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0, // espaçamento no meio das colunas
            mainAxisSpacing: 8.0, // espaçamento entre as imagens da mesma coluna
            childAspectRatio: 1 / 2, // define o 'tamanho' das imagens 
            // por padrão é 2/2, inclusive no template passado, entretanto 1/2 ficou mais agradável
          ),
          itemCount: lugares.length,
          itemBuilder: (context, index) {
            final lugar = lugares[index];
            return Stack(
              children: [
                // Imagem do lugar
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(lugar.imagem),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // Textos nas imagens
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    child: Text(
                      "${lugar.titulo}\n${lugar.subtitulo}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}