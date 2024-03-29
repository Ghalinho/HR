import 'package:flutter/material.dart';
import 'package:hr/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HR App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen (),
    );
  }
}












































