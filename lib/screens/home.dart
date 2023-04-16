import 'package:challenge_movie/widgets/popular_movie_list.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          PopularMovie(),
        ],
      ),
    );
  }
}
