import 'package:flutter/material.dart';

class PartyFinishedPage extends StatefulWidget {
  final int score;
  final int numberOfQuestions;
  const PartyFinishedPage({
    Key? key,
    required this.score,
    required this.numberOfQuestions,
  }) : super(key: key);
  @override
  State<PartyFinishedPage> createState() => _PartyFinishedPageState();
}

class _PartyFinishedPageState extends State<PartyFinishedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The quizz is now finished'),
      ),
      body: Center(
        child: Text(
            'Your score is ${widget.score} over ${widget.numberOfQuestions} questions.'),
      ),
    );
  }
}
