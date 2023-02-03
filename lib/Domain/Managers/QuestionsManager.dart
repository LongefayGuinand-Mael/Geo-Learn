import 'dart:convert';
import 'dart:math';

import 'package:GeoLearn/Data/DataSources/MockQuestions_DataSource.dart';
import 'package:GeoLearn/Data/DataSources/Questions_DataSource.dart';
import 'package:GeoLearn/Data/Models/QuestionModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class QuestionsManager {
  late String firestoreID;
  late List<QuestionModel> questionList;
  late int _currentQuestionIndex;
  late int _score;
  late int _nbQuestionsWanted;
  late bool _isPartyFinish;

  var db = FirebaseFirestore.instance;

  List<QuestionModel> parseJsonStringToQuestionList(String jsonString) {
    final List<dynamic> jsonData = jsonDecode(jsonString);
    var questionList = jsonData.map((a) => QuestionModel.fromJson(a)).toList();
    return questionList;
  }

  QuestionsManager() {
    _score = 0;
    _isPartyFinish = false;
  }

  bool _isPendingTest = false;
  // Permet de sécuriser le fait que la fonction loadData agit sur les
  // variables uniquement lors de l'initialisation du quizz
  // -> et non lors de setState(() {})

  loadData({String? firestoreDocumentID}) async {
    if (!_isPendingTest) {
      _isPendingTest = true;

      firestoreID = firestoreDocumentID!;

      Questions_DataSource questionsDataSource = MockQuestions_DataSource();
      if (firestoreID.isEmpty) {
        questionList = questionsDataSource.getQuestions();
      } else {
        questionList = [];
        print("Before");
        await Future.delayed(const Duration(milliseconds: 1500));
        print("After");
        String questionListJson = await db
            .collection("SharableQuizzes")
            .doc(firestoreID)
            .get()
            .then((snapshot) {
          if (snapshot.exists) {
            return snapshot.get('json');
          } else {
            return "Error";
          }
        });
        if (questionListJson != "Error") {
          questionList = parseJsonStringToQuestionList(questionListJson);
          print(questionList);
        } else {
          _isPartyFinish = true;
        }
      }
      _nbQuestionsWanted = (firestoreID.isEmpty) ? 10 : questionList.length;
      _currentQuestionIndex =
          (firestoreID.isEmpty) ? Random().nextInt(questionList.length) : 0;
    }
  }

  QuestionModel getCurrentQuestion() {
    return questionList[_currentQuestionIndex];
  }

  int getCurrentScore() {
    return _score;
  }

  bool getIsFinished() {
    return _isPartyFinish;
  }

  bool submitResponse(Answer givenAnswer) {
    bool isCorrect = givenAnswer.isValid;

    if (isCorrect == true) {
      _score += 1;
      if (_nbQuestionsWanted != 1) {
        // We want to stop at 1 because we already reach the number of question wanted
        if (firestoreID.isEmpty) {
          //Protocole pour Quizz Perso
          print("ID Question En Cours :  ${_currentQuestionIndex}");
          int tempIndex;
          // Do-While : Évite de lancer 2 fois la même question d'affilé
          do {
            tempIndex = Random().nextInt(questionList.length);
          } while (tempIndex == _currentQuestionIndex);
          _currentQuestionIndex = tempIndex;
        } else {
          //Protocole pour Custom Quizz
          _currentQuestionIndex += 1;
        }
        _nbQuestionsWanted += -1;
      } else {
        _isPartyFinish = true;
      }
      return true;
    } else {
      if (_nbQuestionsWanted != 1) {
        // We want to stop at 1 because we already reach the number of question wanted
        if (firestoreID.isEmpty) {
          //Protocole pour Quizz Perso
          print("ID Question En Cours :  ${_currentQuestionIndex}");
          int tempIndex;
          // Do-While : Évite de lancer 2 fois la même question d'affilé
          do {
            tempIndex = Random().nextInt(questionList.length);
          } while (tempIndex == _currentQuestionIndex);
          _currentQuestionIndex = tempIndex;
        } else {
          //Protocole pour Custom Quizz
          _currentQuestionIndex += 1;
        }
        _nbQuestionsWanted += -1;
      } else {
        _isPartyFinish = true;
      }
      return false;
    }
  }
}
