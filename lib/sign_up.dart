import 'package:flutter/material.dart';
import 'package:frontend/pages/login_page.dart';
import 'package:frontend/pages/register_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool toggleSing = false;

  void togglePages() {
    setState(() => toggleSing = !toggleSing);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: toggleSing? RegisterPage(onTap: togglePages) : LoginPage(onTap: togglePages)
    );
  }
}