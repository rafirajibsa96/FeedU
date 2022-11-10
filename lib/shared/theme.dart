import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 30.0;
double defaultRadius = 12.0;

Color fPrimaryColor = const Color(0xff11AC6A);
Color fBlackColor = const Color(0xff111111);
Color fWhiteColor = const Color(0xffFFFFFF);
Color fGreyBackgroundColor = const Color(0xffF6F7FB);
Color fGreyColor = const Color(0xffA4A4A4);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: fBlackColor,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: fWhiteColor,
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  color: fGreyColor,
);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: fPrimaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
