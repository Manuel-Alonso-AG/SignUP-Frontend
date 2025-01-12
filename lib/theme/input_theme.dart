import 'package:flutter/material.dart';
import 'package:frontend/utils/radius_constants.dart';
import 'package:frontend/utils/spacing_constants.dart';

class InputCustom {
  static InputDecoration normal(BuildContext context, String? label) => InputDecoration(
    labelText: label,
    contentPadding: paddAllMedium,
    filled: true,
    fillColor: Theme.of(context).colorScheme.surface,
    border: const OutlineInputBorder(borderRadius: borderRadiusMedium,borderSide: BorderSide.none)
  );
  static InputDecoration password(BuildContext context, String? label, {required VoidCallback onToggle, required bool isToggle}) => InputDecoration(
    labelText: label,
    contentPadding: paddAllMedium,
    suffixIcon: IconButton(
      icon: isToggle? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
      onPressed: onToggle,
    ),
    filled: true,
    fillColor: Theme.of(context).colorScheme.surface,
    border: const OutlineInputBorder(borderRadius: borderRadiusMedium,borderSide: BorderSide.none)
  );
}