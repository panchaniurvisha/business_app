import 'package:flutter/material.dart';

class AssetsScreen extends StatefulWidget {
  const AssetsScreen({Key? key}) : super(key: key);

  @override
  State<AssetsScreen> createState() => _AssetsScreenState();
}

class _AssetsScreenState extends State<AssetsScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        padding: const EdgeInsets.only(right: 40),
                        onPressed: () {
                          debugPrint("First Screen-------->");
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new_sharp)),
                    const SizedBox(
                      width: 80,
                    ),
                    const Text("Assets",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          fontFamily: "Circular Std",
                          fontStyle: FontStyle.normal,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
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
                SizedBox(
                  height: 600,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) => Container(
                      height: 87,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), border: Border.all(color: const Color(0xffE1E3E6))),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset(
                              "assets/images/bitcoin.png",
                            ),
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("\$19,311.59",
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    fontFamily: "Circular Std",
                                    fontStyle: FontStyle.normal,
                                  )),
                              Text("Bitcoin . BTC",
                                  style: TextStyle(
                                    color: Color(0xff8C8A87),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    fontFamily: "Circular Std",
                                    fontStyle: FontStyle.normal,
                                  )),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 110),
                            child: Text("+2.82%",
                                style: TextStyle(
                                  color: Color(0xff58B757),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  fontFamily: "Circular Std",
                                  fontStyle: FontStyle.normal,
                                )),
                          ),
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(height: 30),
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
