
import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData themeEnglish = ThemeData(
  useMaterial3: true,
  //scaffoldBackgroundColor: bgColor,
  fontFamily: "PlayfairDisplay",
  iconTheme:const IconThemeData(color: primaryColor),
  floatingActionButtonTheme:
     const FloatingActionButtonThemeData(backgroundColor: primaryColor),
  appBarTheme: AppBarTheme( 
    centerTitle: true,
    elevation: 0,
    iconTheme:const IconThemeData(color: primaryColor),
    titleTextStyle:const  TextStyle(
        color: primaryColor,
        fontWeight: FontWeight.bold,
      fontFamily: "PlayfairDisplay",
        fontSize: 20),
    backgroundColor: Colors.grey[50],
  ),
  textTheme: const TextTheme(
      headlineLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: black),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: black),
      bodyLarge: TextStyle(
          height: 2,
          color: grey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyMedium: TextStyle(height: 2, color: grey, fontSize: 14)),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
      headlineLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: black),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 18, color: black),
      bodyLarge: TextStyle(
          height: 2,
          color: grey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyMedium: TextStyle(height: 2, color: grey, fontSize: 14)),
  primarySwatch: Colors.blue,
);
