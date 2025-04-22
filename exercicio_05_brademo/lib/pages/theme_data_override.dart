import 'package:flutter/material.dart';

class ThemeOverrideExample extends StatelessWidget {
  const ThemeOverrideExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Usamos o tema global aqui
      appBar: AppBar(
        title: const Text('Exercício 3 - ThemeData Sobrescrito'),
      ),
      body: Center(
        // Esse container sobrescreve o `ThemeData` global
        child: Theme(
          data: ThemeData(
            scaffoldBackgroundColor: Colors.yellow.shade100, // Fundo amarelo
            primarySwatch: Colors.yellow,
          ),
          child: Builder(
            builder: (context) {
              return Scaffold(
                // O fundo do segundo Scaffold adota o tema sobrescrito
                body: Container(),
              );
            },
          ),
        ),
      ),
    );
  }
}