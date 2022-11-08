import 'dart:math';

import 'package:GeoLearn/Data/DataSources/MockQuestions_DataSource.dart';
import 'package:GeoLearn/Data/DataSources/Questions_DataSource.dart';
import 'package:GeoLearn/Data/Models/Question_Model.dart';
import 'package:GeoLearn/Domain/UseCase/Questions_UseCase.dart';

class QuestionsManager {
  late List<Question_Model> _questions;
  late int _currentQuestionIndex;
  late int _score;

  QuestionsManager() {
    Questions_DataSource questions_dataSource = MockQuestions_DataSource();
    _questions = questions_dataSource.getQuestions();
    _currentQuestionIndex = 0;
    _score = 0;
  }

  Question_Model getCurrentQuestion() {
    return _questions[_currentQuestionIndex];
  }

  bool submitResponse(String response) {
    bool? isCorrect =
        Questions_UseCase().isCorrectAnswer(getCurrentQuestion(), response);

    if (isCorrect == true) {
      _currentQuestionIndex = Random().nextInt(_questions.length);
      _score++;
      return true;
    } else {
      return false;
    }
  }
}
