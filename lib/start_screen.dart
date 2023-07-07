import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
          ),
          const Text(
            'General Quiz',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xFF545454),
            ),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white70,
                backgroundColor: const Color(0xFF545454),
                minimumSize: const Size(100, 50)),
            onPressed: () {},
            label: const DecoratedBox(
              decoration: BoxDecoration(),
              child: Text('Start'),
            ),
            icon: const Icon(Icons.start),
          )
        ],
      ),
    );
  }
}
