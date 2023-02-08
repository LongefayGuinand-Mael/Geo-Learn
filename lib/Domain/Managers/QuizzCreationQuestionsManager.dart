import 'dart:math';

import 'package:GeoLearn/Data/DataSources/MockQuestions_DataSource.dart';
import 'package:GeoLearn/Data/DataSources/Questions_DataSource.dart';
import 'package:GeoLearn/Data/Models/QuestionModel.dart';

class QuizzCreationQuestionsManager {
  late List<QuestionModel> _questions;
  late int _currentQuestionIndex;

  QuizzCreationQuestionsManager() {
    Questions_DataSource questionsDataSource = MockQuestions_DataSource();
    _questions = questionsDataSource.getQuestions();
    _currentQuestionIndex = Random().nextInt(_questions.length);
  }

  QuestionModel getCurrentQuestion() {
    return _questions[_currentQuestionIndex];
  }

  // bool getAnswerResult(Answer givenAnswer) {
  //   bool isCorrect = givenAnswer.isValid;
  //   return isCorrect;
  // }

  Future<void> passQuestion() async {
    int tempIndex;
    do {
      tempIndex = Random().nextInt(_questions.length);
    } while (tempIndex == _currentQuestionIndex);
    _currentQuestionIndex = tempIndex;
    return;
  }
}
