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
                  Text(question.questionSubject),
                  Text(question.questionText),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Image.network(question.data),
                  ),
                  Container(
                    height: 10,
                    color: Colors.transparent,
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
                            itemCount: question.responses.length,
                            itemBuilder: (BuildContext context, int index) {
                              return QuizzPageButton(
                                labelText:
                                    question.responses.keys.elementAt(index),
                                function: () {
                                  setState(() {
                                    questionsManager.submitResponse(question
                                        .responses.keys
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
  }
}
