import 'package:find_myjobs/pages/signin_page.dart';
import 'package:find_myjobs/pages/signup_page.dart';
import 'package:find_myjobs/widget/custom_button.dart';
import 'package:flutter/material.dart';
import '../shared/theme.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/NewBg.png'), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 60,
              right: 30,
              left: 30,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Unlock Your Future\nWhere Jobs Meet Ambition",
                    style: secondaryTextStyle.copyWith(
                      fontWeight: reguler,
                      fontSize: 32,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "52000 jobs are available",
                    style: secondaryTextStyle.copyWith(fontWeight: light),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 350,
                    ),
                    child: Center(
                        child: Column(
                      children: [
                        CustomWidgetButton(
                            title: 'Get Started',
                            warna: mPrimaryColor,
                            width: 250,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpPage()),
                              );
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomWidgetButton(
                            title: 'Sign In',
                            warna: mfullyTransparentColor,
                            borderColor: mSecondaryColor,
                            width: 250,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignInPage()),
                              );
                            }),
                      ],
                    )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
