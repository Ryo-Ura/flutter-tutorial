import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetFun;
  Result({this.score, this.resetFun});
  String get resultPhase {
    String str = 'You got ' + score.toString() + ' out of 15. ';
    return (score > 10) ? str + 'You are pretty good' : str + 'You damn ass...';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(
              child: Text(
                'Retake Quiz',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: resetFun),
        ],
      ),
    );
  }
}
