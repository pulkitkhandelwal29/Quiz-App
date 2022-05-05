import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //tells that the value stored will be function(taking value from main file)
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('New Delhi'),
        //Pointer to function, not calling the function
        onPressed: selectHandler,
      ),
    );
  }
}
