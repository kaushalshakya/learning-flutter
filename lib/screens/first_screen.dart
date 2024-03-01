import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('First Screen', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('Go To Second Page'),
        onPressed: () {
          Navigator.pushNamed(context, '/secondscreen');
        },
      )),
    );
  }
}
