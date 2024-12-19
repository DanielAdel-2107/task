import 'package:flutter/material.dart';
import 'package:task/screens/user_profile_screen.dart';
import 'package:task/widgets/user_image.dart';
import 'package:task/widgets/wave_clipper.dart';

class CustomUserAppBar extends StatelessWidget {
  const CustomUserAppBar({
    super.key,
    this.enabelEdit = false,
  });
  final bool enabelEdit;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            color: Colors.grey,
            width: double.infinity,
            height: 265,
          ),
        ),
        UserImage(
          enabelEdit: enabelEdit,
        ),
      ],
    );
  }
}
