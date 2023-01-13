import 'dart:math';

import 'package:GeoLearn/Data/DataSources/MockQuestions_DataSource.dart';
import 'package:GeoLearn/Data/DataSources/Questions_DataSource.dart';
import 'package:GeoLearn/Data/Models/Question_Model.dart';
import 'package:GeoLearn/Domain/Managers/QuestionsManager.dart';
import 'package:GeoLearn/UI/CustomWidgets/HeroDialog.dart';
import 'package:GeoLearn/UI/CustomWidgets/QuizzPageButton.dart';
import 'package:GeoLearn/UI/Pages/QR_SendingReceiving/QRDisplayPopUp.dart';
import 'package:flutter/material.dart';

class QuizzCreationPage extends StatefulWidget {
  @override
  State<QuizzCreationPage> createState() => _QuizzCreationPageState();
}

class _QuizzCreationPageState extends State<QuizzCreationPage> {
  QuestionsManager questionsManager = QuestionsManager();

  @override
  Widget build(BuildContext context) {
    Question_Model question = questionsManager.getCurrentQuestion();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizz Creation'),
        actions: [
          ElevatedButton(
            onPressed: () async {},
            child: const Text("GPT3"),
          ),
        ],
      ),
      body: Center(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: MediaQuery.of(context).size.width * 1.45,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        5,
                      ),
                    ),
                  ),
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
                                  child: Image.network(question.data),
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
                                itemCount: question.responses.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return QuizzPageButton(
                                    labelText: question.responses.keys
                                        .elementAt(index),
                                    function: () {},
                                  );
                                },
                              ),
                            ),
                            Flexible(
                              child: Container(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Questions_DataSource questions_dataSource =
                              MockQuestions_DataSource();
                          var _questions = questions_dataSource.getQuestions();
                          Random().nextInt(_questions.length);
                        });
                        //questionManager._currentQuestionIndex = Random().nextInt(_questions.length);
                      },
                      child: const Text('Question Suivante'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Ajouter au Quizz'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      HeroDialogRoute(
                        builder: (context) => Center(
                          child: QRDisplayPopUp(
                            QRValue:
                                "https://www.youtube.com/watch?v=dQw4w9WgXcQ", //RICK ROLL (for now)
                          ),
                        ),
                      ),
                    );
                  },
                  child: const Text('Sending by QR'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
