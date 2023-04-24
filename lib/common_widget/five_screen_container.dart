import 'package:flutter/material.dart';

class FiveScreenContainer extends StatelessWidget {
  final String? text;
  final Color? colorText;
  final Color? color;
  final BoxBorder? border;
  const FiveScreenContainer(
      {Key? key, this.text, this.color, this.colorText, this.border})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: border ?? Border.all(color: Colors.transparent),
          color: color ?? const Color(0xff000000)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 40),
        child: Text(text!,
            style: TextStyle(
              color: colorText ?? const Color(0xffFFFFFF),
              fontWeight: FontWeight.w500,
              fontSize: 14,
              fontFamily: "Circular Std",
              fontStyle: FontStyle.normal,
            )),
      ),
    );
  }
}
