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
  //Alternative way
  // List<Map<String, Object>> getSummaryData() {}

  //we can use get or set for getter setter
  List<Map<String, Object>> get summaryData {
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
    int totalQuestions = questions.length;
    int correctQuestion = summaryData.where(
      //use of => for returning something
      (data) => (data['correct-answer'] == data['user-answer']),
      //Alternative without =>
      // (data) {
      //   return (data['correct-answer'] == data['user-answer']);
      // },
    ).length;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
