import 'package:GeoLearn/Data/DataSources/Questions_DataSource.dart';
import 'package:GeoLearn/Data/Models/Question_Model.dart';

class MockQuestions_DataSource implements Questions_DataSource {
  @override
  List<Question_Model> getQuestions() {
    return [
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_France_%281794–1815%2C_1830–1974%2C_2020–present%29.svg/langfr-2560px-Flag_of_France_%281794–1815%2C_1830–1974%2C_2020–present%29.svg.png",
        [
          Answer(value: "Pays-Bas", isValid: false),
          Answer(value: "Russie", isValid: false),
          Answer(value: "France", isValid: true),
          Answer(value: "Roumanie", isValid: false),
          Answer(value: "Italie", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Flag_of_the_United_Kingdom_%283-5%29.svg/langfr-2560px-Flag_of_the_United_Kingdom_%283-5%29.svg.png",
        [
          Answer(value: "Danemark", isValid: false),
          Answer(value: "Irlande", isValid: false),
          Answer(value: "Islande", isValid: false),
          Answer(value: "Royaume Uni", isValid: true),
          Answer(value: "Australie", isValid: false),
        ],
      ),
    ];
  }
}
