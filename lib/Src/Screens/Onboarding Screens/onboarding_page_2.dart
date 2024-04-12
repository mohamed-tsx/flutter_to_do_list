import 'package:flutter/material.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 70,
      ),
      color: Color.fromARGB(255, 22, 22, 20),
      child: Column(
        children: [
          Container(
            child: Image.asset(
              "images/Frame 162.png",
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            "Create daily routine",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            textAlign: TextAlign.center,
            "In Uptodo  you can create your personalized routine to stay productive",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
