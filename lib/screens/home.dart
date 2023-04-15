import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Porpular Movies',
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
