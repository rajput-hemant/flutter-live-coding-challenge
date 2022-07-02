import 'package:flutter/material.dart';

class TextFieldBuilder extends StatelessWidget {
  final String labelText;
  final Icon icon;
  final TextInputType textType;
  final TextEditingController controller;

  const TextFieldBuilder({
    super.key,
    required this.icon,
    required this.textType,
    required this.labelText,
    required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        // isDense: true,
        prefixIcon: icon,
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      controller: controller,
      keyboardType: textType,
    );
  }
}
