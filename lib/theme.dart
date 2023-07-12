import 'package:flutter/material.dart';

// themes for toggle

final kDarkTheme = ThemeData.dark().copyWith(
  primaryColor: Colors.white,
  appBarTheme:  const AppBarTheme(color: Colors.deepPurple),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.deepPurple),
  elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent))));

final kLightTheme = ThemeData.light().copyWith(
  primaryColor: Colors.black,
  appBarTheme: const AppBarTheme(color: Colors.lightGreen),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.lightGreen),
  elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreenAccent))));

 
