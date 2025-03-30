// Importação do Flutter
import 'package:flutter/material.dart';
import 'pages/primeiro_exercicio.dart';
import 'pages/segundo_exercicio.dart';

// Widget principal
void main() {
  runApp(const MyApp());
}

// Aplicação principal
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SegundoExercicio(), // Mude de PrimeiroExercicio() para/ou SegundoExercicio() para alterar
    );
  }
}
