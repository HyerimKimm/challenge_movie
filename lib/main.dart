import 'package:challenge_movie/screens/home.dart';
import 'package:challenge_movie/service/api_service.dart';
import 'package:flutter/material.dart';

void main() async {
  ApiService().getPopularMovies();
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
      home: const Home(),
    );
  }
}
