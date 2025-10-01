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
  var activeScreen = 'start-screen';

  //Widget? activeScreen;

  /*@override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }
*/

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen'; // const QuestionsScreens();
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreens();
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
