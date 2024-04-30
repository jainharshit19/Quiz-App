import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int res;
  final Function reset;

  const Result({super.key, required this.res, required this.reset});
  
  String get ResultPhrase {
    String resultText;
    if (res >= 12) {
      resultText = "You are awesome and innocent";
    } else if (res >= 10) {
      resultText = "Pretty likable";
    } else if (res >= 8) {
      resultText = "You are ... strange";
    } else {
      resultText = "You are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          ResultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(padding: EdgeInsets.only(top: 16.0)),
        ElevatedButton(
            onPressed: () {reset();},
            child: Text("Reset"),
            ),
      ],
    ));
  }
}
