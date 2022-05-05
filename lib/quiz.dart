import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback AnswerQuestion;

  Quiz(
      {required this.questions,
      required this.AnswerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      //Column like format
      children: [
        Question(
          //Will print questions from list of maps
          questions[questionIndex]['questionText']?.toString() ?? '',
        ),
        //answer widget (taking answer dynamically from map)
        //answers are List of string
        //...(spread operator) splits list of items into individual items
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(AnswerQuestion, answer);
        }).toList()
      ],
    );
  }
}
