import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTheme {
  static const Color _whiteColor = Color(0xffFFFFFF);
  static const Color _blackColor = Color(0xff242424);

  // Current App's Theme

  static ThemeData light = ThemeData(
    // ? FontFamily

    fontFamily: GoogleFonts.poppins().fontFamily,

    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor:
            MaterialStateProperty.resolveWith((states) => Colors.white),
      ),
    ),

    // ? Elevated Buttons Style

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: const Color(0xffFD5956),
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: _whiteColor,
        ),
      ),
    ),


    // ? Appbars Style

    appBarTheme: const AppBarTheme(
      foregroundColor: _blackColor,
      backgroundColor: _whiteColor,
      elevation: 2,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: _blackColor,
      ),
    ),

    // ? Scaffold background Color

    scaffoldBackgroundColor: const Color(0xfffff5f5),
  );
}
