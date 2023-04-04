import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isSecurePassword = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  padding: const EdgeInsets.only(right: 40),
                  onPressed: () {
                    debugPrint("First Screen-------->");
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_sharp)),
              const SizedBox(
                height: 30,
              ),
              const Text("Welcome back",
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    fontFamily: "Circular Std",
                    fontStyle: FontStyle.normal,
                  )),
              const Text("Sign in with your email to continue..",
                  style: TextStyle(
                    color: Color(0xff8C8A87),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: "Circular Std",
                    fontStyle: FontStyle.normal,
                  )),
              const Text("Your email",
                  style: TextStyle(
                    height: 8,
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
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: ElevatedButton(
                    onPressed: () {
                      debugPrint("third Screen====>");
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(400, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: const Color(0xff000000)),
                    child: const Text(
                      "Log in",
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              const Align(
                alignment: Alignment.center,
                child: Text("Forgot Password?",
                    style: TextStyle(
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
      ),
    ));
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
                size: 20.0,
              )
            : const Icon(
                Icons.visibility_off,
                size: 20.0,
              ),
        color: const Color(0xff200E32));
  }
}
