import 'package:flutter/material.dart';

class LeaderboardScreen extends StatefulWidget {
  @override
  _LeaderboardScreenState createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  final List<Map<String, dynamic>> leaderboard = [
    {'rank': 1, 'name': 'Rahul Singh', 'score': 950, 'tests': 25},
    {'rank': 2, 'name': 'Priya Sharma', 'score': 920, 'tests': 24},
    {'rank': 3, 'name': 'Akshay Patel', 'score': 890, 'tests': 22},
    {'rank': 4, 'name': 'Neha Verma', 'score': 860, 'tests': 20},
    {'rank': 5, 'name': 'Arjun Desai', 'score': 830, 'tests': 19},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaderboard'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: leaderboard.length,
        itemBuilder: (context, index) {
          var entry = leaderboard[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: Container(
              color: entry['rank'] == 1
                  ? Colors.amber.withOpacity(0.1)
                  : entry['rank'] == 2
                      ? Colors.grey.withOpacity(0.1)
                      : entry['rank'] == 3
                          ? Colors.orange.withOpacity(0.1)
                          : Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    '${entry['rank']}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                title: Text(
                  entry['name'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Tests: ${entry['tests']}'),
                trailing: Text(
                  '${entry['score']}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}