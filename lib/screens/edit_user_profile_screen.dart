import 'package:flutter/material.dart';
import 'package:task/widgets/edit_user_profile_screen_body.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditUserProfileScreenBody(),
    );
  }
}
