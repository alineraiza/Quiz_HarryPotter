import 'package:flutter/material.dart';
import 'package:quiz/pages/quiz/components/body.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
        TextButton(onPressed: (){}, child: Text('Skip', style: TextStyle(color: Colors.white),))
      ]),
      body: Body(),
    );
  }
}

