import 'package:flutter/material.dart';
// import 'package:quiz_app/answer.dart';
// import 'package:quiz_app/question.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _question = [
    {'questionText':'What\'s your favourite color',
    'Answer Text':[{"text":"Black","score":4},{"text":"Red","score":5},{"text":"Green","score":3},{"text":"White","score":1}]},
    {'questionText':'What\'s your favourite animal',
    'Answer Text':[{"text":"Rabbit","score":5},{"text":"Snake","score":2},{"text":"Elephant","score":3},{"text":"Lion","score":4}]},
    {'questionText':'Who\'s is your favourite instructor',
    'Answer Text':[{"text":"Pankaj","score":4},{"text":"Pankaj","score":4},{"text":"Pankaj","score":4},{"text":"Pankaj","score":4}]}
    ];
  var _questionIndex = 0;
  var _res=0;

  void _reset(){
    setState(() {
      _questionIndex = 0;
      _res=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    void _answerQuestion(int score) {
      _res+=score;
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: (_questionIndex >= _question.length)?
        Result(res: _res,reset: _reset,):
          Quiz(
            question: _question,
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
          ),
      ),
    );
  }
}
