import 'package:business_app/bottom_bar/eight_screen.dart';
import 'package:business_app/bottom_bar/five_screen.dart';
import 'package:business_app/bottom_bar/nine_screen.dart';
import 'package:business_app/bottom_bar/seven_screen.dart';
import 'package:business_app/bottom_bar/six_screen.dart';
import 'package:flutter/material.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int currentIndex = 0;
  final List<Widget> listOfScreen = [
    const FiveScreen(),
    const SixScreen(),
    const SevenScreen(),
    const EightScreen(),
    const NineScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type:
              BottomNavigationBarType.fixed, // Fixed// <-- This works for fixed
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/Home.png",
                height: 25,
              ),
              label: 'Home',
              activeIcon: Image.asset(
                "assets/images/Home_fill.png",
                height: 25,
              ),
            ),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/Wallet.png",
                  height: 25,
                ),
                label: 'Save',
                activeIcon: Image.asset(
                  "assets/images/wallet_fill.png",
                  height: 25,
                )),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/invest.png",
                height: 25,
              ),
              label: 'Invest',
              activeIcon: Image.asset(
                "assets/images/invest_fill.png",
                height: 25,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/Search.png",
                height: 25,
              ),
              label: 'Explore',
              activeIcon: Image.asset(
                "assets/images/Search_fill.png",
                height: 25,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/Profile.png",
                height: 25,
              ),
              label: 'Profile',
              activeIcon: Image.asset(
                "assets/images/Profile_fill.png",
                height: 25,
              ),
            ),
          ],
          onTap: (value) {
            debugPrint("Value---->$value");
            setState(() {
              currentIndex = value;
            });
          },
          selectedItemColor: const Color(0xff000000),
          unselectedItemColor: const Color(0xff000000),

          showUnselectedLabels: true,
          showSelectedLabels: true,
          iconSize: 30,
        ),
        body: listOfScreen.elementAt(currentIndex),
      ),
    );
  }
}
