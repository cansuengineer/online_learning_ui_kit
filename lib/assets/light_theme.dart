import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightThemeData = ThemeData(
  fontFamily: GoogleFonts.poppins().fontFamily,
  primarySwatch: const MaterialColor(0xff3D5CFF, {
    50: Color(0xffeef0ff),
    100: Color(0xffdae0ff),
    200: Color(0xffc6cfff),
    300: Color(0xffb3bfff),
    400: Color(0xff9faeff),
    500: Color(0xff8b9eff),
    600: Color(0xff788dff),
    700: Color(0xff647dff),
    800: Color(0xff516cff),
    900: Color(0xff3D5CFF)
  }),
  backgroundColor: const Color(0xFFFFFFFF),
  // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  // backgroundColor: Color(0xFFFFFFFF),
  // // elevation: 1,

  // selectedItemColor: Color(0xff3D5CFF),
  // unselectedItemColor: Color(0xFFeaeaff))
);
