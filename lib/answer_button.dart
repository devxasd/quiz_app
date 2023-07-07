import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      
        minimumSize: const Size(200, 30),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(answerText),
    );
  }
}
