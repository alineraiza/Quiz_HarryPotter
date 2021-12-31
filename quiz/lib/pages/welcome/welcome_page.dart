import 'package:flutter/material.dart';
import 'package:quiz/palet_colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
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
        Padding(
          padding: const EdgeInsets.only(top: 155, left: 12, right: 12),
          child: Column(
            children: [
              Text(
                'Let\'s play quiz!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Text('Enter your informations below'),
              SizedBox(
                height: 28,
              ),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0XFF152D35),
                    hintText: 'Full Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: (){
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 480, left: 52),
            child: Container(
              alignment: Alignment.center,
              width: 262,
              height: 48,
              decoration: BoxDecoration(
                gradient: kPrimaryGradient, 
                borderRadius: BorderRadius.circular(12)
              ),
                child: Text('Lets start quiz',
                  style: TextStyle(
                    color: Colors.black, 
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
        ),
      ]),
    );
  }
}
