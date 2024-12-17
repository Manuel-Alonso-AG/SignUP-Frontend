import 'package:flutter/material.dart';
import 'package:frontend/utils/spacing_constants.dart';

class ButtomCustom extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final bool isLoading;
  final TypeButton typeButton;
  final Color? background;

  const ButtomCustom({
    super.key, 
    required this.child, 
    required this.onPressed, 
    this.isLoading = false,
    this.typeButton = TypeButton.normal, 
    this.background
  });

  ButtonStyle? _styleButton() {
    switch (typeButton) {
      case TypeButton.normal:
        return ElevatedButton.styleFrom(
          backgroundColor: background,
        );
      case TypeButton.expanded:
        return ElevatedButton.styleFrom(
          backgroundColor: background,
          minimumSize: const Size(double.infinity, 18)
        );
      case TypeButton.circular:
        return ElevatedButton.styleFrom(
          backgroundColor: background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28)
          )
        );
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading? null : onPressed,
      style: _styleButton(),
      child: Padding(
        padding: paddAllMedium,
        child: isLoading? const CircularProgressIndicator() : child
      ),
    );
  }
}

enum TypeButton {normal, expanded, circular}