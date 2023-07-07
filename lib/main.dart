import 'package:flutter/material.dart';
import 'start_screen.dart';

void main() {
  runApp(
    MaterialApp(
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
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
