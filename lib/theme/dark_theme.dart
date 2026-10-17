import 'package:flutter/material.dart';

var darkTheme = ThemeData(
  canvasColor: Colors.black,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
  ),
  chipTheme: const ChipThemeData(
    backgroundColor: Color.fromARGB(31, 0, 0, 0),
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  bottomNavigationBarTheme:
      const BottomNavigationBarThemeData(backgroundColor: Colors.black),
);
