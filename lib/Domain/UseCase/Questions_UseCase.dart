import 'package:GeoLearn/Data/DataSources/MockQuestions_DataSource.dart';
import 'package:GeoLearn/Data/DataSources/Questions_DataSource.dart';
import 'package:GeoLearn/Data/Models/QuestionModel.dart';

class Questions_UseCase {
  List<QuestionModel> getQuestions() {
    Questions_DataSource questions_DataSource = MockQuestions_DataSource();
    var question = questions_DataSource.getQuestions();
    return question;
  }
}
