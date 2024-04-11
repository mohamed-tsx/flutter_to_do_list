import 'package:flutter/material.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

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
              "images/Group 182.png",
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            "Manage your tasks",
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
            "You can easily manage all of your daily tasks in DoMe for free",
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
