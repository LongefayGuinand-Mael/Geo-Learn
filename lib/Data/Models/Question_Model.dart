class Question_Model {
  final QuestionType questionType; // questionType = enum
  final String questionSubject;
  final String questionText;
  final data;
  final Map<String, bool>
      responses; //bool : donc questions avec 1 seule réponse possible
  Question_Model(
    this.questionType,
    this.questionSubject,
    this.questionText,
    this.data,
    this.responses,
  );
}


enum QuestionType {
  IMAGE,
  TEXT,
  AUDIO,
  VIDEO,
}
