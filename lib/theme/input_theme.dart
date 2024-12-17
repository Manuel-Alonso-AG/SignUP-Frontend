import 'package:flutter/material.dart';
import 'package:frontend/utils/constants.dart';

class InputTheme {
  final String? label;
  final Widget? suffixIcon;
  final Icon? icon;

  InputTheme({this.suffixIcon, this.icon, this.label});

  InputDecoration normal(BuildContext context){
    return InputDecoration(
      labelText: label,
      suffixIcon: suffixIcon,
      icon: icon,
      contentPadding: paddAll,
      filled: true,
      fillColor: Theme.of(context).colorScheme.surface,
      border: const OutlineInputBorder(
        borderRadius: borderCircular,
        borderSide: BorderSide.none
      )
    );
  }
}