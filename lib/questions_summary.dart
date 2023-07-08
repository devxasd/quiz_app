import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.questionsSummary, {super.key});

  final List<Map<String, Object>> questionsSummary;

  @override
  Widget build(context) {
    return Column(
      children: questionsSummary.map(
        (data) {
          return Row(children: [
            Text(
              ((data['question-index'] as int) + 1).toString(),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(data['question'].toString()),
                  Text(data['correct-answer'].toString()),
                  Text(data['user-answer'].toString()),
                ],
              ),
            )
          ]);
        },
      ).toList(),
    );
  }
}
