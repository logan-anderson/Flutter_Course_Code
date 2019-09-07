import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'what is your fav colour',
      'answers': [
        {'text': 'blue', 'score': 1},
        {'text': 'green', 'score': 2},
        {'text': 'orange', 'score': 3},
        {'text': 'black', 'score': 4}
      ]
    },
    {
      'questionText': 'what is your fav animal',
      'answers': [
        {'text': 'cat', 'score': 1},
        {'text': 'dog', 'score': 2},
        {'text': 'lion', 'score': 3},
        {'text': 'rabbit', 'score': 4},
        {'text': 'bird', 'score': 5},
      ]
    },
    {
      'questionText': 'what is your fav operating system',
      'answers': [
        {'text': 'mac', 'score': 3},
        {'text': 'linux', 'score': 1},
        {'text': 'windows', 'score': 5},
      ]
    },
  ];
  void _answserQuestion(int score) {
    _totalScore += score;
    setState(() {
      _index = _index + 1;
      print('clicked');
    });
  }
  void _resetQuiz() {
      setState(() {
        _index = 0;
        _totalScore = 0;
      });
    }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
        ),
        body: _index < _questions.length
            ? Quiz(
                answerQuestion: _answserQuestion,
                index: _index,
                questions: _questions)
            : Result(_totalScore , _resetQuiz),
      ),
    );
  }
}
