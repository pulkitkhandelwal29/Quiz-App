//importing the base class file that flutter provides functionality
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); //run app
}

//inheriting the class
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My Quiz App'),
          ),
          body: Column(
            //Column like format
            children: [
              Text('The question!'),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: null,
              ),
            ],
          )),
    );
  }
}
