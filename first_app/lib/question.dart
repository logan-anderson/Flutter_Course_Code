import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  //this stores the possitional aguemnt is the question text var

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(40),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
