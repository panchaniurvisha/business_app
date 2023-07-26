import 'package:business_app/common_widget/app_container.dart';
import 'package:business_app/common_widget/eight_screen_row.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  TextEditingController searchController = TextEditingController();
  List<String> data = [
    "BTC",
    "Bitcoin",
    "\$19,297.33",
    "2.82%",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: TextField(
                  controller: searchController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    fillColor: Color(0xffFCEFDD),
                    prefixIcon: Icon(Icons.search_rounded, color: Color(0x99000000)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.transparent),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    hintText: 'Search here...',
                    hintStyle: TextStyle(
                      color: Color(0xcf0e0707),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      fontFamily: "Circular Std",
                      fontStyle: FontStyle.normal,
                    ),
                    filled: true,
                  ),
                ),
              ),
              const EightScreenRow(),
              SizedBox(
                height: 170,
                child: ListView.separated(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20,
                  ),
                  itemBuilder: (context, index) => Stack(
                    children: [
                      Container(
                        width: 330,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffE1E3E6),
                            ),
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xffFFFFFF)),
                      ),
                      Positioned(
                        top: 25,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(color: Color(0xffFFFFFF), shape: BoxShape.circle),
                                      child: Image.asset(
                                        "assets/images/boy.png",
                                        height: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2, strokeAlign: BorderSide.strokeAlignCenter), shape: BoxShape.circle, color: const Color(0xff9C3E2A)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45),
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2, strokeAlign: BorderSide.strokeAlignCenter), shape: BoxShape.circle, color: const Color(0xff9C3E2A)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 65),
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2, strokeAlign: BorderSide.strokeAlignCenter), shape: BoxShape.circle, color: const Color(0xff9C3E2A)),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                                          child: Text("+5",
                                              style: TextStyle(
                                                color: Color(0xffFFFFFF),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                                fontFamily: "Circular Std",
                                                fontStyle: FontStyle.normal,
                                              )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Text("Adebayo Gafar: Elite Savings Pro Max",
                                style: TextStyle(
                                  height: 2.5,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  fontFamily: "Circular Std",
                                  fontStyle: FontStyle.normal,
                                )),
                            const Text("These are the magic assets of the next jaga...",
                                style: TextStyle(
                                  color: Color(0xff8C8A87),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  fontFamily: "Circular Std",
                                  fontStyle: FontStyle.normal,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Row(
                                children: [
                                  const Text("Nov 15, 2022",
                                      style: TextStyle(
                                        color: Color(0xff8C8A87),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        fontFamily: "Circular Std",
                                        fontStyle: FontStyle.normal,
                                      )),
                                  IconButton(
                                      padding: const EdgeInsets.only(left: 160, right: 5),
                                      iconSize: 25,
                                      onPressed: () {
                                        debugPrint("heart is red");
                                      },
                                      icon: const Icon(
                                        Icons.favorite_outline,
                                        color: Color(0xff200E32),
                                      )),
                                  const Text("22",
                                      style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontFamily: "Circular Std",
                                        fontStyle: FontStyle.normal,
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const EightScreenRow(
                data: "All Assets",
              ),
              SizedBox(
                height: 180,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) => Container(
                    width: 140,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: const Color(0xffE1E3E6))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/bitcoin.png",
                                height: 35,
                              ),
                              Container(
                                decoration: BoxDecoration(color: const Color(0xffEAEBED), borderRadius: BorderRadius.circular(20)),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                                  child: Text("Crypto",
                                      style: TextStyle(
                                        color: Color(0xff8C8A87),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        fontFamily: "Circular Std",
                                        fontStyle: FontStyle.normal,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          for (int index = 0; index < 4; index++)
                            Text(data[index],
                                style: TextStyle(
                                  height: index == 0
                                      ? 3
                                      : index == 2
                                          ? 2
                                          : 0,
                                  color: index == 1
                                      ? const Color(0xff8C8A87)
                                      : index == 3
                                          ? const Color(0xff58B757)
                                          : const Color(0xff000000),
                                  fontWeight: index == 0 ? FontWeight.w700 : FontWeight.w500,
                                  fontSize: index == 0
                                      ? 16
                                      : index == 2
                                          ? 18
                                          : 14,
                                  fontFamily: "Circular Std",
                                  fontStyle: FontStyle.normal,
                                )),
                        ],
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(width: 10),
                ),
              ),
              const EightScreenRow(
                text: "Popular Challenges",
              ),
              const AppContainer(
                paddingTop: 0,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
