import 'package:flutter/material.dart';
import 'answer_button.dart';
import 'data/questions.dart';

class QuestionsScreens extends StatefulWidget {
  const QuestionsScreens({super.key});
  @override
  State<QuestionsScreens> createState() {
    return _QuestionScreens();
  }
}

class _QuestionScreens extends State<QuestionsScreens> {
  @override
  Widget build(context) {
    final currentQ = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQ.text,
            style: const TextStyle(fontSize: 42, color: Colors.black87),
          ),
          const SizedBox(height: 40),
          AnswerButton(currentQ.answers[0], null),
          const SizedBox(height: 40),
          AnswerButton(currentQ.answers[1], null),
          const SizedBox(height: 40),
          AnswerButton(currentQ.answers[2], null),
          const SizedBox(height: 40),
          AnswerButton(currentQ.answers[3], null),
        ],
      ),
    );
  }
}
