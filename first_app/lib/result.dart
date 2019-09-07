import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function reset;
  Result(this.totalScore, this.reset);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          'You are finished! and your score is $totalScore',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(child: Text('Restart Quiz'), onPressed: reset,)
      ]
      ),
    );
  }
}
