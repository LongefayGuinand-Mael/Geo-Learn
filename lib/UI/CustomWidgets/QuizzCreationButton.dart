import 'package:GeoLearn/Data/Models/QuestionModel.dart';
import 'package:flutter/material.dart';

class QuizzCreationButton extends StatefulWidget {
  final Answer answer;

  const QuizzCreationButton({
    Key? key,
    required this.answer,
  }) : super(key: key);

  @override
  State<QuizzCreationButton> createState() => _QuizzCreationButtonState();
}

class _QuizzCreationButtonState extends State<QuizzCreationButton> {
  @override
  Widget build(BuildContext context) {
    bool answerResult = widget.answer.isValid;
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(
          answerResult
              ? const Color(0xFF4B9589).withOpacity(0.2)
              : const Color(0xFF950019).withOpacity(0.2),
        ),
        shape: MaterialStateProperty.all<BeveledRectangleBorder>(
          BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: BorderSide(
              color: answerResult
                  ? const Color(0xFF4B9589)
                  : const Color(0xFF950019),
              width: 1.5,
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
                style: TextStyle(
                  color: answerResult
                      ? const Color(0xFF4B9589)
                      : const Color(0xFF950019),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
