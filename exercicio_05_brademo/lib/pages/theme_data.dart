import 'package:flutter/material.dart';

class ThemeDataExample extends StatelessWidget {
  const ThemeDataExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício 2 - ThemeData (Global)'),
      ),
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.blue, // Quadrado azul
            border: Border.all(
              color: Colors.black, // Contorno preto
              width: 4,
            ),
          ),
          child: const Center(
            child: Text(
              'Tudo azul',
              style: TextStyle(
                color: Colors.white, // Texto branco destacado
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}