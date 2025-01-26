import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

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
    this.typeField = TypeField.editText
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

  InputDecoration _buildInputDecoration() {
    return InputDecoration(
      labelText: widget.labelText,
      fillColor: Theme.of(context).colorScheme.surface,
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.typeField == TypeField.phone
        ? InternationalPhoneNumberInput(
            onInputChanged: (value) {},
            formatInput: false,
            textFieldController: widget.controller,
            maxLength: 10,
            initialValue: PhoneNumber(isoCode: 'MX'),
            searchBoxDecoration: InputDecoration(
              hintText: 'Buscar país',
              fillColor: Theme.of(context).colorScheme.surface,
            ),
            selectorConfig: const SelectorConfig(
              selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              useEmoji: true,
              useBottomSheetSafeArea: true,
            ),
            inputDecoration: _buildInputDecoration(),
            validator: widget.validator,
          )
        : TextFormField(
            enabled: widget.typeField != TypeField.onlyText,
            controller: widget.controller,
            obscureText: widget.typeField == TypeField.password ? _obscureText : false,
            decoration: _buildInputDecoration().copyWith(
              suffixIcon: widget.typeField == TypeField.password
                  ? IconButton(
                      icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                      onPressed: _togglePasswordVisibility,
                    )
                  : null,
            ),
            validator: widget.validator,
          );
  }
}

enum TypeField { editText, onlyText, password, phone }