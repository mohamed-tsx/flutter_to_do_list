import 'package:flutter/material.dart';

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({super.key});

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
              "images/Frame 161.png",
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            "Organize your tasks",
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
            "You can organize your daily tasks by adding your tasks into separate categories",
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
