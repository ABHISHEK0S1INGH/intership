 import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData get lighttheme =>
      ThemeData(
          appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0.0,

          )
      );


  static ThemeData get darktheme =>
      ThemeData(
        brightness: Brightness.dark,
      );
}