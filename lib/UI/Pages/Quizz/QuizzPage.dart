import 'package:GeoLearn/Data/Models/QuestionModel.dart';
import 'package:GeoLearn/Domain/Managers/QuestionsManager.dart';
import 'package:GeoLearn/UI/CustomWidgets/QuizzButton.dart';
import 'package:GeoLearn/UI/Pages/Quizz/PartyFinishedPage.dart';
import 'package:enhanced_future_builder/enhanced_future_builder.dart';
import 'package:flutter/material.dart';

class QuizzPage extends StatefulWidget {
  final String firestoreID;
  const QuizzPage({
    super.key,
    this.firestoreID = "",
  });

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  QuestionsManager questionsManager = QuestionsManager();

  @override
  Widget build(BuildContext context) {
    return EnhancedFutureBuilder(
      future: questionsManager.loadData(
        firestoreDocumentID: widget.firestoreID,
      ),
      rememberFutureResult: true,
      whenNotDone: Scaffold(
        appBar: AppBar(
          title: SizedBox(
            child: Text(
              (widget.firestoreID.isEmpty) ? 'Quizz' : 'Custom Quizz',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CircularProgressIndicator(),
              SizedBox(
                height: 16,
              ),
              Text(
                "Is Loading",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF4B9589),
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Waiting for connexion with the database",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF4B9589),
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ),
      whenDone: (snapshot) {
        QuestionModel question = questionsManager.getCurrentQuestion();
        return questionsManager.getIsFinished()
            ? PartyFinishedPage(
                score: questionsManager.getCurrentScore(),
                numberOfQuestions: (widget.firestoreID.isNotEmpty)
                    ? questionsManager.questionList.length
                    : 10,
              )
            : Scaffold(
                appBar: AppBar(
                  title: SizedBox(
                    child: Text(
                      (widget.firestoreID.isEmpty) ? 'Quizz' : 'Custom Quizz',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text(
                        question.questionSubject,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Color(0xFF4B9589),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          letterSpacing: 1,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        question.questionText,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          letterSpacing: 1,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      (question.questionType == QuestionType.IMAGE)
                          ? Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 5),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Image.network(question.pictureURL),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            )
                          : const SizedBox(
                              height: 5,
                            ),
                      Flexible(
                        flex: 6,
                        child: Row(
                          children: [
                            Flexible(
                              child: Container(),
                            ),
                            Flexible(
                              flex: 6,
                              child: ListView.builder(
                                itemCount: question.answerList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return QuizzButton(
                                    answer:
                                        question.answerList.elementAt(index),
                                    function: () {
                                      setState(() {
                                        questionsManager.submitResponse(question
                                            .answerList
                                            .elementAt(index));
                                      });
                                    },
                                  );
                                },
                              ),
                            ),
                            Flexible(
                              child: Container(),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
      },
    );
  }
}
