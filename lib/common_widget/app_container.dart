import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final double? paddingTop;
  const AppContainer({Key? key, this.paddingTop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.only(top: paddingTop ?? 20, bottom: 10),
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
        itemBuilder: (context, index) => Stack(
          children: [
            Container(
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: index == 0
                      ? const Color(0xffE0593D)
                      : const Color(0xff6726BC)),
            ),
            Positioned(
              top: 22,
              bottom: 22,
              left: 38,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xffFFFFFF),
                                shape: BoxShape.circle),
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
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: index == 0
                                      ? const Color(0xff9C3E2A)
                                      : const Color(0xff471983),
                                  border: Border.all(
                                      color: index == 0
                                          ? const Color(0xffE0593D)
                                          : const Color(0xff6726BC),
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      width: 2)),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 2),
                                child: Text("+800",
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
                  const Text("500 participants",
                      style: TextStyle(
                        height: 3,
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        fontFamily: "Circular Std",
                        fontStyle: FontStyle.normal,
                      )),
                  Row(
                    children: [
                      Image.asset("assets/images/Activity_icon.png",
                          height: 13),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text("\$900.00",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            fontFamily: "Circular Std",
                            fontStyle: FontStyle.normal,
                          )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
