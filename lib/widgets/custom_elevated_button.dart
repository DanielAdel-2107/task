import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.onPressed,
    required this.label,
  });
  final Function()? onPressed;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          height: 60,
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(16),
              gradient: const LinearGradient(
                colors: [Colors.white, Colors.red],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.black,
              surfaceTintColor: Colors.transparent,
              shadowColor: Colors.transparent,
            ),
            onPressed: onPressed,
            child: Text(
              label,
              style: TextStyle(fontSize: 20),
            ),
          ).animate().fade().scale(
                delay: const Duration(milliseconds: 1400),
                duration: const Duration(milliseconds: 500),
              ),
        ).animate().fade().scale(
              delay: const Duration(milliseconds: 700),
              duration: const Duration(milliseconds: 500),
            ),
      ],
    );
  }
}
