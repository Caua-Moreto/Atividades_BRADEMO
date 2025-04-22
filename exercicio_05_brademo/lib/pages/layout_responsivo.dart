import 'package:flutter/material.dart';

class ResponsiveLayoutExample extends StatelessWidget {
  const ResponsiveLayoutExample({Key? key}) : super(key: key);

  final List<String> languages = const [
    'Dart',
    'JavaScript',
    'PHP',
    'C++',
  ];

  @override
  Widget build(BuildContext context) {
    // Verifica se o dispositivo está em retrato ou paisagem
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Layouts'),
      ),
      // Define o tema local usando ThemeData
      body: Theme(
        // Sobrescreve o tema global
        data: ThemeData(
          brightness: Brightness.dark, // pra mostrar que o tema é dark
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.white, fontSize: 24),
            bodyMedium: TextStyle(color: Colors.white, fontSize: 18),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: isPortrait ? _buildPortraitLayout() : _buildLandscapeLayout(),
        ),
      ),
    );
  }

  // Layout retrátil (vertical)
  Widget _buildPortraitLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Título centralizado
        const Center(
          child: Text(
            'Cheetah Coding (Vertical)',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 20),
        // Botões alinhados horizontalmente
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildButton('Button 1'),
            const SizedBox(width: 16),
            _buildButton('Button 2'),
          ],
        ),
        const SizedBox(height: 20),
        // Lista vertical
        Expanded(
          child: ListView.builder(
            itemCount: languages.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  tileColor: Colors.grey.shade900,
                  title: Center(
                    child: Text(
                      languages[index],
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  // Layout paisagem (horizontal)
  Widget _buildLandscapeLayout() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Título centralizado
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Cheetah Coding (Horizontal)',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Botões alinhados verticalmente
              _buildButton('Button 1'),
              const SizedBox(height: 16),
              _buildButton('Button 2'),
            ],
          ),
        ),
        // Lista na segunda coluna
        Expanded(
          flex: 1,
          child: ListView.builder(
            itemCount: languages.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  tileColor: Colors.grey.shade900,
                  title: Center(
                    child: Text(
                      languages[index],
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                )
              );
            },
          ),
        ),
      ],
    );
  }

  // Widget auxiliar para botões
  Widget _buildButton(String title) {
    return ElevatedButton(
      onPressed: () {
        // Ação ao pressionar
      },
      child: Text(title),
    );
  }
}