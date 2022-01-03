import 'package:flutter/material.dart';
import 'package:quiz/pages/quiz/quiz_page.dart';
import 'package:quiz/pages/welcome/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz Harry Potter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: QuizPage(),
    );
  }
}

