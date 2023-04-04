import 'package:flutter/material.dart';

class EightScreenRow extends StatelessWidget {
  final String? text;
  final String? data;
  const EightScreenRow({Key? key, this.text, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text ?? "Top Collection",
              style: const TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w700,
                fontSize: 14,
                fontFamily: "Circular Std",
                fontStyle: FontStyle.normal,
              )),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(data ?? "See All",
                style: const TextStyle(
                  color: Color(0xffEE9136),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  fontFamily: "Circular Std",
                  fontStyle: FontStyle.normal,
                )),
          ),
        ],
      ),
    );
  }
}
