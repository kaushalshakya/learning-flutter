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

  void handleInput() {
    if (inputController.text.trim().isNotEmpty) {
      print(inputController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: inputController,
            ),
            ElevatedButton(onPressed: handleInput, child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
