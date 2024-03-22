// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UserInput extends StatefulWidget {
  const UserInput({super.key});

  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  //text editing controller to access user input
  TextEditingController inputController = TextEditingController();
  List<String> todos = [];
  void handleInput() {
    final todo = inputController.text.trim();
    setState(() {
      if (todo.isNotEmpty) {
        todos.add(todo);
        inputController.clear();
      }
    });
  }

  void handleClear() {
    setState(() {
      todos.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: inputController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Write anything'),
              ),
              SizedBox(height: 10),
              ElevatedButton(onPressed: handleInput, child: Text('Submit')),
              SizedBox(height: 10),
              Expanded(
                  child: ListView.builder(
                      itemCount: todos.length,
                      itemBuilder: (context, index) {
                        return ListTile(title: Text(todos[index]));
                      })),
              FloatingActionButton(
                onPressed: handleClear,
                child: Icon(Icons.delete),
              )
            ],
          ),
        ),
      ),
    );
  }
}
