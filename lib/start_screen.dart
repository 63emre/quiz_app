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
          Text("Hayko", style: TextStyle(fontSize: 42, color: Colors.black87)),
          const SizedBox(height: 80),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Start Quiz",
              style: TextStyle(
                fontSize: 54,
                decorationColor: Colors.white70,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
