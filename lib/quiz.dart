import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizWidget();
  }
}

class _QuizWidget extends State<Quiz> {
  String activeScreen = 'quiz-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 254, 232),
                Color.fromARGB(255, 255, 255, 255)
              ],
            ),
          ),
          child: activeScreen == 'quiz-screen'
              ? StartScreen(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
