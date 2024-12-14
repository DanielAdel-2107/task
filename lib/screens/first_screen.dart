import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:task/screens/emergency_screen.dart';
import 'package:task/widgets/custom_elevated_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/emergancy_call.png')
                .animate()
                .fade()
                .scale(
                  duration: const Duration(milliseconds: 700),
                ),
            CustomElevatedButton(
              label: 'Emergency',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const EmergencyScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
