import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const TodoApp());
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  bool isDone = false;

  List<Map<String, dynamic>> todos = [
    {
      "title": 'Learn Flutter',
      "IsDone": false,
    },
    {
      "title": 'Read Book',
      "IsDone": false,
    },
    {
      "title": 'Play Game',
      "IsDone": false,
    },
    {
      "title": 'Sleep',
      "IsDone": false,
    },
    {
      "title": 'Travel',
      "IsDone": false,
    },
  ];

  void delete(int index) {
    setState(() {
      todos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("To Do App"),
        ),
        body: Column(
          children: [
            for (var i = 0; i < todos.length; i++)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            todos[i]['IsDone'] = !todos[i]['IsDone'];
                          });
                        },
                        icon: Icon(
                          todos[i]['IsDone']
                              ? Icons.check_circle_outline
                              : Icons.circle_outlined,
                        ),
                      ),
                      Text(
                        todos[i]['title'],
                        style: TextStyle(
                          fontSize: 16,
                          decoration: todos[i]['IsDone']
                              ? TextDecoration.lineThrough
                              : null,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      delete(i);
                    },
                    child: const Text(
                      "delete",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
