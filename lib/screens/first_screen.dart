import 'package:flutter/material.dart';
import 'package:task/widgets/first_screen_body.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FirstScreenBody(),
      ),
    );
  }
}
