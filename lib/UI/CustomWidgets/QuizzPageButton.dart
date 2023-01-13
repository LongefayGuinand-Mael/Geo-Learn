import 'package:flutter/material.dart';

class QuizzPageButton extends StatefulWidget {
  final String labelText;
  final function;
  const QuizzPageButton({
    Key? key,
    required this.labelText,
    required this.function,
  }) : super(key: key);

  @override
  State<QuizzPageButton> createState() => _QuizzPageButtonState();
}

class _QuizzPageButtonState extends State<QuizzPageButton> {
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
                widget.labelText,
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
