class Question {
  String id;
  String subjectId;
  String chapterId;
  String questionText;
  List<String> options;
  int correctAnswerIndex;
  String explanation;
  int timeLimit;

  Question({
    required this.id,
    required this.subjectId,
    required this.chapterId,
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
    required this.explanation,
    required this.timeLimit,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'subjectId': subjectId,
      'chapterId': chapterId,
      'questionText': questionText,
      'options': options,
      'correctAnswerIndex': correctAnswerIndex,
      'explanation': explanation,
      'timeLimit': timeLimit,
    };
  }

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'],
      subjectId: json['subjectId'],
      chapterId: json['chapterId'],
      questionText: json['questionText'],
      options: List<String>.from(json['options']),
      correctAnswerIndex: json['correctAnswerIndex'],
      explanation: json['explanation'],
      timeLimit: json['timeLimit'],
    );
  }
}