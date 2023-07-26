import 'package:business_app/common_widget/eight_screen_row.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class SaveScreen extends StatefulWidget {
  const SaveScreen({Key? key}) : super(key: key);

  @override
  State<SaveScreen> createState() => _SaveScreenState();
}

List<Map> information = [
  {
    "image": "assets/images/Ticket Star_icon.png",
    "text": "Challenge",
    "interest": "Earn 2.5% p.a",
  },
  {
    "image": "assets/images/Lock_icon.png",
    "text": "Vault",
    "interest": "Earn up to 3% p.a",
  },
  {
    "image": "assets/images/Wallet.png",
    "text": "Savings Pockets",
    "interest": "Earn 2.3% p.a",
  },
  {
    "image": "assets/images/Star_icon.png",
    "text": "Invites",
    "interest": "Join your crew",
  }
];

class _SaveScreenState extends State<SaveScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Save",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        fontFamily: "Circular Std",
                        fontStyle: FontStyle.normal,
                      )),
                ),
                const Row(
                  children: [
                    Text("you are saving",
                        style: TextStyle(
                          color: Color(0xff8C8A87),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          fontFamily: "Circular Std",
                          fontStyle: FontStyle.normal,
                        )),
                    Text(
                      " \$0.00",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        fontFamily: "Circular Std",
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                const EightScreenRow(
                  text: "Earn 2.5% p.a paid daily",
                ),
                DottedBorder(
                  color: const Color(0xffE1E3E6),
                  borderType: BorderType.RRect,
                  dashPattern: const [20, 20],
                  radius: const Radius.circular(25),
                  child: Container(
                    height: 198,
                    width: 345,
                    decoration: BoxDecoration(color: const Color(0xffFFFFFF), borderRadius: BorderRadius.circular(25)),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 25, left: 12),
                      child: Text(
                        "Start earning daily",
                        style: TextStyle(
                          color: Color(0xff8C8A87),
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          fontFamily: "Circular Std",
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(
                  height: 50,
                ),
                GridView.builder(
                    itemCount: 4,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 15, childAspectRatio: 1.3),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(color: const Color(0xffFFFFFF), border: Border.all(color: const Color(0xffE1E3E6)), borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: index == 0
                                              ? const Color(0xff7039E1)
                                              : index == 1
                                                  ? const Color(0xff000000)
                                                  : index == 2
                                                      ? const Color(0xff83BA7F)
                                                      : const Color(0xffEE9136)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          information[index]["image"],
                                          height: 20,
                                          color: const Color(0xffFFFFFF),
                                        ),
                                      ),
                                    ),
                                    Text(index == 2 ? "\$1,500" : "0",
                                        style: const TextStyle(
                                          color: Color(0xff8C8A87),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          fontFamily: "Circular Std",
                                          fontStyle: FontStyle.normal,
                                        )),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Text(information[index]["text"],
                                      style: const TextStyle(
                                        color: Color(0xff060606),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        fontFamily: "Circular Std",
                                        fontStyle: FontStyle.normal,
                                      )),
                                ),
                                Text(
                                  information[index]["interest"],
                                  style: const TextStyle(
                                    color: Color(0xff8C8A87),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    fontFamily: "Circular Std",
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                InkWell(
                  onTap: () {
                    debugPrint("Start Saving");
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 30),
                      child: Text("Start saving",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
