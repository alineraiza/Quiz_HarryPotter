import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/models/questions.dart';

class QuestionController extends GetxController with SingleGetTickerProviderMixin {
  
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => this._animation;

  List<Question> _questions = sample_data.map((question) => Question(
    id: question['id'],
    question: question['question'],
    options: question['option'],
    answer: question['answer_index']
  )).toList();

  List<Question> get questions => this._questions;

  @override
  void onInit(){

    _animationController = 
      AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
    ..addListener(() {
      update();
    });

    _animationController.forward();
    super.onInit();
  }
}


