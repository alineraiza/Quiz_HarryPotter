import 'package:flutter/material.dart';
import 'package:quiz/pages/quiz/components/progress_bar.dart';
import 'package:quiz/palet_colors.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        left: -30,
        top: MediaQuery.of(context).size.height * 0,
        child: Image.asset(
          "assets/icons/question.svg",
          width: 900,
          height: 800,
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Color(0XFF152D35).withOpacity(0.9),
        ),
      ),
      Column(children: [
        SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(children: [
                ProgressBar(),
              ])),
        ),
      ])
    ]);
  }
}

