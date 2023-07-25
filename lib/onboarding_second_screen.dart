import 'package:flutter/material.dart';

class OnBoardingSecondScreen extends StatefulWidget {
  const OnBoardingSecondScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<OnBoardingSecondScreen> createState() => _OnBoardingSecondScreenState();
}

class _OnBoardingSecondScreenState extends State<OnBoardingSecondScreen> {
  List<String> text = [
    "Invest like a beginner,",
    "earn like a pro",
    "Accrue helps you grow your idle money with dollar savings,",
    "stocks, and crypto.",
    "Try out our time machine?",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 50, right: 50, bottom: 30, top: 100),
              child: Image.asset(
                'assets/images/presentation_show.png',
              ),
            ),
            for (int index = 0; index < 5; index++)
              Text(text[index].toString(),
                  style: TextStyle(
                    height: index == 4
                        ? 5
                        : index == 2
                            ? 3
                            : 0,
                    color: index == 0 || index == 1
                        ? const Color(0xff000000)
                        : index == 2 || index == 3
                            ? const Color(0xff8C8A87)
                            : const Color(0xffEE9136),
                    fontWeight: index == 0 || index == 1
                        ? FontWeight.w700
                        : FontWeight.w500,
                    fontSize: index == 0 || index == 1 ? 22 : 12,
                    fontFamily: "Circular Std",
                    fontStyle: FontStyle.normal,
                  )),
          ],
        ),
      ),
    );
  }
}
