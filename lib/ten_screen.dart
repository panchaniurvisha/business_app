import 'package:business_app/common_widget/app_container.dart';
import 'package:business_app/common_widget/eight_screen_row.dart';
import 'package:flutter/material.dart';

class TenScreen extends StatefulWidget {
  const TenScreen({Key? key}) : super(key: key);

  @override
  State<TenScreen> createState() => _TenScreenState();
}

class _TenScreenState extends State<TenScreen> {
  String dropdownvalue = 'Active';

  // List of items in our dropdown menu
  List<String> items = ["Active", "Deactive", "cancel", "Receive"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        padding: const EdgeInsets.only(right: 40),
                        onPressed: () {
                          debugPrint("First Screen-------->");
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new_sharp)),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(Icons.error_outline,
                          size: 30, color: Color(0xffEE9136)),
                    ),
                  ],
                ),
                const EightScreenRow(),
                const AppContainer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("Broke in January",
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            fontFamily: "Circular Std",
                            fontStyle: FontStyle.normal,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (int index = 0; index < 2; index++)
                            Text(
                                index == 0
                                    ? "November Interest Boost"
                                    : "Ends Feb 17, 2023",
                                style: TextStyle(
                                  color: index == 0
                                      ? const Color(0xff000000)
                                      : const Color(0xff8C8A87),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  fontFamily: "Circular Std",
                                  fontStyle: FontStyle.normal,
                                )),
                        ],
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Divider(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "My Challenges",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        fontFamily: "Circular Std",
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      margin: const EdgeInsets.only(right: 20),
                      width: 110,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffE1E3E6),
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          value: dropdownvalue,
                          isExpanded: true,
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items,
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.black)),
                            );
                          }).toList(),
                          onChanged: (value) {
                            debugPrint(value.toString());

                            dropdownvalue = value.toString();
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(100.0),
                      child: Image.asset("assets/images/leather_wallet.png",
                          height: 100),
                    ),
                    Positioned(
                      left: 90,
                      top: 170,
                      child: FloatingActionButton(
                        onPressed: () {
                          debugPrint("Next Screen---------->");
                        },
                        backgroundColor: const Color(0xffE1E1E1),
                        mini: true,
                        child: const Icon(Icons.add_rounded,
                            size: 30, color: Color(0xff000000)),
                      ),
                    ),
                  ],
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("You don’t have any active challenges.",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        fontFamily: "Circular Std",
                        fontStyle: FontStyle.normal,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
