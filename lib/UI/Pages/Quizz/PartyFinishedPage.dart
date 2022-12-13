import 'package:flutter/material.dart';

class PartyFinishedPage extends StatefulWidget {
  final int score;
  const PartyFinishedPage({
    Key? key,
    required this.score,
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
        child: Text('Your score is ${widget.score} over 10 questions.'),
      ),
    );
  }
}
