import 'package:GeoLearn/Data/DataSources/MockQuestions_DataSource.dart';
import 'package:GeoLearn/Data/Models/Question_Model.dart';
import 'package:GeoLearn/Data/DataSources/Questions_DataSource.dart';


class Questions_UseCase {
  List<Question_Model> getQuestions() {
    Questions_DataSource questions_DataSource = MockQuestions_DataSource();
    var question = questions_DataSource.getQuestions();
    return question;
  }

  bool? isCorrectAnswer(Question_Model question, String response) {
    return question.responses[response];
  }
}
