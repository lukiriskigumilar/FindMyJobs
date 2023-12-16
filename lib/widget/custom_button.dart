import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomWidgetButton extends StatelessWidget {
  final String title;
  final double width;
  final Color warna;
  final Color borderColor;
  final VoidCallback onPressed;
  final EdgeInsets margin;

  const CustomWidgetButton(
      {super.key,
      required this.title,
      this.width = double.infinity,
      required this.warna,
      this.borderColor = const Color(0xffDFA878),
      required this.onPressed,
      this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      margin: margin,

      //const EdgeInsets.only(
      //top: 35,
      //bottom: 50,
      //),

      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: warna,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(66),
              side: BorderSide(color: borderColor),
            )),
        child: Text(
          title,
          style: secondaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
