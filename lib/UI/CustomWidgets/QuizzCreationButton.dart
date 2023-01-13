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
