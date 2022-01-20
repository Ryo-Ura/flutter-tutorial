import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

var _questionIdx = 0;

class _MyAppState extends State<MyApp> {
  void answerQ(int score) {
    setState(() {
      _questionIdx++;
      _totalScore += score;
    });
  }

  var _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'Which of the followings is not a subspace?',
        'answer': [
          {'text': 'Nullspace', 'score': 0},
          {'text': 'Columnspace', 'score': 0},
          {'text': 'Eigenspace', 'score': 5},
        ]
      },
      {
        'questionText': 'Which of the followings is not involved in DMA?',
        'answer': [
          {'text': 'CPU', 'score': 5},
          {'text': 'IO controller', 'score': 0},
          {'text': 'memory', 'score': 0},
        ]
      },
      {
        'questionText': 'What happens if you dont free a pointer',
        'answer': [
          {'text': 'dangling pointer', 'score': 0},
          {'text': 'memory leak', 'score': 5},
          {'text': 'nothing', 'score': 0},
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: (_questionIdx < 3)
            ? Quiz(questions: _questions, index: _questionIdx, answerQ: answerQ)
            : Result(score: _totalScore),
      ),
    );
  }
}
