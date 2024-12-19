import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/provider/edit_profile_provider.dart';
import 'package:task/widgets/custom_user_list_tile.dart';

class CustomUserDetails extends StatelessWidget {
  const CustomUserDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<EditProfileProvider>(
      builder: (context, provider, child) {
        return Expanded(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              UserListTile(
                  icon: Icons.person,
                  title: 'User Name',
                  subTitle: provider.userName ?? 'Daniel Adel'),
              UserListTile(
                  icon: Icons.co_present_outlined,
                  title: 'Age',
                  subTitle: provider.age ?? '22'),
              UserListTile(
                  icon: Icons.line_weight,
                  title: 'Weight',
                  subTitle: provider.weight ?? '80'),
              UserListTile(
                  icon: Icons.legend_toggle_sharp,
                  title: 'length',
                  subTitle: provider.height ?? '180'),
              UserListTile(
                  icon: Icons.bloodtype,
                  title: 'Blood Type',
                  subTitle: provider.bloodType ?? 'A+'),
              UserListTile(
                  icon: Icons.chrome_reader_mode,
                  title: 'Chronic diseases',
                  subTitle: provider.chronicDiseases ??
                      'Diabetes\nHypertension\nHeart disease'),
            ],
          ),
        );
      },
    );
  }
}
