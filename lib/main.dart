import 'package:business_app/routes/routes.dart';
import 'package:business_app/routes/routes_name.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const SecondScreen(),
        routes: appRoutes,
        initialRoute: RoutesName.onBoardingScreen);
  }
}
