class Question_Model {
  final QuestionType questionType; // questionType = enum
  final String questionSubject;
  final String questionText;
  final String pictureURL;
  final List<String> answerList;
  final String rightAnswer;
  Question_Model(
    this.questionType,
    this.questionSubject,
    this.questionText,
    this.pictureURL,
    this.answerList,
    this.rightAnswer,
  );

  // Question_Model.fromJson(Map<String, dynamic> json)
  //     : questionType = json[''] ?? QuestionType.TEXT,
  //       questionSubject = json[''] ?? '',
  //       questionText = json[''] ?? '',
  //       pictureURL = json[''] ?? '',
  //       answerList = json[''] ?? '',
  //       rightAnswer = json[''] ?? '',
  //       // responses = json[''] ?? '';

  // Map<String, dynamic> toJson() => {
  //       'questionType': questionType,
  //       'questionSubject': questionSubject,
  //       'questionText': questionText,
  //       'data': data,
  //       'responses': responses,
  //     };
}

enum QuestionType {
  IMAGE,
  TEXT,
}
