//importing the base class file that flutter provides functionality
import 'package:flutter/material.dart';

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

  void _RightAnswerQuestion() {
    //if correct answer, move to next question
    //setState is anonymous function keeping the state of app
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _WrongAnswerQuestion() {
    print('Wrong answer!');
  }

  Widget build(BuildContext context) {
    var questions = [
      'What\'s the capital of India?',
      'When did India got independence?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: Column(
            //Column like format
            children: [
              Text(
                //Will print 1st question
                questions[_questionIndex],
              ),
              RaisedButton(
                child: Text('Kolkata'),
                //Pointer to function, not calling the function
                onPressed: _WrongAnswerQuestion,
              ),
              RaisedButton(
                child: Text('New Delhi'),
                onPressed: _RightAnswerQuestion,
              ),
              RaisedButton(
                child: Text('Jaipur'),
                onPressed: _WrongAnswerQuestion,
              ),
              RaisedButton(
                child: Text('Mumbai'),
                onPressed: _WrongAnswerQuestion,
              ),
            ],
          )),
    );
  }
}
