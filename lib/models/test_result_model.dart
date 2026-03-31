class TestResult {
  String id;
  String userId;
  String testName;
  int totalQuestions;
  int correctAnswers;
  int wrongAnswers;
  double percentage;
  DateTime testDate;
  int timeTaken;
  List<QuestionResult> questionResults;

  TestResult({
    required this.id,
    required this.userId,
    required this.testName,
    required this.totalQuestions,
    required this.correctAnswers,
    required this.wrongAnswers,
    required this.percentage,
    required this.testDate,
    required this.timeTaken,
    required this.questionResults,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'testName': testName,
      'totalQuestions': totalQuestions,
      'correctAnswers': correctAnswers,
      'wrongAnswers': wrongAnswers,
      'percentage': percentage,
      'testDate': testDate.toIso8601String(),
      'timeTaken': timeTaken,
      'questionResults': questionResults.map((q) => q.toJson()).toList(),
    };
  }

  factory TestResult.fromJson(Map<String, dynamic> json) {
    return TestResult(
      id: json['id'],
      userId: json['userId'],
      testName: json['testName'],
      totalQuestions: json['totalQuestions'],
      correctAnswers: json['correctAnswers'],
      wrongAnswers: json['wrongAnswers'],
      percentage: json['percentage'],
      testDate: DateTime.parse(json['testDate']),
      timeTaken: json['timeTaken'],
      questionResults: List<QuestionResult>.from(
        (json['questionResults'] as List).map((q) => QuestionResult.fromJson(q)),
      ),
    );
  }
}

class QuestionResult {
  String questionId;
  int userAnswerIndex;
  int correctAnswerIndex;
  bool isCorrect;
  int timeSpent;

  QuestionResult({
    required this.questionId,
    required this.userAnswerIndex,
    required this.correctAnswerIndex,
    required this.isCorrect,
    required this.timeSpent,
  });

  Map<String, dynamic> toJson() {
    return {
      'questionId': questionId,
      'userAnswerIndex': userAnswerIndex,
      'correctAnswerIndex': correctAnswerIndex,
      'isCorrect': isCorrect,
      'timeSpent': timeSpent,
    };
  }

  factory QuestionResult.fromJson(Map<String, dynamic> json) {
    return QuestionResult(
      questionId: json['questionId'],
      userAnswerIndex: json['userAnswerIndex'],
      correctAnswerIndex: json['correctAnswerIndex'],
      isCorrect: json['isCorrect'],
      timeSpent: json['timeSpent'],
    );
  }
}