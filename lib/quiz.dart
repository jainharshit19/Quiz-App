import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(
      {required this.question,
      required this.questionIndex,
      required this.answerQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['questionText'].toString()),
        // we can't pass a list in children of column
        // ... is a spread operator
        // it will return each element of list
        ...(question[questionIndex]['Answer Text'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answerQuestion, answer);
        }).toList(),
        //this is a list of widget
      ],
    );
  }
}
