import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  final Widget? titleWidget;

  const CheckboxWidget({super.key, this.titleWidget});

  @override
  State<CheckboxWidget> createState() => CheckboxWidgetState();

  // Método para obtener el valor de _isChecked
  bool getIsChecked(CheckboxWidgetState state) => state.isChecked;
}

class CheckboxWidgetState extends State<CheckboxWidget> {
  bool _isChecked = false;

  bool get isChecked => _isChecked;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: widget.titleWidget,
      value: _isChecked,
      onChanged: (bool? value) {
        setState(() {
          _isChecked = value ?? false;
        });
      },
    );
  }
}
