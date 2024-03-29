import 'package:GeoLearn/Data/Models/QuestionModel.dart';
import 'package:flutter/material.dart';

class QuizzButton extends StatefulWidget {
  final Answer answer;
  final function;

  const QuizzButton({
    Key? key,
    required this.answer,
    required this.function,
  }) : super(key: key);

  @override
  State<QuizzButton> createState() => _QuizzButtonState();
}

class _QuizzButtonState extends State<QuizzButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.function,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith(
          (states) => const Color(0xFF4B9589).withOpacity(0.1),
        ),
        shape: MaterialStateProperty.all<BeveledRectangleBorder>(
          BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: const BorderSide(
              color: Color(0xFF3A736A),
              width: 1.2,
            ),
          ),
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: Center(
              child: Text(
                widget.answer.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF3A736A),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
