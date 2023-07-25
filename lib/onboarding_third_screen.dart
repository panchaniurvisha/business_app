import 'package:flutter/material.dart';

class OnBoardingThirdScreen extends StatefulWidget {
  const OnBoardingThirdScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<OnBoardingThirdScreen> createState() => _OnBoardingThirdScreenState();
}

class _OnBoardingThirdScreenState extends State<OnBoardingThirdScreen> {
  List<String> text = [
    "Earn daily in dollars",
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
            for (int index = 0; index < 4; index++)
              Text(text[index].toString(),
                  style: TextStyle(
                    height: index == 3
                        ? 8
                        : index == 1
                            ? 3
                            : 0,
                    // height: index == 3 || index == 0 ? 3 : 0,
                    color: index == 0
                        ? const Color(0xff000000)
                        : index == 1 || index == 2
                            ? const Color(0xff8C8A87)
                            : const Color(0xffEE9136),
                    fontWeight: index == 0 ? FontWeight.w700 : FontWeight.w500,
                    fontSize: index == 0 ? 22 : 12,
                    fontFamily: "Circular Std",
                    fontStyle: FontStyle.normal,
                  )),
          ],
        ),
      ),
    );
  }
}
