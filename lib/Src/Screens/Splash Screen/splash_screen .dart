import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Src/Screens/Onboarding%20Screens/onboarding_screen.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 3500), () {});
    Get.offAll(
      () => const OnboardingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 22, 20),
      body: SafeArea(
        child: Center(
          child: Image.asset("images/Logo.png"),
        ),
      ),
    );
  }
}
