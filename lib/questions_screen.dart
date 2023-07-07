import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Question',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AnswerButton(answerText: 'Answer 1', onTap: () {}),
            AnswerButton(answerText: 'Answer 2', onTap: () {}),
            AnswerButton(answerText: 'Answer 3', onTap: () {}),
            AnswerButton(answerText: 'Answer 4', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
