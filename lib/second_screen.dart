import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController referralCodeController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool switchValue = false;
  bool isSecurePassword = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  padding: const EdgeInsets.only(right: 40),
                  onPressed: () {
                    debugPrint("First Screen-------->");
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_sharp)),
              const Text("Sign Up",
                  style: TextStyle(
                    height: 3,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    fontFamily: "Circular Std",
                    fontStyle: FontStyle.normal,
                  )),
              const Text("Hey there! Sign up with your email to continue.",
                  style: TextStyle(
                    color: Color(0xff8C8A87),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: "Circular Std",
                    fontStyle: FontStyle.normal,
                  )),
              const Text("Your email",
                  style: TextStyle(
                    height: 5,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: "Circular Std",
                    fontStyle: FontStyle.normal,
                  )),
              TextField(
                style: const TextStyle(
                  color: Color(0xff8C8A87),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: "Circular Std",
                  fontStyle: FontStyle.normal,
                ),
                controller: emailController,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xffE1E3E6)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    hintText: 'Email',
                    filled: true,
                    fillColor: Color(0xffFFFFFF)),
              ),
              const Text("Referral code (optional)",
                  style: TextStyle(
                    height: 3,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: "Circular Std",
                    fontStyle: FontStyle.normal,
                  )),
              TextField(
                style: const TextStyle(
                  color: Color(0xff8C8A87),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: "Circular Std",
                  fontStyle: FontStyle.normal,
                ),
                controller: referralCodeController,
                decoration: InputDecoration(
                    suffixIcon: togglePassword(),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xffE1E3E6)),
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
              ),
              const Text("Your password",
                  style: TextStyle(
                    height: 3,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: "Circular Std",
                    fontStyle: FontStyle.normal,
                  )),
              TextField(
                style: const TextStyle(
                  color: Color(0xff8C8A87),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: "Circular Std",
                  fontStyle: FontStyle.normal,
                ),
                /*onSubmitted: (value) {
                      debugPrint("NextScreen");
                    },*/

                controller: passwordController,
                obscureText: isSecurePassword,
                decoration: InputDecoration(
                    suffixIcon: togglePassword(),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Color(0xffE1E3E6)),
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
                    hintText: 'Enter your password',
                    filled: true,
                    fillColor: const Color(0xffFFFFFF)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 5),
                child: Row(
                  children: const [
                    Icon(Icons.error_outline, size: 30),
                    SizedBox(
                      width: 8,
                    ),
                    Text("Password must be more than 8 characters.",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          fontFamily: "Circular Std",
                          fontStyle: FontStyle.normal,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: const [
                    Icon(Icons.error_outline, size: 30),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                        "Password must contain a mix of uppercase,\nlowercase, numbers and special characters.",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          fontFamily: "Circular Std",
                          fontStyle: FontStyle.normal,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1.8,
                      child: Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          side: const BorderSide(
                            color: Color(0xff000000),
                          ),
                          checkColor: Colors.white,
                          activeColor: Colors.black,
                          value: switchValue,
                          onChanged: (value) {
                            debugPrint("value--->$value");
                            switchValue = value!;
                            setState(() {});
                          }),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text("I have read and agree to the",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          fontFamily: "Circular Std",
                          fontStyle: FontStyle.normal,
                        )),
                    const Text(" Terms & Conditions",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          fontFamily: "Circular Std",
                          fontStyle: FontStyle.normal,
                        )),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    debugPrint("third Screen====>");
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(400, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: const Color(0xff9D9B97)),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(fontSize: 18),
                  )),
              const Align(
                alignment: Alignment.center,
                child: Text("Having issues>",
                    style: TextStyle(
                        height: 4,
                        color: Color(0xffEE9136),
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        fontFamily: "Circular Std",
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.underline)),
              ),
            ],
          ),
        ),
      )),
    );
  }

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          isSecurePassword = !isSecurePassword;
        });

        debugPrint("password Shown");
      },
      icon: isSecurePassword
          ? const Icon(
              Icons.visibility,
            )
          : const Icon(
              Icons.visibility_off,
            ),
      iconSize: 20,
      color: const Color(0xff200E32),
    );
  }
}
