import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  Result({this.score});
  String get resultPhase {
    String str = 'You got ' + score.toString() + ' out of 15. ';
    return (score > 10)? str + 'You are pretty good' : str + 'You damn ass...';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Text(
        resultPhase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
