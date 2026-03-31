import 'package:flutter/material.dart';

class SubjectScreen extends StatefulWidget {
  final String subjectName;

  SubjectScreen({required this.subjectName});

  @override
  _SubjectScreenState createState() => _SubjectScreenState();
}

class _SubjectScreenState extends State<SubjectScreen> {
  final List<String> chapters = [
    'Chapter 1: Introduction',
    'Chapter 2: Basics',
    'Chapter 3: Advanced',
    'Chapter 4: Practice',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.subjectName),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: chapters.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.chapter, color: Colors.blue),
              title: Text(chapters[index]),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Navigate to chapter details
              },
            ),
          );
        },
      ),
    );
  }
}