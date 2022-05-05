//importing the base class file that flutter provides functionality
import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
//importing to access quiz widget
import './quiz.dart';
//importing to access result widget
import './result.dart';

void main() {
  runApp(MyApp()); //run app
}

//converting into StatefulWidget

//This class gets recreated
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

//this class keeps the state persistent and link it to the class
class _MyAppState extends State<MyApp> {
  //creating private variable
  var _questionIndex = 0;

  var _totalScore = 0;

  //questions in the form of Map
  final _questions = const [
    {
      'questionText': 'What\'s the capital of India?',
      'answers': [
        {'text': 'Kolkata', 'score': 0},
        {'text': 'New Delhi', 'score': 1},
        {'text': 'Jaipur', 'score': 0},
        {'text': 'Mumbai', 'score': 0},
      ],
    },
    {
      'questionText': 'When did India got independence?',
      'answers': [
        {'text': '1950', 'score': 0},
        {'text': '1945', 'score': 0},
        {'text': '1947', 'score': 1},
        {'text': '1946', 'score': 0},
      ],
    },
    {
      'questionText': 'Which is the national sport of India?',
      'answers': [
        {'text': 'Cricket', 'score': 0},
        {'text': 'Football', 'score': 0},
        {'text': 'Kabaddi', 'score': 0},
        {'text': 'Hockey', 'score': 1},
      ],
    }
  ];

  void _AnswerQuestion(int score) {
    _totalScore += score;
    //if answer, move to next question
    //setState is anonymous function keeping the state of app
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        //Ternary condition
        body: _questionIndex < _questions.length
            ? Quiz(
                AnswerQuestion: _AnswerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            //else condition in ternary starting with : (questions over)
            : Result(_totalScore),
      ),
    );
  }
}
