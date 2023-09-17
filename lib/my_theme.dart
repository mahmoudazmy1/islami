import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLight = Color(0xffB7935F);
  static Color primaryDark = Color(0xff141A2E);
  static Color blackColor = Color(0xff242424);
  static Color whiteColor = Color(0xffffffff);
  static Color yellowColor = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
      canvasColor: primaryLight,
      primaryColor: primaryLight,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: blackColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showUnselectedLabels: true,
          selectedItemColor: blackColor,
          unselectedItemColor: whiteColor,
          backgroundColor: primaryLight),
      textTheme: TextTheme(
          titleSmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: blackColor,
          ),
          titleMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: blackColor,
          ),
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: blackColor,
          )));
  static ThemeData darkTheme = ThemeData(
      canvasColor: primaryLight,
      primaryColor: primaryDark,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: yellowColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showUnselectedLabels: true,
          selectedItemColor: yellowColor,
          unselectedItemColor: whiteColor,
          backgroundColor: primaryLight),
      textTheme: TextTheme(
          titleSmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: yellowColor,
          ),
          titleMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: whiteColor,
          ),
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: whiteColor,
          )));
}
