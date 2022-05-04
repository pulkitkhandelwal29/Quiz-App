import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//inheriting the class
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hello!'),
    );
  }
}
