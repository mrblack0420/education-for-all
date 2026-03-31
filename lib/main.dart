import 'package:flutter/material.dart';
import 'splash_screen.dart'; // Make sure this file exists

void main() {
  runApp(EducationForAllApp());
}

class EducationForAllApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Education For All',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
      },
    );
  }
}