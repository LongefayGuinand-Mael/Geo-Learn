import 'package:GeoLearn/Data/Models/QuestionModel.dart';
import 'package:GeoLearn/Domain/Managers/QuestionsManager.dart';
import 'package:GeoLearn/UI/CustomWidgets/QuizzPageButton.dart';
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
              Text(
                "Is Loading\nWaiting for connexion with the database",
              ),
              SizedBox(
                height: 8,
              ),
              CircularProgressIndicator(),
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
                      Text("Thème :  ${question.questionSubject}"),
                      Text("Question :  ${question.questionText}"),
                      const SizedBox(
                        height: 4,
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
                                  return QuizzPageButton(
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
