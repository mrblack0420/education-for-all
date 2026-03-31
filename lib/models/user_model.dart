class User {
  String uid;
  String name;
  String email;
  String phoneNumber;
  String profilePicUrl;
  String preferredLanguage;
  DateTime createdAt;
  DateTime lastLogin;
  int totalTestsTaken;
  double averageScore;
  bool isGuest;

  User({
    required this.uid,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.profilePicUrl,
    required this.preferredLanguage,
    required this.createdAt,
    required this.lastLogin,
    required this.totalTestsTaken,
    required this.averageScore,
    required this.isGuest,
  });

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'profilePicUrl': profilePicUrl,
      'preferredLanguage': preferredLanguage,
      'createdAt': createdAt.toIso8601String(),
      'lastLogin': lastLogin.toIso8601String(),
      'totalTestsTaken': totalTestsTaken,
      'averageScore': averageScore,
      'isGuest': isGuest,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      uid: json['uid'],
      name: json['name'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      profilePicUrl: json['profilePicUrl'],
      preferredLanguage: json['preferredLanguage'],
      createdAt: DateTime.parse(json['createdAt']),
      lastLogin: DateTime.parse(json['lastLogin']),
      totalTestsTaken: json['totalTestsTaken'],
      averageScore: json['averageScore'],
      isGuest: json['isGuest'],
    );
  }
}