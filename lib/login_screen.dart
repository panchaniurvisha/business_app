import 'package:business_app/common_widget/app_textform_field.dart';
import 'package:business_app/routes/routes_name.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
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
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
          physics: const NeverScrollableScrollPhysics(),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    padding: const EdgeInsets.only(right: 40),
                    onPressed: () {
                      debugPrint("Second Screen-------->");
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_sharp)),
                const SizedBox(
                  height: 30,
                ),
                for (int index = 0; index < 3; index++)
                  Text(
                      index == 0
                          ? "Welcome back"
                          : index == 1
                              ? "Sign in with your email to continue.."
                              : "Your email",
                      style: TextStyle(
                        height: index == 2 ? 8 : 0,
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
                const Text("Your password",
                    style: TextStyle(
                      height: 3,
                      color: Color(0xFF000000),
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.validate();
                          debugPrint("validate ---> ${formKey.currentState!.validate()}");
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            RoutesName.bottomScreen,
                            (route) => false,
                          );
                          debugPrint('Bottom Screen ----->>');
                        }
                      },
                      style: ElevatedButton.styleFrom(fixedSize: const Size(400, 60), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)), backgroundColor: const Color(0xff000000)),
                      child: const Text(
                        "Log in",
                        style: TextStyle(fontSize: 18),
                      )),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text("Forgot Password?", style: TextStyle(color: Color(0xffEE9136), fontWeight: FontWeight.w700, fontSize: 14, fontFamily: "Circular Std", fontStyle: FontStyle.normal, decoration: TextDecoration.underline)),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
