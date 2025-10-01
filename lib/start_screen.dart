import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /* 
          Opacity(
            opacity: 0.92,
            child: Image.asset("assets/images/quiz-logo.png", width: 300),
          ), avoid Opacity widget 
          */
          Image.asset(
            "assets/images/quiz-logo.png",
            color: const Color.fromARGB(255, 0, 0, 0),
            width: 300,
          ),
          const SizedBox(height: 80),
          Text(
            "Pink Floyd",
            style: TextStyle(fontSize: 42, color: Colors.black87),
          ),
          const SizedBox(height: 80),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(foregroundColor: Colors.black87),
            icon: Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz", style: TextStyle(fontSize: 29)),
          ),
        ],
      ),
    );
  }
}
