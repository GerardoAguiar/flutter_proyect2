import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.green;

  static const Color textColor = Colors.blue;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    
    // Primary Color
    primaryColor: primary,
    // App Bar Theme
    appBarTheme: const AppBarTheme(
    color: Color.fromARGB(255, 29, 74, 151),
    elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.black,

    // TextButtom Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary )
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 0
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            elevation: 0,
     )
    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle( color: textColor ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primary ),
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
      ),
      
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primary ),
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
      ),

    )
  );
  
}