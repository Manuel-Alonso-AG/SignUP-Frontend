import 'package:flutter/material.dart';
import 'package:frontend/utils/radius_constants.dart';
import 'package:frontend/utils/spacing_constants.dart';

var textTheme = const TextTheme(
  titleLarge: TextStyle(fontWeight: FontWeight.bold),
  titleMedium: TextStyle(fontWeight: FontWeight.bold),
  titleSmall: TextStyle(fontWeight: FontWeight.bold),
);

// Se retira los bordes a los inputs
InputDecorationTheme inpDec = const InputDecorationTheme(
  errorStyle: TextStyle(color: Color(0xB5E5383B)),
  filled: true,
  contentPadding: paddAllSmall,
  border: OutlineInputBorder(
    borderRadius: borderRadiusMedium, 
    borderSide: BorderSide.none
  )
);

ThemeData lightTheme = ThemeData(
  inputDecorationTheme: inpDec,
  
  // 'BAHNSCHRIFT' es el nombre la tipografia de este proyecto
  fontFamily: 'BAHNSCHRIFT',
  textTheme: textTheme,
  brightness: Brightness.light,
  useMaterial3: true,

  // TODO: Colores usados para colores claros
  colorScheme: const ColorScheme.light().copyWith(
    primary: const Color(0xFF0FB2BA),
    inversePrimary: const Color(0xFF53916F),
    secondary: const Color(0xFF015A5E),
    onSecondary: const Color(0xFF015E2B),
    background: const Color(0xFFF3ECEF),
    surface: Colors.white,
    error: const Color(0xFFe5383b),
  )
);

ThemeData darkTheme = ThemeData(
  inputDecorationTheme: inpDec,
  textTheme: textTheme,
  brightness: Brightness.dark,
  useMaterial3: true,
  
  // TODO: Colores usados para colores obscuros
  colorScheme: const ColorScheme.dark().copyWith(
    primary: const Color(0xFF0FB2BA),
    inversePrimary: const Color(0xFF53916F),
    secondary: const Color(0xFF015A5E),
    onSecondary: const Color(0xFF015E2B),
    background: const Color(0xFF0D2021),
    surface: const Color(0xFF142F30),
    error: const Color(0xFFFB244F),
  )  
);
