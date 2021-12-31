import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:quiz/Controllers/questions_controller.dart';
import 'package:quiz/palet_colors.dart';

class ProgressBar extends StatelessWidget {

  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 35,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0XFF9D9D9D), width: 2),
            borderRadius: BorderRadius.circular(35),
          ),
          child: GetBuilder<QuestionController>(
            init: QuestionController(),
            builder:(controller){
              print(controller.animation.value);
              return Stack(children: [
                // LayoutBuilder(
                //   builder: (context, constraints) => Container(
                //     width: constraints.maxWidth * controller.animation.value,
                //     decoration: BoxDecoration(
                //       gradient: kPrimaryGradient,
                //       borderRadius: BorderRadius.circular(50),
                //     ),
                //   ),
                // ),
                // Positioned.fill(
                //   child: Padding(
                //     padding:
                //       const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [Text('18 sec'), Icon(Icons.access_alarms)],
                //     ),
                //   ),
                // ),
              ]);
            }
          ),
        ),
        SizedBox(height: 30,)
      ],
    );
  }
}
