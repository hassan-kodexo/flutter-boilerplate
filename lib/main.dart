import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'id': 1,
        'questionText': 'What\s your favourite color?',
        'answer': ['Green', 'Blue', 'Red', 'Grey']
      },
      {
        'id': 2,
        'questionText': 'What\s your favourite company?',
        'answer': ['Kodexolabs', 'Systems', 'Netsol', 'Saftsol']
      },
      {
        'id': 3,
        'questionText': 'What is your mentor\s profession?',
        'answer': ['Cricketer', 'Footballer', 'Developer', 'Software Engineer']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['questionText']),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
