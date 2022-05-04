import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  //constructor taking values
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      //takes the width of how much it can get
      width: double.infinity,
      margin: EdgeInsets.all(30),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
