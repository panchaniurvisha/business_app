import 'package:business_app/bottom_bar/bottom_screen.dart';
import 'package:business_app/bottom_bar/eight_screen.dart';
import 'package:business_app/bottom_bar/five_screen.dart';
import 'package:business_app/bottom_bar/nine_screen.dart';
import 'package:business_app/bottom_bar/seven_screen.dart';
import 'package:business_app/bottom_bar/six_screen.dart';
import 'package:business_app/eleven_screen.dart';
import 'package:business_app/first_screen.dart';
import 'package:business_app/second_screen.dart';
import 'package:business_app/ten_screen.dart';
import 'package:business_app/third_screen.dart';
import 'package:flutter/cupertino.dart';

import 'routes_name.dart';

Map<String, WidgetBuilder> appRoutes = {
  RoutesName.firstScreen: (context) => const FirstScreen(),
  RoutesName.secondScreen: (context) => const SecondScreen(),
  RoutesName.thirdScreen: (context) => const ThirdScreen(),
  RoutesName.fiveScreen: (context) => const FiveScreen(),
  RoutesName.sixScreen: (context) => const SixScreen(),
  RoutesName.sevenScreen: (context) => const SevenScreen(),
  RoutesName.eightScreen: (context) => const EightScreen(),
  RoutesName.nineScreen: (context) => const NineScreen(),
  RoutesName.tenScreen: (context) => const TenScreen(),
  RoutesName.elevenScreen: (context) => const ElevenScreen(),
  RoutesName.bottomScreen: (context) => const BottomScreen(),
};
