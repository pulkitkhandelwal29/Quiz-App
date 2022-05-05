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

  //questions in the form of Map
  final _questions = const [
    {
      'questionText': 'What\'s the capital of India?',
      'answers': ['Kolkata', 'New Delhi', 'Jaipur', 'Mumbai'],
    },
    {
      'questionText': 'When did India got independence?',
      'answers': ['1950', '1945', '1947', '1946'],
    },
    {
      'questionText': 'Which is the national sport of India?',
      'answers': ['Cricket', 'Football', 'Kabaddi', 'Hockey'],
    }
  ];

  void _AnswerQuestion() {
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
            : Result(),
      ),
    );
  }
}
