import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';
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
  List<String> selectedAnswers = [];
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void mainScreen() {
    selectedAnswers = [];
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }

  void resultScreen() {
    setState(() {
      activeScreen = 'result-screen';
    });
  }

  void choosenAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(context) {
    Widget widgetScreen = StartScreen(switchScreen);
    if (activeScreen == 'question-screen') {
      widgetScreen = QuestionsScreen(
        onCompletion: resultScreen,
        onSelection: choosenAnswer,
      );
    }
    if (activeScreen == 'result-screen') {
      widgetScreen = ResultScreen(
        selectedAnswers,
        onRestart: mainScreen,
      );
    }
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
          child: widgetScreen,
        ),
      ),
    );
  }
}
