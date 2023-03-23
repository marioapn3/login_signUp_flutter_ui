// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
  final String text;
  final Color? color;
  final double? width;
  final double? height;
  final void Function()? onPressed;
  const CustomElevatedButton(
      {Key? key,
      required this.text,
      this.color,
      this.width,
      this.height,
      this.onPressed})
      : super(key: key);

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.color,
        ),
        onPressed: widget.onPressed,
        child: Text(widget.text),
      ),
    );
  }
}
