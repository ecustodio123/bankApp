import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF0066FF);
  static const Color darkPrimary = Color(0XFF5D6B88);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Color Primario
    primaryColor: const Color(0xFF0066FF),

    //AppBar Theme
    appBarTheme: const AppBarTheme(

        color: Colors.transparent,
        // foregroundColor: Colors.blue,
        // surfaceTintColor: Colors.blue,
        // shadowColor: Colors.blue,
        // toolbarTextStyle: TextStyle(color: Colors.blue),
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Color(0XFF1E1E2D),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 18),
        iconTheme: IconThemeData(
          color: Color(0XFF1E1E2D),
          size: 16,
        )),
    
    //Scaffold Theme
    scaffoldBackgroundColor: const Color(0XFFFFFFFF),

    //ElevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        padding: EdgeInsets.symmetric(vertical: 16),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        textStyle: const TextStyle(
            fontSize: 16, fontFamily: 'Oxygen', fontWeight: FontWeight.w700),
      ),
    ),

    //inputDecorationTheme
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0XFFA2A2A7), width: 1.5)),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0XFFA2A2A7), width: 1.5)),
    ),

    // scaffoldBackgroundColor: const Color(0XFFF0F2F8)
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Color Primario
    primaryColor: const Color(0XFF5D6B88),

    // AppBar Theme
    appBarTheme: const AppBarTheme(color: darkPrimary, elevation: 0),
  );
}
