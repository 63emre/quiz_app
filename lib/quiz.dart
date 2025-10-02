import 'package:flutter/services.dart';
import 'package:quiz_app/results_screen.dart';
import 'results_screen.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
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
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];
  var resultsScreend = 'results-screen';
  //Widget? activeScreen;

  /*@override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }
*/

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers.clear();
      activeScreen = 'start-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers.clear();
        activeScreen = resultsScreend;
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreens(onSelectAnswer: chooseAnswer);
    }
    if (activeScreen == resultsScreend) {
      screenWidget = ResultsScreen(
        choosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }
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
          child: screenWidget,
        ),
      ),
    );
  }
}
