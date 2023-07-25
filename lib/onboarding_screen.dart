import 'package:business_app/onboarding_first_screen.dart';
import 'package:business_app/onboarding_second_screen.dart';
import 'package:business_app/onboarding_third_screen.dart';
import 'package:business_app/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 2);
                });
              },
              controller: pageController,
              children: const [
                OnBoardingFirstScreen(),
                OnBoardingSecondScreen(),
                OnBoardingThirdScreen(),
              ],
            ),
            const Align(
              alignment: Alignment.topCenter,
              child: Text("Accrue",
                  style: TextStyle(
                    height: 4,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    fontFamily: "Circular Std",
                    fontStyle: FontStyle.normal,
                  )),
            ),
            Container(
                alignment: const Alignment(0, 0.45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmoothPageIndicator(
                        controller: pageController,
                        count: 3,
                        effect: const SlideEffect(
                            activeDotColor: Colors.black,
                            dotColor: Colors.grey,
                            dotHeight: 10,
                            dotWidth: 10))
                  ],
                )),
            onLastPage
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ).copyWith(bottom: 60),
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamedAndRemoveUntil(
                          context, RoutesName.secondScreen, (route) => false),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: const Size(400, 55),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child: const Text("Create an account",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            fontFamily: "Circular Std",
                            fontStyle: FontStyle.normal,
                          )),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ).copyWith(bottom: 60),
                    child: ElevatedButton(
                      onPressed: () => pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: const Size(400, 55),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child: const Text("Create an account",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            fontFamily: "Circular Std",
                            fontStyle: FontStyle.normal,
                          )),
                    ),
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?",
                    style: TextStyle(
                      height: 8,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      fontFamily: "Circular Std",
                      fontStyle: FontStyle.normal,
                    )),
                InkWell(
                  onTap: () => Navigator.pushNamedAndRemoveUntil(
                      context, RoutesName.thirdScreen, (route) => false),
                  child: const Text("Log In",
                      style: TextStyle(
                        height: 8,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                        fontFamily: "Circular Std",
                        fontStyle: FontStyle.normal,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
