import 'package:flutter/material.dart';
import 'package:task/screens/emergency_screen.dart';
import 'package:task/widgets/custom_elevated_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomElevatedButton(
          label: 'Emergency',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const EmergencyScreen();
            }));
          },
        ),
      ),
    );
  }
}
