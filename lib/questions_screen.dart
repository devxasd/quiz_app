import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int nextIndex = 0;
  void nextQuestion() {
    setState(() {
      nextIndex++;
      if (nextIndex >= questions.length) {
        nextIndex = 0;
      }
    });
  }

  @override
  Widget build(context) {
    var currentQuestion = questions[nextIndex];
    return SizedBox(
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.roboto(
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ...currentQuestion.getShuffledChoices().map((choice) {
              return AnswerButton(answerText: choice, onTap: nextQuestion);
            })
          ],
        ),
      ),
    );
  }
}
