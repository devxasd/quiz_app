import 'package:quiz_app/model/quiz_questions.dart';

const questions = [
  QuizQuestion(
    'Flutter uses which language ?',
    [
      'Dart',
      'Python',
      'Java',
      'PHP',
    ],
  ),
  QuizQuestion(
    'NetBeans uses which language ?',
    [
      'Java',
      'Python',
      'Dart',
      'PHP',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];
