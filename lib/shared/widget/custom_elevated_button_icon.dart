// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  final void Function()? onPressed;
  final String text;
  final IconData icon;
  const CustomIconButton(
      {Key? key, this.onPressed, required this.text, required this.icon})
      : super(key: key);

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(widget.icon),
      label: Text(widget.text),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueGrey,
      ),
      onPressed: widget.onPressed,
    );
  }
}
