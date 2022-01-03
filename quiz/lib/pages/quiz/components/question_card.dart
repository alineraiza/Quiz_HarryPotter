import 'package:flutter/material.dart';
import 'package:quiz/models/questions.dart';
import 'package:quiz/pages/quiz/components/options.dart';
import 'package:quiz/palet_colors.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              question.question,
              style:
                Theme.of(context).textTheme.headline6?.copyWith(color: kBlackColor),
            ),
            Option(),
            Option(),
            Option(),
            Option(),
          ],
        ),
      ),
    );
  }
}
