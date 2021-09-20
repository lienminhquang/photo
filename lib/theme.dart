import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var appTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.black,
    textTheme: TextTheme(
      headline1: GoogleFonts.comfortaa(
        letterSpacing: -0.015,
        //height: 40.14,
        fontSize: 36,
        fontWeight: FontWeight.w400,
        color: Color(0XFF000000),
      ),
      headline2: GoogleFonts.roboto(
        letterSpacing: 0.04,
        //height: 15.23,
        fontSize: 13,
        fontWeight: FontWeight.w900,
        color: Color(0XFF000000),
      ),
      headline3: GoogleFonts.roboto(
        //height: 15.23,
        fontSize: 13,
        fontWeight: FontWeight.w700,
        color: Color(0XFF000000),
      ),
      subtitle1: GoogleFonts.roboto(
        //height: 12.89,
        fontSize: 11,
        fontWeight: FontWeight.w400,
        color: Color(0XCC000000),
      ),
      bodyText1: GoogleFonts.roboto(
        //height: 17.58,
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Color(0XFF000000),
      ),
      bodyText2: GoogleFonts.roboto(
        //height: 18,
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: Color(0XFF000000),
      ),
    ));
