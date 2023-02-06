import 'package:GeoLearn/Data/Models/QuestionModel.dart';
import 'package:flutter/material.dart';

class QuizzCreationPageButton extends StatefulWidget {
  final Answer answer;
  final function;

  const QuizzCreationPageButton({
    Key? key,
    required this.answer,
    required this.function,
  }) : super(key: key);

  @override
  State<QuizzCreationPageButton> createState() =>
      _QuizzCreationPageButtonState();
}

class _QuizzCreationPageButtonState extends State<QuizzCreationPageButton> {
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

// import 'package:GeoLearn/Domain/Managers/QuestionsManager.dart';
// import 'package:GeoLearn/Domain/UseCase/Questions_UseCase.dart';
// import 'package:flutter/material.dart';
//
// class QuizzCreationButton extends StatefulWidget {
//   final String labelText;
//   const QuizzCreationButton({
//     Key? key,
//     required this.labelText,
//   }) : super(key: key);
//
//   @override
//   State<QuizzCreationButton> createState() => _QuizzCreationButtonState();
// }
//
// class _QuizzCreationButtonState extends State<QuizzCreationButton> {
//   QuestionsManager questionsManager = QuestionsManager();
//
//   @override
//   Widget build(BuildContext context) {
//     bool isCorrectResponse = Questions_UseCase().isCorrectAnswer(
//         questionsManager.getCurrentQuestion(), widget.labelText);
//     return TextButton(
//       onPressed: () {},
//       style: ButtonStyle(
//         backgroundColor: MaterialStatePropertyAll<Color>(
//           isCorrectResponse
//               ? const Color(0xFF4B9589).withOpacity(0.2)
//               : const Color(0xFF950019).withOpacity(0.2),
//         ),
//         shape: MaterialStateProperty.all<BeveledRectangleBorder>(
//           BeveledRectangleBorder(
//             borderRadius: BorderRadius.circular(25),
//             side: BorderSide(
//               color: isCorrectResponse
//                   ? const Color(0xFF4B9589)
//                   : const Color(0xFF950019),
//               width: 1.5,
//             ),
//           ),
//         ),
//       ),
//       child: SizedBox(
//         width: MediaQuery.of(context).size.width * 0.6,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8),
//           child: SizedBox(
//             width: MediaQuery.of(context).size.width * 0.45,
//             child: Center(
//               child: Text(
//                 widget.labelText,
//                 style: TextStyle(
//                   color: isCorrectResponse
//                       ? const Color(0xFF4B9589)
//                       : const Color(0xFF950019),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
