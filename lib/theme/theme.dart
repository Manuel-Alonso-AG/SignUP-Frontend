import 'package:flutter/material.dart';

var isDarkMode = false;

var textTheme = const TextTheme(
  titleLarge: TextStyle(
    fontFamily: 'BAHNSCHRIFT',
    fontWeight: FontWeight.bold
  ),
  titleMedium: TextStyle(
    fontFamily: 'BAHNSCHRIFT',
    fontWeight: FontWeight.bold
  ),
  titleSmall: TextStyle(
    fontFamily: 'BAHNSCHRIFT',
    fontWeight: FontWeight.bold
  ),
  bodyLarge: TextStyle(
    fontFamily: 'BAHNSCHRIFT'
  ),
  bodyMedium: TextStyle(
    fontFamily: 'BAHNSCHRIFT'
  ),
  bodySmall: TextStyle(
    fontFamily: 'BAHNSCHRIFT'
  ),
  labelLarge: TextStyle(
    fontFamily: 'BAHNSCHRIFT',
  ),
  labelMedium: TextStyle(
    fontFamily: 'BAHNSCHRIFT',
  ),
  labelSmall:  TextStyle(
    fontFamily: 'BAHNSCHRIFT',
  ),
  displayLarge:  TextStyle(
    fontFamily: 'BAHNSCHRIFT'
  ),
  displayMedium:  TextStyle(
    fontFamily: 'BAHNSCHRIFT'
  ),
  displaySmall:  TextStyle(
    fontFamily: 'BAHNSCHRIFT'
  ),
);

InputDecorationTheme inpDec = const InputDecorationTheme(
  outlineBorder: BorderSide.none
);


ThemeData lightTheme = ThemeData(
  inputDecorationTheme: inpDec,
  textTheme: textTheme,
  brightness: Brightness.light,
  useMaterial3: true,
  colorScheme: const ColorScheme.light().copyWith(
    primary: const Color(0xFFeb5e28),
    background: const Color(0xFFf5f3f4),
    surface: Colors.white,
    error: const Color(0xFFe5383b),
  )
);

// 015E2B
// 0FBA5C

ThemeData darkTheme = ThemeData(
  inputDecorationTheme: inpDec,
  textTheme: textTheme,
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: const ColorScheme.dark().copyWith(
    primary: const Color(0xFF0FB2BA),
    inversePrimary: const Color(0xFF53916F),
    secondary: const Color(0xFF015A5E),
    onSecondary: const Color(0xFF015E2B),
    background: const Color(0xFF0D2021),
    surface: const Color(0xFF142F30),
    error: Color.fromARGB(255, 251, 36, 79),
  )  
);
