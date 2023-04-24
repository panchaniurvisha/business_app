import 'package:flutter/material.dart';

class FiveScreenRaw extends StatelessWidget {
  FiveScreenRaw({Key? key}) : super(key: key);
  final List<String> date = [
    "Deposited \$10,000",
    "Oct 6, 2022 . 9:13AM",
  ];
  final List<String> amount = ["\$10,000", "Completed"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFCEFDD),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/Transaction.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int index = 0; index < 2; index++)
                    Text(date[index],
                        style: TextStyle(
                          height: 1.5,
                          color: index == 0
                              ? const Color(0xff000000)
                              : const Color(0xff8C8A87),
                          fontWeight: FontWeight.w400,
                          fontSize: index == 0 ? 16 : 14,
                          fontFamily: "Circular Std",
                          fontStyle: FontStyle.normal,
                        )),
                ],
              ),
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int index = 0; index < 2; index++)
                  Text(amount[index],
                      style: TextStyle(
                        height: 1.5,
                        color: index == 0
                            ? const Color(0xff000000)
                            : const Color(0xff8C8A87),
                        fontWeight: FontWeight.w400,
                        fontSize: index == 0 ? 16 : 14,
                        fontFamily: "Circular Std",
                        fontStyle: FontStyle.normal,
                      )),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
