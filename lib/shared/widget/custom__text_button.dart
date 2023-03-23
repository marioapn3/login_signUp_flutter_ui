// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
  final String text;
  final void Function()? onPressed;
  const CustomTextButton({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      child: Text(widget.text),
    );
  }
}
