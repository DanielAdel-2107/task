import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.onPressed,
    required this.label,
  });
  final Function()? onPressed;
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(color: Colors.red, fontSize: 20),
        ));
  }
}
