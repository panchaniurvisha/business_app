import 'package:business_app/assets_screen.dart';
import 'package:business_app/bottom_bar/bottom_screen.dart';
import 'package:business_app/bottom_bar/explore_screen.dart';
import 'package:business_app/bottom_bar/home_screen.dart';
import 'package:business_app/bottom_bar/invest_screen.dart';
import 'package:business_app/bottom_bar/profile_screen.dart';
import 'package:business_app/bottom_bar/save_screen.dart';
import 'package:business_app/challenges_screen.dart';
import 'package:business_app/login_screen.dart';
import 'package:business_app/onboarding_first_screen.dart';
import 'package:business_app/onboarding_second_screen.dart';
import 'package:business_app/onboarding_third_screen.dart';
import 'package:business_app/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';

import '../onboarding_screen.dart';
import 'routes_name.dart';

Map<String, WidgetBuilder> appRoutes = {
  RoutesName.onBoardingScreen: (context) => const OnBoardingScreen(),
  RoutesName.onBoardingFirstScreen: (context) => const OnBoardingFirstScreen(),
  RoutesName.onBoardingSecondScreen: (context) => const OnBoardingSecondScreen(),
  RoutesName.onBoardingThirdScreen: (context) => const OnBoardingThirdScreen(),
  RoutesName.signUpScreen: (context) => const SignUpScreen(),
  RoutesName.loginScreen: (context) => const LoginScreen(),
  RoutesName.homeScreen: (context) => const HomeScreen(),
  RoutesName.saveScreen: (context) => const SaveScreen(),
  RoutesName.investScreen: (context) => const InvestScreen(),
  RoutesName.exploreScreen: (context) => const ExploreScreen(),
  RoutesName.profileScreen: (context) => const ProfileScreen(),
  RoutesName.challengesScreen: (context) => const ChallengesScreen(),
  RoutesName.assetsScreen: (context) => const AssetsScreen(),
  RoutesName.bottomScreen: (context) => const BottomScreen(),
};
