import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\s your name',
      'What\s your favourite color',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[0]),
            ElevatedButton(
                onPressed: () => answerQuestion(), child: Text('Answer 1')),
            ElevatedButton(
                onPressed: () => answerQuestion(), child: Text('Answer 2')),
            ElevatedButton(
                onPressed: () => answerQuestion(), child: Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
