import 'package:email_validator/email_validator.dart';
import 'package:find_myjobs/pages/signup_page.dart';
import 'package:find_myjobs/shared/theme.dart';
import 'package:find_myjobs/widget/custom_button.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isEmailValid = true;

  TextEditingController emailController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 60.0,
            left: 24,
            right: 24,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign In",
                  style: tittleStyle,
                ),
                Text(
                  "Build Your Career",
                  style: subTittle,
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/illustrator.png',
                        width: 261,
                        height: 255,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email Addres",
                      style: tittleStyle,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextField(
                      controller: emailController,
                      onChanged: (value) {
                        print(value);
                        bool isValid = EmailValidator.validate(value);
                        print(isValid);
                        if (isValid) {
                          setState(() {
                            isEmailValid = true;
                          });
                        } else {
                          setState(() {
                            isEmailValid = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                          fillColor: mGreyLightColor,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(
                                  color: isEmailValid
                                      ? mSecondaryColor
                                      : mRedColor)),
                          hintText: ''),
                      style: TextStyle(
                          color: isEmailValid ? mSecondaryColor : mRedColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Password",
                      style: tittleStyle,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: mGreyLightColor,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(color: mSecondaryColor))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomWidgetButton(
                        title: 'Sign In',
                        warna: mPrimaryColor,
                        onPressed: () {}),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()),
                        );
                      },
                      child: Center(
                          child: Text(
                        "Create New Account",
                        style: tittleStyle.copyWith(fontSize: 14),
                      )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
