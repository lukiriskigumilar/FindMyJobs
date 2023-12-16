import 'package:email_validator/email_validator.dart';
import 'package:find_myjobs/pages/signin_page.dart';
import 'package:find_myjobs/shared/theme.dart';
import 'package:find_myjobs/widget/custom_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isEmailValid = true;
  bool isUploaded = false;
  TextEditingController emailAddressController =
      TextEditingController(text: '');

  Widget imageUploaded() {
    return Center(
      child: InkWell(
        onTap: () {
          setState(() {
            isUploaded = !isUploaded;
          });
        },
        child: Column(
          children: [
            Image.asset(
              'assets/user_pic.png',
              width: 120,
              height: 120,
            ),
          ],
        ),
      ),
    );
  }

  Widget showedImages() {
    return Center(
      child: InkWell(
        onTap: () {
          setState(() {
            isUploaded = !isUploaded;
          });
        },
        child: Column(
          children: [
            Image.asset(
              'assets/user_pic1.png',
              width: 120,
              height: 120,
            ),
          ],
        ),
      ),
    );
  }

  Widget inputSection() {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //FORM FULL NAME
          Text(
            "Full Name",
            style: tittleStyle,
          ),
          const SizedBox(
            height: 3,
          ),
          TextField(
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
            height: 10,
          ),
          // FORM EMAIL ADDRESS
          Text(
            "Email Address",
            style: tittleStyle,
          ),
          const SizedBox(
            height: 3,
          ),
          TextField(
            controller: emailAddressController,
            onChanged: (value) {
              bool isValid = EmailValidator.validate(value);

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
                        color: isEmailValid ? mSecondaryColor : mRedColor)),
                hintText: ''),
            style: TextStyle(color: isEmailValid ? mSecondaryColor : mRedColor),
          ),
          //Form Password
          const SizedBox(
            height: 10,
          ),
          Text(
            "Password",
            style: tittleStyle,
          ),
          const SizedBox(
            height: 3,
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
          //Form your goal
          const SizedBox(
            height: 10,
          ),
          Text(
            "Your Goal",
            style: tittleStyle,
          ),
          const SizedBox(
            height: 3,
          ),
          TextField(
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
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40.0,
            left: 24,
            right: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign Up",
                style: tittleStyle,
              ),
              Text(
                "Begin New Journey ",
                style: subTittle,
              ),
              const SizedBox(
                height: 20,
              ),
              isUploaded ? showedImages() : imageUploaded(),
              Column(
                children: [
                  inputSection(),
                  CustomWidgetButton(
                    title: "Sign Up",
                    warna: mPrimaryColor,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInPage()),
                      );
                    },
                    child: Text(
                      "Back to Sign In",
                      style: tittleStyle.copyWith(fontSize: 14),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
