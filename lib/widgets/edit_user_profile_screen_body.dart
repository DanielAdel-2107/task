import 'package:flutter/material.dart';
import 'package:task/widgets/custom_edit_user_details.dart';
import 'package:task/widgets/custom_user_app_bar.dart';

class EditUserProfileScreenBody extends StatelessWidget {
  const EditUserProfileScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomUserAppBar(
          enabelEdit: true,
        ),
        CustomEditUserDetails(),
      ],
    );
  }
}
