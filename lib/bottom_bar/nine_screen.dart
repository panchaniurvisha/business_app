import 'package:flutter/material.dart';

class NineScreen extends StatefulWidget {
  const NineScreen({Key? key}) : super(key: key);

  @override
  State<NineScreen> createState() => _NineScreenState();
}

List<String> data = ["Streaks", "Badge", "Crewcoins", "Current League"];

class _NineScreenState extends State<NineScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Profile",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          fontFamily: "Circular Std",
                          fontStyle: FontStyle.normal,
                        )),
                    Icon(Icons.settings),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(right: 15),
                        decoration: const BoxDecoration(
                            color: Color(0xffD9D9D9), shape: BoxShape.circle),
                        child: Image.asset(
                          "assets/images/profile_boy.png",
                          height: 75,
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text("Feranmi Ladapo",
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  fontFamily: "Circular Std",
                                  fontStyle: FontStyle.normal,
                                )),
                            Icon(Icons.verified, size: 20),
                          ],
                        ),
                        const Text("@sirbenj",
                            style: TextStyle(
                              color: Color(0xff8C8A87),
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              fontFamily: "Circular Std",
                              fontStyle: FontStyle.normal,
                            )),
                      ],
                    ),
                    const Spacer(),
                    Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffFFFFFF),
                            shape: BoxShape.circle,
                            border: Border.all(color: const Color(0xffE1E3E6))),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset(
                            "assets/images/Edit_pencil.png",
                            height: 30,
                          ),
                        )),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
                height: 60,
                color: Color((0xffE1E3E6)),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Statistics",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      fontFamily: "Circular Std",
                      fontStyle: FontStyle.normal,
                    )),
              ),
              GridView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                    childAspectRatio: 2.5),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        border: Border.all(color: const Color(0xffE1E3E6)),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: index == 2
                              ? const SizedBox(
                                  height: 40,
                                  width: 35,
                                )
                              : Image.asset("assets/images/comet.png",
                                  height: 40),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("0",
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    fontFamily: "Circular Std",
                                    fontStyle: FontStyle.normal,
                                  )),
                              Text(data[index],
                                  style: const TextStyle(
                                    color: Color(0xff8C8A87),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    fontFamily: "Circular Std",
                                    fontStyle: FontStyle.normal,
                                  )),
                            ],
                          ),
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
