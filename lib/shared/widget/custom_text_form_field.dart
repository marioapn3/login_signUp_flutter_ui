// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class TextFieldCustomWidget extends StatefulWidget {
  final String label;
  final String? hintText;
  final String? value;
  final String? Function(String?)? validator;
  final IconData? suffixIcon;
  final TextEditingController? controller;

  const TextFieldCustomWidget({
    Key? key,
    required this.label,
    this.hintText,
    this.value,
    this.validator,
    this.suffixIcon,
    this.controller,
  }) : super(key: key);

  @override
  State<TextFieldCustomWidget> createState() => _TextFieldCustomWidgetState();
}

class _TextFieldCustomWidgetState extends State<TextFieldCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      initialValue: widget.value,
      maxLength: 20,
      validator: widget.validator,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        labelText: widget.label,
        labelStyle: const TextStyle(
          color: Colors.blueGrey,
        ),
        suffixIcon: Icon(widget.suffixIcon),
        helperText: widget.hintText,
      ),
      onChanged: (value) {},
    );
  }
}
