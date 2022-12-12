import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectedHandler;

  Answer(this.selectedHandler);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: selectedHandler,
      child: Text("Answer"),
    );
  }
}
