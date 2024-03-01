// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:learning_flutter/screens/first_screen.dart';
import 'package:learning_flutter/screens/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void userTapped() => print('userTapped');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstScreen(),
      routes: {'/secondscreen': (context) => const SecondScreen()},
    );
  }
}
