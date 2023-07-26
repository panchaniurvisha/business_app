import 'package:business_app/common_widget/app_textfield.dart';
import 'package:business_app/common_widget/app_textform_field.dart';
import 'package:business_app/routes/routes_name.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController referralCodeController = TextEditingController();
  bool value = false;
  bool isSecurePassword = true;
  final formKey = GlobalKey<FormState>();

  List<String> data = ["Sign Up", "Hey there! Sign up with your email to continue.", "Your email"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
          physics: const ClampingScrollPhysics(),
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        padding: const EdgeInsets.only(right: 40),
                        onPressed: () {
                          debugPrint("First Screen-------->");
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new_sharp)),
                    for (int index = 0; index < 3; index++)
                      Text(data[index],
                          style: TextStyle(
                            height: index == 0
                                ? 3
                                : index == 2
                                    ? 5
                                    : 0,
                            color: index == 1 ? const Color(0xff8C8A87) : const Color(0xff000000),
                            fontWeight: index == 0 ? FontWeight.w700 : FontWeight.w500,
                            fontSize: index == 0 ? 22 : 14,
                            fontFamily: "Circular Std",
                            fontStyle: FontStyle.normal,
                          )),
                    AppTextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty ||
                            /* !RegExp(r'^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$')
                                .hasMatch(value)) {*/
                            !RegExp(r'\S+@\S+\.+.[com]').hasMatch(value)) {
                          return "Enter Correct Email Address";
                        } else {
                          return null;
                        }
                      },
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
                    AppTextField(
                      controller: referralCodeController,
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
                    AppTextFormField(
                      suffixIcon: IconButton(
                        icon: Icon(isSecurePassword ? Icons.visibility_off : Icons.visibility),
                        iconSize: 20,
                        color: const Color(0xff200E32),
                        onPressed: () {
                          setState(() {
                            isSecurePassword = !isSecurePassword;
                          });
                        },
                      ),
                      labelText: "password",
                      maxLength: 8,
                      controller: passwordController,
                      obscureText: isSecurePassword,
                      validator: (value) {
                        if (value!.isEmpty || !RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(value)) {
                          return "please  valid password";
                        }
                        return null;
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 5),
                      child: Row(
                        children: [
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
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Icon(Icons.error_outline, size: 30),
                          SizedBox(
                            width: 8,
                          ),
                          Text("Password must contain a mix of uppercase,\nlowercase, numbers and special characters.",
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
                          InkWell(
                            onTap: () {
                              setState(() {
                                value = !value;
                              });
                            },
                            splashFactory: NoSplash.splashFactory,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black, width: 1.5),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: value
                                    ? const Icon(
                                        Icons.check,
                                        size: 20.0,
                                        color: Colors.black,
                                      )
                                    : const Icon(
                                        Icons.check_box_outline_blank,
                                        size: 20.0,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Flexible(
                            child: RichText(
                              text: const TextSpan(
                                text: "I have read and agree to the",
                                style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.w400, fontSize: 14, fontFamily: "Circular Std"),
                                children: [
                                  TextSpan(
                                    text: " Terms & Conditions",
                                    style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.w700, fontSize: 14, fontFamily: "Circular Std"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.validate();
                            debugPrint("third Screen====>");
                            Navigator.pushNamedAndRemoveUntil(context, RoutesName.loginScreen, (route) => false);
                          }
                        },
                        style: ElevatedButton.styleFrom(fixedSize: const Size(400, 60), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)), backgroundColor: const Color(0xff9D9B97)),
                        child: const Text(
                          "Get Started",
                          style: TextStyle(fontSize: 18),
                        )),
                    const Align(
                      alignment: Alignment.center,
                      child: Text("Having issues>", style: TextStyle(height: 4, color: Color(0xffEE9136), fontWeight: FontWeight.w700, fontSize: 14, fontFamily: "Circular Std", fontStyle: FontStyle.normal, decoration: TextDecoration.underline)),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
