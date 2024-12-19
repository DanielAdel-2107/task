import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:task/provider/edit_profile_provider.dart';
import 'package:task/widgets/custom_user_app_bar.dart';
import 'package:task/widgets/custom_user_datails.dart';
import 'package:task/widgets/wave_clipper.dart';

class EditUserProfileScreen extends StatelessWidget {
  const EditUserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomUserAppBar(
            enabelEdit: false,
          ),
          CustomUserDetails(),
        ],
      ),
    );
  }
}
