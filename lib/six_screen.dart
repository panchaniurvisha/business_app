import 'package:flutter/material.dart';

class SixScreen extends StatefulWidget {
  const SixScreen({Key? key}) : super(key: key);

  @override
  State<SixScreen> createState() => _SixScreenState();
}

class _SixScreenState extends State<SixScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text(
              "Save",
            ),
          ],
        ),
      ),
    );
  }
}
