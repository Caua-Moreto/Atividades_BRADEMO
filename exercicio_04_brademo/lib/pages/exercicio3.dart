import 'package:flutter/material.dart';

class Exercicio3 extends StatefulWidget {
  const Exercicio3({super.key});

  @override
  State<Exercicio3> createState() => _Exercicio3State();
}

class _Exercicio3State extends State<Exercicio3> {
  // Lista de tarefas simulada
  final List<Map<String, dynamic>> _tasks = List.generate(
    5,
    (index) => {
      "title": "Task 2022-07-09 ${18 + index}:${index * 3}:2444",
      "completed": false,
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listinha de Tarefas"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Botão "View Completed Tasks"
            ElevatedButton(
              onPressed: () {
                final completedTasks = _tasks.where((task) => task["completed"]).length;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Você tem $completedTasks tarefas completas")),
                );
              },
              child: const Text("View Completed Tasks"),
            ),
            const SizedBox(height: 16),
            // Texto de resumo das tarefas
            Text(
              "You have ${_tasks.length} uncompleted tasks",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Lista de tarefas
            Expanded(
              child: ListView.builder(
                itemCount: _tasks.length,
                itemBuilder: (context, index) {
                  final task = _tasks[index];
                  return Card(
                    child: ListTile(
                      leading: Checkbox(
                        value: task["completed"],
                        onChanged: (value) {
                          setState(() {
                            task["completed"] = value;
                          });
                        },
                      ),
                      title: Text(task["title"]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Exibe o AlertDialog
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Mensagem"),
                content: const Text("Você está no App de Notas de Tarefas."),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("OK"),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}