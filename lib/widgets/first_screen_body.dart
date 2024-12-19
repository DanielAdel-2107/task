import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:task/screens/emergency_screen.dart';
import 'package:task/widgets/custom_elevated_button.dart';

class FirstScreenBody extends StatelessWidget {
  const FirstScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/emergancy_call.png').animate().fade().scale(
              duration: const Duration(milliseconds: 300),
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
    );
  }
}
