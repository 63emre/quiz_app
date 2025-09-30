import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screens.dart';
import 'start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget activeScreen = const StartScreen(switchScreen);

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreens();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
              colors: [Colors.tealAccent, Colors.lime],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
