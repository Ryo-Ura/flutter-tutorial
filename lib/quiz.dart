import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final Function answerQ;
  Quiz(
      {@required this.questions, @required this.index, @required this.answerQ});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[index]['questionText'],
      ),
      ...(questions[index]['answer'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(answer['text'], () => answerQ(answer['score']));
      }).toList()
    ]);
  }
}
