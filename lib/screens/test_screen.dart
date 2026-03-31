import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  final String testName;

  TestScreen({required this.testName});

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int currentQuestion = 0;
  int score = 0;
  List<int?> selectedAnswers = [];

  final List<Map<String, dynamic>> questions = [
    {
      'question': 'What is the capital of India?',
      'options': ['Delhi', 'Mumbai', 'Bangalore', 'Hyderabad'],
      'correctAnswer': 0,
    },
    {
      'question': 'What is 2 + 2?',
      'options': ['3', '4', '5', '6'],
      'correctAnswer': 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Question ${currentQuestion + 1}/${questions.length}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              questions[currentQuestion]['question'],
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: questions[currentQuestion]['options'].length,
                itemBuilder: (context, index) {
                  return RadioListTile(
                    title: Text(questions[currentQuestion]['options'][index]),
                    value: index,
                    groupValue: selectedAnswers.length > currentQuestion
                        ? selectedAnswers[currentQuestion]
                        : null,
                    onChanged: (value) {
                      setState(() {
                        if (selectedAnswers.length <= currentQuestion) {
                          selectedAnswers.add(value);
                        } else {
                          selectedAnswers[currentQuestion] = value;
                        }
                      });
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentQuestion > 0)
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentQuestion--;
                      });
                    },
                    child: Text('Previous'),
                  ),
                ElevatedButton(
                  onPressed: () {
                    if (currentQuestion < questions.length - 1) {
                      setState(() {
                        currentQuestion++;
                      });
                    } else {
                      // Calculate score and show result
                      _showResult();
                    }
                  },
                  child: Text(currentQuestion == questions.length - 1
                      ? 'Finish'
                      : 'Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showResult() {
    int correctCount = 0;
    for (int i = 0; i < questions.length; i++) {
      if (selectedAnswers[i] == questions[i]['correctAnswer']) {
        correctCount++;
      }
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Test Complete'),
        content: Text('Score: $correctCount/${questions.length}'),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: Text('Done'),
          ),
        ],
      ),
    );
  }
}