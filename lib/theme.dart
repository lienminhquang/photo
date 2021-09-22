import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final Color blackColor = Color(0XFF000000);
  static final Color whilteColor = Color(0XFFFFFFFF);

  static ThemeData getSystemTheme() {
    if (SchedulerBinding.instance!.window.platformBrightness ==
        Brightness.dark) {
      return darkTheme;
    }
    return lightTheme;
  }

  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.black,
      textTheme: TextTheme(
        headline1: GoogleFonts.comfortaa(
            letterSpacing: -0.015,
            //height: 40.14,
            fontSize: 36,
            fontWeight: FontWeight.w400,
            color: blackColor),
        headline2: GoogleFonts.roboto(
          letterSpacing: 0.04,
          //height: 15.23,
          fontSize: 13,
          fontWeight: FontWeight.w900,
          color: blackColor,
        ),
        headline3: GoogleFonts.roboto(
            //height: 15.23,
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: blackColor),
        subtitle1: GoogleFonts.roboto(
          //height: 12.89,
          fontSize: 11,
          fontWeight: FontWeight.w400,
          color: blackColor,
        ),
        bodyText1: GoogleFonts.roboto(
          //height: 17.58,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: blackColor,
        ),
        bodyText2: GoogleFonts.roboto(
          //height: 18,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: blackColor,
        ),
      ));

  static final darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.white,
      bottomAppBarTheme: BottomAppBarTheme(color: whilteColor),
      textTheme: TextTheme(
        headline1: GoogleFonts.comfortaa(
            letterSpacing: -0.015,
            //height: 40.14,
            fontSize: 36,
            fontWeight: FontWeight.w400,
            color: whilteColor),
        headline2: GoogleFonts.roboto(
          letterSpacing: 0.04,
          //height: 15.23,
          fontSize: 13,
          fontWeight: FontWeight.w900,
          color: whilteColor,
        ),
        headline3: GoogleFonts.roboto(
          //height: 15.23,
          fontSize: 13,
          fontWeight: FontWeight.w700,
          color: whilteColor,
        ),
        subtitle1: GoogleFonts.roboto(
          //height: 12.89,
          fontSize: 11,
          fontWeight: FontWeight.w400,
          color: whilteColor,
        ),
        bodyText1: GoogleFonts.roboto(
          //height: 17.58,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: whilteColor,
        ),
        bodyText2: GoogleFonts.roboto(
          //height: 18,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: whilteColor,
        ),
      ));
}
