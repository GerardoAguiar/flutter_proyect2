import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.green;

  static const Color textColor = Colors.blue;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    
    //Primary Color
    primaryColor: primary,
    //App Bar Theme
    appBarTheme: const AppBarTheme(
    color: Color.fromARGB(255, 29, 74, 151),
    elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.black,

    // TextButtom Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary )
    ),
  );

  
}