class Subject {
  String id;
  String name;
  String description;
  String icon;
  int totalChapters;
  int totalQuestions;
  String difficulty;

  Subject({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.totalChapters,
    required this.totalQuestions,
    required this.difficulty,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'icon': icon,
      'totalChapters': totalChapters,
      'totalQuestions': totalQuestions,
      'difficulty': difficulty,
    };
  }

  factory Subject.fromJson(Map<String, dynamic> json) {
    return Subject(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      icon: json['icon'],
      totalChapters: json['totalChapters'],
      totalQuestions: json['totalQuestions'],
      difficulty: json['difficulty'],
    );
  }
}