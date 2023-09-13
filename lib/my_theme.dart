import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLight = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static Color whiteColor = Color(0xffffffff);

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
}
