import 'package:GeoLearn/Data/Models/QuestionModel.dart';
import 'package:GeoLearn/Domain/Managers/QuizzCreationQuestionsManager.dart';
import 'package:GeoLearn/UI/CustomWidgets/HeroDialog.dart';
import 'package:GeoLearn/UI/CustomWidgets/QuizzPageButton.dart';
import 'package:GeoLearn/UI/Pages/QR_SendingReceiving/QRDisplayPopUp.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class QuizzCreationPage extends StatefulWidget {
  const QuizzCreationPage({super.key});

  @override
  State<QuizzCreationPage> createState() => _QuizzCreationPageState();
}

class _QuizzCreationPageState extends State<QuizzCreationPage> {
  QuizzCreationQuestionsManager quizzCreationQuestionsManager =
      QuizzCreationQuestionsManager();

  CollectionReference databaseCollection =
      FirebaseFirestore.instance.collection('SharableQuizzes');

  String? quizzID;
  List<QuestionModel> quizzList = [];

  String QuestionListToJson(List<QuestionModel> questionList) {
    String jsonQuestionList = "[";
    for (var i = 0; i < quizzList.length; i++) {
      jsonQuestionList += QuestionToJson(quizzList[i]);
      if (i + 1 < quizzList.length) {
        jsonQuestionList += ", ";
      }
    }
    jsonQuestionList += "]";
    // print(jsonQuestionList);
    return jsonQuestionList;
  }

  String QuestionToJson(QuestionModel question) {
    // print(question.toJson().toString());
    return question.toJson().toString();
  }

  @override
  Widget build(BuildContext context) {
    QuestionModel question = quizzCreationQuestionsManager.getCurrentQuestion();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizz Creation'),
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
                  height: MediaQuery.of(context).size.height * 0.62, // 0.65
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        8,
                      ),
                    ),
                  ),
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
                                  height: 8,
                                ),
                              ],
                            )
                          : const SizedBox(
                              height: 4,
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
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          quizzCreationQuestionsManager.passQuestion();
                        });
                      },
                      child: const Text('Question Suivante'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // ADD QUESTION TO QUIZZLIST
                        quizzList.add(question);
                        // DISPLAY A NEW QUESTION ON THE PHONE
                        setState(() {
                          quizzCreationQuestionsManager.passQuestion();
                        });
                      },
                      child: const Text('Ajouter au Quizz'),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    // CHECK SI LA LISTE DE QUESTION N'EST PAS VIDE
                    if (quizzList.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "You cannot submit the quiz at this time because you have not chosen a question yet.\n\nPlease provide at least 1 question to the quizz to be able to send it.\n",
                          ),
                        ),
                      );
                    } else {
                      // CREATE THE "quizzID" FOR MAKE THE FIREBASE DOC
                      quizzID = const Uuid().v4();
                      // SEND JSON TO "quizzID Firebase Doc"
                      databaseCollection.doc(quizzID).set({
                        'json': QuestionListToJson(quizzList),
                      });
                      // DISPLAY QR WITH "quizzID"
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        HeroDialogRoute(
                          builder: (context) => Center(
                            child: QRDisplayPopUp(
                              QRValue: quizzID!,
                            ),
                          ),
                        ),
                      );
                    }
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
