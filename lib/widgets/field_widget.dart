import 'package:flutter/material.dart';

class FieldCustom extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String? Function(String?)? validator;
  final TypeField typeField;

  const FieldCustom({
    super.key, 
    required this.controller, 
    required this.labelText, 
    this.validator,
    this.typeField = TypeField.text
  });

  @override
  State<FieldCustom> createState() => _FieldCustomState();
}

class _FieldCustomState extends State<FieldCustom> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.typeField) {
      case TypeField.password:
        return TextFormField(
          controller: widget.controller,
          obscureText: _obscureText,
          decoration: InputDecoration(
            labelText: widget.labelText,
            fillColor: Theme.of(context).colorScheme.surface,
            suffixIcon: IconButton(
              icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
              onPressed: _togglePasswordVisibility,
            ),
          ),
          validator: widget.validator,
        );
      default:
        return TextFormField(
          controller: widget.controller,
          decoration: InputDecoration(
            labelText: widget.labelText,
            fillColor: Theme.of(context).colorScheme.surface
          ),
          validator: widget.validator
        );
    }
  }
}

enum TypeField {text, password}