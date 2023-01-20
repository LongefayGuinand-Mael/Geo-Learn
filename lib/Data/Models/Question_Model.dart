class Answer {
  final String _value;
  final bool _isValid;

  Answer({
    required value,
    required isValid,
  })  : _value = value,
        _isValid = isValid;

  Answer.fromJSON(Map<String, dynamic> json)
      : _value = json['value'] ?? '',
        _isValid = json['isValid'] ?? false;

  Map<String, dynamic> toJSON() => {
        'value': _value,
        'isValid': _isValid,
      };

  bool get isValid => _isValid;

  @override
  String toString() => _value;
}

class Question_Model {
  final QuestionType questionType; // questionType = enum
  final String questionSubject;
  final String questionText;
  final String pictureURL;
  // final List<String> answerList;
  // final String rightAnswer;
  final List<Answer> answerList;
  Question_Model(
    this.questionType,
    this.questionSubject,
    this.questionText,
    this.pictureURL,
    this.answerList,
    // this.rightAnswer,
  );

  Question_Model.fromJson(Map<String, dynamic> json)
      : questionType = json[''] ?? QuestionType.TEXT,
        questionSubject = json[''] ?? '',
        questionText = json[''] ?? '',
        pictureURL = json[''] ?? '',
        answerList = json['answerList'].map((a) => Answer.fromJSON(a)).toList();
  // answerList = json[''] ?? '',
  // rightAnswer = json[''] ?? '',
  // responses = json[''] ?? '';

  Map<String, dynamic> toJson() => {
        'questionType': questionType,
        'questionSubject': questionSubject,
        'questionText': questionText,
        'answerList': answerList.map((a) => a.toJSON()).toList(),
        // 'data': data,
        // 'responses': responses,
      };
}

enum QuestionType {
  IMAGE,
  TEXT,
}
