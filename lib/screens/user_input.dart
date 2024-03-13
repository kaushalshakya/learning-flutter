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
  String greetingMessage = '';
  void handleInput() {
    setState(() {
      (inputController.text.trim().isNotEmpty)
          ? greetingMessage = 'Hello ${inputController.text.trim()}'
          : greetingMessage = '';
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
              Text(greetingMessage),
              TextField(
                controller: inputController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Write anything'),
              ),
              ElevatedButton(onPressed: handleInput, child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
