// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learning_flutter/screens/home_screen.dart';
import 'package:learning_flutter/screens/profile.dart';
import 'package:learning_flutter/screens/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void userTapped() => print('userTapped');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: Home(),
      routes: {
        '/settings': (context) => Settings(),
        '/profile': (context) => Profile()
      },
    );
  }
}
