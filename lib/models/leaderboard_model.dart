class LeaderboardEntry {
  String userId;
  String userName;
  String profilePicUrl;
  double totalScore;
  int rank;
  int testsTaken;
  double averagePercentage;
  DateTime lastUpdated;

  LeaderboardEntry({
    required this.userId,
    required this.userName,
    required this.profilePicUrl,
    required this.totalScore,
    required this.rank,
    required this.testsTaken,
    required this.averagePercentage,
    required this.lastUpdated,
  });

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'userName': userName,
      'profilePicUrl': profilePicUrl,
      'totalScore': totalScore,
      'rank': rank,
      'testsTaken': testsTaken,
      'averagePercentage': averagePercentage,
      'lastUpdated': lastUpdated.toIso8601String(),
    };
  }

  factory LeaderboardEntry.fromJson(Map<String, dynamic> json) {
    return LeaderboardEntry(
      userId: json['userId'],
      userName: json['userName'],
      profilePicUrl: json['profilePicUrl'],
      totalScore: json['totalScore'],
      rank: json['rank'],
      testsTaken: json['testsTaken'],
      averagePercentage: json['averagePercentage'],
      lastUpdated: DateTime.parse(json['lastUpdated']),
    );
  }
}