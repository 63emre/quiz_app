import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'answer_button.dart';
import 'data/questions.dart';

class QuestionsScreens extends StatefulWidget {
  const QuestionsScreens({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreens> createState() {
    return _QuestionScreens();
  }
}

class _QuestionScreens extends State<QuestionsScreens> {
  var currentQIndex = 0;

  void answerQuestion(String selectedAnswers) {
    widget.onSelectAnswer(selectedAnswers);
    setState(() {
      currentQIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQ = questions[currentQIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              currentQ.text,
              style: GoogleFonts.poppins(
                color: Colors.black87,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ...currentQ.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              );
            }),
            const SizedBox(height: 40),
            //AnswerButton(currentQ.answers, null),
            //const SizedBox(height: 40),
            //const SizedBox(height: 40),
            //const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
