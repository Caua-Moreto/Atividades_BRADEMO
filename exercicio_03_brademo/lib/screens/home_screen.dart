import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter By Example', style: TextStyle(color: Colors.white)), backgroundColor: const Color.fromARGB(255, 0, 137, 236)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bem-vindo à Home!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Icon(
              Icons.check_circle_outline,
              color: Colors.blue,
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}