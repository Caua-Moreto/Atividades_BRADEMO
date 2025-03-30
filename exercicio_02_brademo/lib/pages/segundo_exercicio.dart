import 'package:flutter/material.dart';

class SegundoExercicio extends StatelessWidget {
  const SegundoExercicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Page'),
        
        centerTitle: true,
        backgroundColor: Colors.blue[100],
      ),
      
      body: Center(
        child: Column(
          children: [
            // MARGEM TOPO
            Padding(padding: EdgeInsets.only(top: 20)),

            // TEXTO
            Text('Hello, World!',
            style: TextStyle (color: Color.fromARGB(255, 33, 121, 243), fontSize: 20),            
            ),

            // SIZED BOX ESPAÇAMENTO
            SizedBox(height: 40),

            // SIZED BOX PARA TAMANHO BOTÃO
            SizedBox(
            width: 200,
            height: 50,
            
            // BOTAO 
            child: TextButton(
              onPressed: () {
                // lógica do botão
              },
              // Style Botão
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue[800],
              ),
              // Texto Botão
              child: Text('Um botão'),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
