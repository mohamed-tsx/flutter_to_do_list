import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/Src/Screens/Register%20and%20Login%20Screens/create_account_screen.dart';
import 'package:flutter_to_do_list/Src/Screens/Register%20and%20Login%20Screens/login_screen.dart';
import 'package:get/get.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 22, 20),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 43,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  Center(
                    child: Text(
                      "Welcome to UpTodo",
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Please login to your account or create new account to continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  // Login Button
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 140,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                        color: const Color(0xFF8775FF),
                        borderRadius: BorderRadius.circular(12)),
                    child: GestureDetector(
                      onTap: () {
                        Get.offAll(
                          () => LoginScreen(),
                        );
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 110,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFF8775FF),
                        width: 2.0,
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Get.offAll(
                          () => CreateAccountScreen(),
                        );
                      },
                      child: const Text(
                        "Create account",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
