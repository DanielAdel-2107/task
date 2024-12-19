import 'package:flutter/material.dart';

import 'package:task/widgets/custom_user_app_bar.dart';
import 'package:task/widgets/custom_user_datails.dart';

class EditUserProfileScreenBody extends StatelessWidget {
  const EditUserProfileScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomUserAppBar(
          enabelEdit: false,
        ),
        CustomUserDetails(),
      ],
    );
  }
}
