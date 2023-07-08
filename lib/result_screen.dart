import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
    this.selectedAnswers, {
    super.key,
    required this.onRestart,
  });

  final List<String> selectedAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question-index': i,
        'question': questions[i].question,
        'correct-answer': questions[i].choices[0],
        'user-answer': selectedAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final List<Map<String, Object>> summaryData = getSummary();
    int totalQuestions = questions.length;
    int correctQuestion = summaryData.where((data) {
      return (data['correct-answer'] == data['user-answer']);
    }).length;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$correctQuestion out of $totalQuestions questions are correct',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          QuestionsSummary(summaryData),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: onRestart,
            style: OutlinedButton.styleFrom(),
            icon: const Icon(Icons.refresh),
            label: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
