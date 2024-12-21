import 'package:flutter/material.dart';
import 'package:juan_million_web/screens/home_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Juan 4 All',
      home: HomeScreen(),
    );
  }
}
