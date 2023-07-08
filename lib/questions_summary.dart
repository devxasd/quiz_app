import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.questionsSummary, {super.key});

  final List<Map<String, Object>> questionsSummary;

  @override
  Widget build(context) {
    return SizedBox(
      child: Container(
        height: 200,
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: SizedBox(
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: questionsSummary.map(
                (data) {
                  return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          width: 30,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amber,
                          ),
                          child: Text(
                            ((data['question-index'] as int) + 1).toString(),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(data['question'].toString()),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    data['user-answer'].toString(),
                                    style: const TextStyle(
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  Text(
                                    '(${data['correct-answer']})',
                                    style: const TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ]);
                },
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
