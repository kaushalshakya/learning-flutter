// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:learning_flutter/screens/home_screen.dart';
import 'package:learning_flutter/screens/profile.dart';
import 'package:learning_flutter/screens/settings.dart';

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
      home: const Home(),
      routes: {
        '/settings': (context) => const Settings(),
        '/profile': (context) => const Profile()
      },
    );
  }
}
