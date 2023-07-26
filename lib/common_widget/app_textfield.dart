import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  AppTextField({Key? key, this.controller}) : super(key: key);
  final TextEditingController referralCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      maxLength: 8,
      style: const TextStyle(
        color: Color(0xff8C8A87),
        fontWeight: FontWeight.w400,
        fontSize: 14,
        fontFamily: "Circular Std",
        fontStyle: FontStyle.normal,
      ),
      decoration: InputDecoration(
          counter: Container(),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Color(0xffE1E3E6)),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.blue),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          hintText: 'Enter referral code',
          filled: true,
          fillColor: const Color(0xffFFFFFF)),
    );
  }
}
