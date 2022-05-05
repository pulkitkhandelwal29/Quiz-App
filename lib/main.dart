//importing the base class file that flutter provides functionality
import 'package:flutter/material.dart';
//importing to access question widget
import './question.dart';
//importing to access answer widget
import './answer.dart';

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
  final questions = const [
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
        body: _questionIndex < questions.length
            ? Column(
                //Column like format
                children: [
                  Question(
                    //Will print questions from list of maps
                    questions[_questionIndex]['questionText']?.toString() ?? '',
                  ),
                  //answer widget (taking answer dynamically from map)
                  //answers are List of string
                  //...(spread operator) splits list of items into individual items
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_AnswerQuestion, answer);
                  }).toList()
                ],
              )
            //else condition in ternary starting with : (questions over)
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
