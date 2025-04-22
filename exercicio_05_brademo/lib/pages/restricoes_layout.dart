import 'package:flutter/material.dart';

class LayoutConstraintsExample extends StatelessWidget {
  const LayoutConstraintsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restrições de Layout'),
      ),
      body: ListView(
        children: [
          _buildSection(
            'Exemplo 1: Container sem restrições',
            _buildExample1(),
            'Container tenta ser o maior possível quando não tem restrições específicas.',
          ),
          _buildSection(
            'Exemplo 2: Container com restrições fixas',
            _buildExample2(),
            'Container com largura e altura fixas de 100x100 pixels.',
          ),
          _buildSection(
            'Exemplo 3: Container que se ajusta ao conteúdo',
            _buildExample3(),
            'Container se ajusta ao tamanho do seu filho (texto).',
          ),
          _buildSection(
            'Exemplo 4: Container com restrições mínimas',
            _buildExample4(),
            'Container com largura mínima de 100 e altura mínima de 100.',
          ),
          _buildSection(
            'Exemplo 5: Restrições apertadas (tight)',
            _buildExample5(),
            'Container forçado a ter exatamente 200x200 pixels.',
          ),
          _buildSection(
            'Exemplo 6: Restrições soltas (loose)',
            _buildExample6(),
            'Container pode ter qualquer tamanho até 300x300.',
          ),
          _buildSection(
            'Exemplo 7: Restrições expandidas',
            _buildExample7(),
            'Container expande para preencher o espaço disponível.',
          ),
          _buildSection(
            'Exemplo 8: Restrições em conflito',
            _buildExample8(),
            'Filho quer ser maior que o pai permite.',
          ),
        ],
      ),
    );
  }

  Widget _buildSection(String title, Widget example, String description) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Center(child: example),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          const Divider(thickness: 2),
        ],
      ),
    );
  }

  // Exemplo 1: Container sem restrições
  Widget _buildExample1() {
    return Container(
      color: Colors.red,
      width: double.infinity,
      height: 100,
      child: const Center(
        child: Text(
          'Largura: infinity, Altura: 100',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  // Exemplo 2: Container com tamanho fixo
  Widget _buildExample2() {
    return Container(
      width: 100,
      height: 100,
      color: Colors.blue,
      child: const Center(
        child: Text(
          '100x100',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  // Exemplo 3: Container ajustando ao conteúdo
  Widget _buildExample3() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.green,
      child: const Text(
        'Este container se ajusta ao tamanho do texto',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  // Exemplo 4: Container com restrições mínimas
  Widget _buildExample4() {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 100,
        minHeight: 100,
      ),
      color: Colors.orange,
      child: const Center(
        child: Text(
          'minWidth: 100\nminHeight: 100',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  // Exemplo 5: Restrições apertadas (tight)
  Widget _buildExample5() {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(
        width: 200,
        height: 200,
      ),
      child: Container(
        color: Colors.purple,
        child: const Center(
          child: Text(
            'Exatamente 200x200',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  // Exemplo 6: Restrições soltas (loose)
  Widget _buildExample6() {
    return ConstrainedBox(
      constraints: BoxConstraints.loose(Size(300, 300)),
      child: Container(
        width: 200, // Será respeitado, pois está dentro das restrições
        height: 150, // Será respeitado, pois está dentro das restrições
        color: Colors.teal,
        child: const Center(
          child: Text(
            'Dentro das restrições\nloose(300x300)',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  // Exemplo 7: Restrições expandidas
  Widget _buildExample7() {
    return Container(
      height: 150,
      color: Colors.grey[300],
      child: Row(
        children: [
          Container(
            width: 100,
            color: Colors.red,
            child: const Center(
              child: Text(
                'Fixo\n100',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.deepPurple,
              child: const Center(
                child: Text(
                  'Expanded\npreenche o resto',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Container(
            width: 100,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Fixo\n100',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Exemplo 8: Restrições em conflito
  Widget _buildExample8() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.grey[300],
      child: Center(
        // O Center tenta dar ao filho o que ele quer, mas dentro das restrições do pai
        child: Container(
          width: 300, // Maior que o pai, será limitado a 200
          height: 300, // Maior que o pai, será limitado a 200
          color: Colors.amber,
          child: const Center(
            child: Text(
              'Quero ser 300x300\nMas sou limitado a 200x200',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}