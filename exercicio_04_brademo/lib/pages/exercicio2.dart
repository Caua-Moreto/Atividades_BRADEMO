import 'package:flutter/material.dart';

class Exercicio2 extends StatefulWidget {
  const Exercicio2({super.key});

  @override
  State<Exercicio2> createState() => _Exercicio2State();
}

class _Exercicio2State extends State<Exercicio2> {
  int _selectedIndex = 0; // Índice da aba selecionada
  bool _showOverlay = false; // Controle do menu flutuante do FAB

  // Itens do menu flutuante do FAB
  final List<IconData> _fabMenuItems = [
    Icons.email,
    Icons.chat,
    Icons.call,
  ];

  // Páginas para as abas
  List<Widget> _tabs() {
    return [
      const Center(child: Text('Home')),
      const Center(child: Text('Search')),
      const Center(child: Text('Notifications')),
      const Center(child: Text('User')),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício 2 - FAB'),
      ),
      body: _tabs()[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _showOverlay = !_showOverlay;
          });
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: SizedBox(
          height: 70, // Altura ajustada para suportar diferentes resoluções
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                label: 'Notifications',
                icon: Icon(Icons.notifications),
              ),
              BottomNavigationBarItem(
                label: 'User',
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ),
      ),
      // Exibe o menu flutuante do FAB, se ativado
      persistentFooterButtons: _showOverlay ? _fabOptionsOverlay() : null,
    );
  }

  // Opções do menu flutuante do FAB
  List<Widget> _fabOptionsOverlay() {
    return _fabMenuItems
        .map(
          (icon) => IconButton(
            icon: Icon(icon, size: 30),
            onPressed: () {
              setState(() {
                _showOverlay = false; // Fecha o menu ao clicar
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Ação selecionada: $icon'),
                ),
              );
            },
          ),
        )
        .toList();
  }
}