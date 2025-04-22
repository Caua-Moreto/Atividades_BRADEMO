import 'package:flutter/material.dart';
//ex1
import '/pages/gridview.dart';
//ex2
import '/pages/theme_data.dart';
//ex3
import 'pages/theme_data_override.dart';
//ex4
import 'pages/layout_responsivo.dart';
//ex5
import 'pages/restricoes_layout.dart';
//ex6
import 'pages/layout_tutorial.dart';

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
      theme: ThemeData(
        // Configuração do tema global
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blue.shade50, // Fundo azul claro global
      ),
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
        title: const Text('Exercícios Flutter'),
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
                'Exercício 1 - GridView',
                const Gridview(),
              ),
              _exerciseButton(
                context,
                'Exercício 2 - ThemeData Global',
                const ThemeDataExample(),
              ),
              _exerciseButton(
                context,
                'Exercício 3 - ThemeData Sobrescrito',
                const ThemeOverrideExample(),
              ),
              _exerciseButton(
                context,
                'Exercício 4 - Layout Responsivo',
                const ResponsiveLayoutExample(),
              ),
              _exerciseButton(
                context,
                'Exercício 5 - Restrições de Layout',
                const LayoutConstraintsExample(),
              ),
              _exerciseButton(
                context,
                'Exercício 6 - Tutorial de Layout',
                const LayoutTutorial(),
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