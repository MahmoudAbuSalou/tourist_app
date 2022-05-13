import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../style/colors.dart';


ThemeData lightThem = ThemeData(
    primarySwatch: Colors.blue,


    textTheme:  TextTheme(


        headline1:GoogleFonts.tajawal(
          textStyle:  TextStyle(
              fontSize: 60.sp,  color: defaultColor)
        ),
        headline3:GoogleFonts.tajawal(
            textStyle:  TextStyle(
                fontSize: 40.sp, color: Colors.black)
        ),
      headline2:GoogleFonts.tajawal(
          textStyle:  TextStyle(
              fontSize: 50.sp, color: Colors.white)
      ),
    ),












    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      titleSpacing: 20.0,
      iconTheme: IconThemeData(color: Colors.black),
      backwardsCompatibility: false,
      titleTextStyle: TextStyle(
          fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
     // color: Colors.white,
      backgroundColor: Colors.white,
      elevation: 0,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: defaultColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        elevation: 20.0,
        selectedItemColor: defaultColor,
        backgroundColor: Colors.white));

ThemeData darkThem = ThemeData(
  scaffoldBackgroundColor: const Color(0xFF262424),
  //HexColor('333739'),
  primarySwatch: Colors.blue,
  appBarTheme: const AppBarTheme(
    titleSpacing: 20.0,
    iconTheme: IconThemeData(color: Colors.white),
    backwardsCompatibility: false,
    titleTextStyle: TextStyle(
        fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor:  Color(0xFF262424), //HexColor('333739'),
      statusBarIconBrightness: Brightness.light,
    ),
    color: Color(0xFF262424),
    //HexColor('333739'),
    elevation: 0,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.deepOrange,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    elevation: 20.0,
    selectedItemColor: Colors.deepOrange,
    backgroundColor: Color(0xFF262424), // HexColor('333739'),
  ),
  textTheme: const TextTheme(
      bodyText1: TextStyle(
          fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white)),
);
