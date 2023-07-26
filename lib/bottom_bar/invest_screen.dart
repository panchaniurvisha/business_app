import 'package:business_app/common_widget/eight_screen_row.dart';
import 'package:business_app/routes/routes_name.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class InvestScreen extends StatefulWidget {
  const InvestScreen({Key? key}) : super(key: key);

  @override
  State<InvestScreen> createState() => _InvestScreenState();
}

List<Map> information = [
  {
    "image": "assets/images/Filter.png",
    "text": "Buy",
    "interest": "Top-up your portfolio",
  },
  {
    "image": "assets/images/Swap.png",
    "text": "Auto-buy",
    "interest": "Low-risk auto purchase",
  },
  {
    "image": "assets/images/Star_icon.png",
    "text": "Challenges",
    "interest": "Invest in your crew",
  },
  {
    "image": "assets/images/Activity_icon.png",
    "text": "Portfolio",
    "interest": "Manage your portfolio",
  }
];

class _InvestScreenState extends State<InvestScreen> {
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
                  child: Text("Invest",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        fontFamily: "Circular Std",
                        fontStyle: FontStyle.normal,
                      )),
                ),
                Row(
                  children: [
                    for (int index = 0; index < 2; index++)
                      Text(index == 0 ? "Your portfolio is  today" : " up +\$55",
                          style: TextStyle(
                            color: index == 0 ? const Color(0xff8C8A87) : const Color(0xff499743),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            fontFamily: "Circular Std",
                            fontStyle: FontStyle.normal,
                          )),
                  ],
                ),
                const EightScreenRow(
                  text: "Auto-buy (pause anytime)",
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
                        "Start investing with low",
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
                            padding: const EdgeInsets.all(10.0),
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
                                              ? const Color(0xff58B757)
                                              : index == 1
                                                  ? const Color(0xffB82F80)
                                                  : index == 2
                                                      ? const Color(0xff4538EC)
                                                      : const Color(0xff4E9CCE)),
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
                                    padding: const EdgeInsets.only(top: 28),
                                    child: Text(information[index]["text"],
                                        style: const TextStyle(
                                          color: Color(0xff060606),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          fontFamily: "Circular Std",
                                          fontStyle: FontStyle.normal,
                                        ))),
                                Text(
                                  information[index]["interest"],
                                  style: const TextStyle(
                                    color: Color(0xff8C8A87),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
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
                    debugPrint("Start investing");
                    Navigator.pushNamed(context, RoutesName.challengesScreen);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 30),
                      child: Text("Start investing",
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
