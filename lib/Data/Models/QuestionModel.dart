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
        _isValid = (json['isValid'] == 'true') ? true : false;

  Map<String, dynamic> toJSON() => {
        '"value"': '"$_value"',
        '"isValid"': _isValid,
      };

  bool get isValid => _isValid;

  @override
  String toString() => _value;
}

class QuestionModel {
  // final String questionID;
  final QuestionType questionType; // questionType = enum
  final String questionSubject;
  final String questionText;
  final String pictureURL;
  final List<Answer> answerList;
  QuestionModel(
    // this.questionID,
    this.questionType,
    this.questionSubject,
    this.questionText,
    this.pictureURL,
    this.answerList,
  );

  QuestionModel.fromJson(Map<String, dynamic> json)
      : questionType = (json['questionType'] == "QuestionType.IMAGE")
            ? QuestionType.IMAGE
            : QuestionType.TEXT,
        questionSubject = json['questionSubject'] ?? '',
        questionText = json['questionText'] ?? '',
        pictureURL = json['pictureURL'] ?? '',
        answerList = List<Answer>.from(
          json['answerList'].map((a) => Answer.fromJSON(a)).toList(),
        );

  Map<String, dynamic> toJson() => {
        '"questionType"': '"${questionType.getName}"',
        '"questionSubject"': '"$questionSubject"',
        '"questionText"': '"$questionText"',
        '"pictureURL"': '"$pictureURL"',
        '"answerList"': answerList.map((a) => a.toJSON()).toList(),
      };
}

enum QuestionType {
  IMAGE,
  TEXT,
}

extension EventStateExtension on QuestionType {
  String get getName {
    switch (this) {
      case QuestionType.IMAGE:
        return 'QuestionType.IMAGE';
      case QuestionType.TEXT:
        return 'QuestionType.TEXT';
    }
  }
}
