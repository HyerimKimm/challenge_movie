import 'package:challenge_movie/screens/home.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
            bodyLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      home: Home(),
    );
  }
}
