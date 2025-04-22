import 'package:flutter/material.dart';

//ex1
import 'pages/exercicio1.dart';
//ex2
import 'pages/exercicio2.dart';
//ex3
import 'pages/exercicio3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercícios Flutter',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercícios Flutter - Slide 4'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Selecione um exercício:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              _exerciseButton(
                context,
                'Exercício 1 - Form',
                const Exercicio1(),
              ),
              _exerciseButton(
                context,
                'Exercício 2 - FAB',
                const Exercicio2(),
              ),
              _exerciseButton(
                context,
                'Exercício 3 - Lista de Tarefas',
                const Exercicio3(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _exerciseButton(BuildContext context, String title, Widget destination) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => destination),
            );
          },
          child: Text(title, style: const TextStyle(fontSize: 16)),
        ),
      ),
    );
  }
}