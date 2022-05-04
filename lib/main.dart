//importing the base class file that flutter provides functionality
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); //run app
}

//inheriting the class
class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void RightAnswerQuestion() {
    //if correct answer, move to next question
    questionIndex = questionIndex + 1;
  }

  void WrongAnswerQuestion() {
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
                questions[questionIndex],
              ),
              RaisedButton(
                child: Text('Kolkata'),
                //Pointer to function, not calling the function
                onPressed: WrongAnswerQuestion,
              ),
              RaisedButton(
                child: Text('New Delhi'),
                onPressed: RightAnswerQuestion,
              ),
              RaisedButton(
                child: Text('Jaipur'),
                onPressed: WrongAnswerQuestion,
              ),
              RaisedButton(
                child: Text('Mumbai'),
                onPressed: WrongAnswerQuestion,
              ),
            ],
          )),
    );
  }
}
