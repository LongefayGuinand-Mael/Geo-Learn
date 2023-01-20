import 'package:GeoLearn/Data/Models/Question_Model.dart';
import 'package:GeoLearn/Domain/Managers/QuestionsManager.dart';
import 'package:GeoLearn/UI/CustomWidgets/QuizzPageButton.dart';
import 'package:GeoLearn/UI/Pages/Quizz/PartyFinishedPage.dart';
import 'package:flutter/material.dart';

class QuizzPage extends StatefulWidget {
  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  QuestionsManager questionsManager = QuestionsManager();

  @override
  Widget build(BuildContext context) {
    Question_Model question = questionsManager.getCurrentQuestion();

    return questionsManager.getIsFinished()
        ? PartyFinishedPage(score: questionsManager.getCurrentScore())
        : Scaffold(
            appBar: AppBar(
              title: SizedBox(
                child: Text(
                  'QUIZZ\nYour Score is: ${questionsManager.getCurrentScore()}',
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
                    height: 5,
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
                                answer: question.answerList.elementAt(index),
                                function: () {
                                  setState(() {
                                    questionsManager.submitResponse(
                                        question.answerList.elementAt(index));
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
  }
}
