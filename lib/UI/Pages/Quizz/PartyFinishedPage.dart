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
    // int _score = widget.score;
    int score = 7;
    int nbQuestions = widget.numberOfQuestions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Quizz Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Le résultat de votre quizz est le suivant :",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            CircleAvatar(
              backgroundColor: (score / nbQuestions <= 0.35)
                  ? Colors.red
                  : (score / nbQuestions > 0.35 && score / nbQuestions <= 0.65)
                      ? Colors.orangeAccent
                      : Colors.green,
              radius: 100,
              child: Text(
                '$score / $nbQuestions',
                maxLines: 3,
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              (score / nbQuestions <= 0.35)
                  ? "Vraiment décevant !"
                  : (score / nbQuestions > 0.35 && score / nbQuestions <= 0.64)
                      ? "Peu mieux faire encore..."
                      : (score / nbQuestions > 0.64 &&
                              score / nbQuestions <= 0.79)
                          ? "Well done !\n(Si tu comprends pas, apprends l'anglais plutôt que la géo, c'est plus utile dans la vie)"
                          : "Félicitations !\nTrop facile ? Désinstalle l'app",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
