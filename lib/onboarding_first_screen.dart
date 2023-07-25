import 'package:flutter/material.dart';

class OnBoardingFirstScreen extends StatefulWidget {
  const OnBoardingFirstScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<OnBoardingFirstScreen> createState() => _OnBoardingFirstScreenState();
}

class _OnBoardingFirstScreenState extends State<OnBoardingFirstScreen> {
  List<String> text = [
    "Send cash to anyone, anywhere",
    "Send cash to anyone’s bank account, mobile money, MPESA,\n and more. We’re the easiest, cheapest and fastest it gets.",
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
                  left: 50, right: 50, bottom: 10, top: 100),
              child: Image.asset(
                'assets/images/exportCommunity.png',
              ),
            ),
            for (int index = 0; index < 3; index++)
              Text(text[index].toString(),
                  style: TextStyle(
                    height: index == 0
                        ? 2
                        : index == 2
                            ? 10
                            : 0,
                    color: index == 0
                        ? const Color(0xff000000)
                        : index == 1
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
