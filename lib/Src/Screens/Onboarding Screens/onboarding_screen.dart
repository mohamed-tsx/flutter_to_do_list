import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_to_do_list/Src/Screens/Home%20Screen/home_screen.dart';
import 'package:flutter_to_do_list/Src/Screens/Onboarding%20Screens/onboarding_page1.dart';
import 'package:flutter_to_do_list/Src/Screens/Onboarding%20Screens/onboarding_page3.dart';
import 'package:flutter_to_do_list/Src/Screens/Onboarding%20Screens/onboarding_page_2.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = new PageController();
  bool onLastPage = false;
  bool onFirstPage = true;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onFirstPage = (index == 0);
                onLastPage = (index == 2);
              });
            },
            children: const [
              OnboardingPage1(),
              OnboardingPage2(),
              OnboardingPage3(),
            ],
          ),
          // Dot indicator
          Container(
            alignment: Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Back
                Visibility(
                  visible: !onFirstPage,
                  child: GestureDetector(
                    onTap: () {
                      _controller.previousPage(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Container(
                      width: 80,
                      child: const Text(
                        textAlign: TextAlign.center,
                        "Back",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                SmoothPageIndicator(controller: _controller, count: 3),
                // Next
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Get.offAll(
                            () => HomeScreen(),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          width: onLastPage ? 120 : 80,
                          decoration: BoxDecoration(
                            color: const Color(0xFF8775FF),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            textAlign: TextAlign.center,
                            "Get Started",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          width: 80,
                          decoration: BoxDecoration(
                            color: const Color(0xFF8775FF),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            textAlign: TextAlign.center,
                            "Next",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
