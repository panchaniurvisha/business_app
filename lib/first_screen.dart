import 'package:business_app/routes/routes_name.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
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
            const Text("Accrue",
                style: TextStyle(
                  height: 4,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  fontFamily: "Circular Std",
                  fontStyle: FontStyle.normal,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: Image.asset(
                'assets/images/exportCommunity.png',
              ),
            ),
            for (int index = 0; index < 3; index++)
              Text(text[index].toString(),
                  style: TextStyle(
                    height: index == 0 || index == 2 ? 5 : 0,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.circle,
                  size: 15,
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.circle_outlined, size: 15),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.circle_outlined, size: 15),
              ],
            ),
            TextButton(
              onPressed: () {
                debugPrint("Second Screen");
                Navigator.pushNamed(context, RoutesName.secondScreen);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff000000),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 100),
                  child: Text("Create an account",
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        fontFamily: "Circular Std",
                        fontStyle: FontStyle.normal,
                      )),
                ),
              ),
            ),
            const Text("Already have an account? Log In",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  fontFamily: "Circular Std",
                  fontStyle: FontStyle.normal,
                )),
          ],
        ),
      ),
    );
  }
}
