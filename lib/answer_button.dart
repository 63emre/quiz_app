import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    required this.answerText,
    required this.onTap,
    super.key,
  });

  final String answerText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        backgroundColor: const Color.fromARGB(102, 0, 150, 135),
      ),
      onPressed: onTap,
      child: Text(
        answerText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30, color: Colors.black87),
      ),
    );
  }
}
