import 'dart:math';

import 'package:GeoLearn/Data/DataSources/MockQuestions_DataSource.dart';
import 'package:GeoLearn/Data/DataSources/Questions_DataSource.dart';
import 'package:GeoLearn/Data/Models/Question_Model.dart';

class QuestionsManager {
  late List<Question_Model> _questions;
  late int _currentQuestionIndex;
  late int _score;
  late int _nbQuestionsWanted;
  late bool _isPartyFinish;

  QuestionsManager() {
    Questions_DataSource questions_dataSource = MockQuestions_DataSource();
    _questions = questions_dataSource.getQuestions();
    _currentQuestionIndex = Random().nextInt(_questions.length);
    _score = 0;
    _nbQuestionsWanted = 10;
    _isPartyFinish = false;
  }

  Question_Model getCurrentQuestion() {
    return _questions[_currentQuestionIndex];
  }

  int getCurrentScore() {
    return _score;
  }

  bool getIsFinished() {
    return _isPartyFinish;
  }

  bool submitResponse(Answer a) {
    bool isCorrect = a.isValid;
    // Questions_UseCase().isCorrectAnswer(getCurrentQuestion(),a);

    if (isCorrect == true) {
      _score += 1;
      if (_nbQuestionsWanted != 1) {
        // We want to stop at 1 because we already reach the number of question wanted
        _currentQuestionIndex = Random().nextInt(_questions.length);
        _nbQuestionsWanted += -1;
      } else {
        _isPartyFinish = true;
      }
      return true;
    } else {
      if (_nbQuestionsWanted != 1) {
        _currentQuestionIndex = Random().nextInt(_questions.length);
        _nbQuestionsWanted += -1;
      } else {
        _isPartyFinish = true;
      }
      return false;
    }
  }
}
