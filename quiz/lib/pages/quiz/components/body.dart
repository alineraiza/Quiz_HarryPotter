import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/Controllers/questions_controller.dart';
import 'package:quiz/models/questions.dart';
import 'package:quiz/pages/quiz/components/progress_bar.dart';
import 'package:quiz/pages/quiz/components/question_card.dart';
import 'package:quiz/palet_colors.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
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
        Container(
          child: 
          SafeArea(
            child: Column(
                children: [
                  SizedBox(height: 25,),
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onTap: (){},
                      ),
                  ]),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: ProgressBar(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Text.rich(
                      TextSpan(
                        text: 'Question 1',
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(color: Colors.white),
                        children: [
                          TextSpan(
                            text: '/4',
                            style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(thickness: 2.1),
                  SizedBox(height: 15,),
                  Expanded(child: PageView.builder(
                    itemCount: _questionController.questions.length,
                    itemBuilder: (context, index) => QuestionCard(question: _questionController.questions[index]
                    )),
                  ),
                  SizedBox(height: 15,),
                ],
            ),
          ),
        ),
    ]);
  }
}
