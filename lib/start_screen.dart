import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/quiz-logo.png", width: 300),
          const SizedBox(height: 80),
          Text(
            "Pink Floyd",
            style: TextStyle(fontSize: 42, color: Colors.black87),
          ),
          const SizedBox(height: 80),
          ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(foregroundColor: Colors.black87),
            icon: Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
