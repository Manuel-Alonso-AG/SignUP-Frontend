import 'package:flutter/material.dart';
import 'package:frontend/sign_up.dart';
import 'package:frontend/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  final ThemeMode _themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SignUP App',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeMode,
      home: const SignUp()
    );
  }
}
