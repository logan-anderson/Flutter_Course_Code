import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onPressed;
  final String text;

  Answer(this.onPressed, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(text) ,
        onPressed: onPressed,
      ),
    );
  }
}
