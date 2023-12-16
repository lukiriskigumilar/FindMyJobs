import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color mPrimaryColor = const Color(0xffDFA878);
Color mSecondaryColor = const Color(0xff211D1D);
Color mBlueLightColor = const Color(0xffCEE6F3);
Color mRedColor = const Color(0xffFD4F56);
Color mGreyColor = const Color(0xffB3B5C4);
Color mGreyLightColor = const Color(0xffECEDF1);
Color mBlackColor = const Color(0xff272C2F);
Color mGreenColor = const Color(0xff01C488);
Color mfullyTransparentColor = Colors.transparent;

TextStyle primaryTextStyle = GoogleFonts.poppins(color: mPrimaryColor);
TextStyle secondaryTextStyle = GoogleFonts.poppins(color: mSecondaryColor);
TextStyle redTextStyle = GoogleFonts.poppins(color: mRedColor);
TextStyle greyTextStyle = GoogleFonts.poppins(color: mGreyColor);
TextStyle blackTextStyle = GoogleFonts.poppins(color: mBlackColor);
TextStyle tittleStyle =
    GoogleFonts.poppins(color: mGreyColor, fontSize: 16, fontWeight: reguler);
TextStyle subTittle = GoogleFonts.poppins(
    color: mSecondaryColor, fontSize: 24, fontWeight: semiBold);

FontWeight light = FontWeight.w300;
FontWeight reguler = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
