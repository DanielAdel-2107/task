import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/provider/edit_profile_provider.dart';
import 'package:task/screens/edit_user_profile_screen.dart';
import 'package:task/screens/user_profile_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.white,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.topRight,
                )),
            child: Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Consumer<EditProfileProvider>(
                            builder: (context, provider, child) {
                          return CircleAvatar(
                            radius: 30,
                            child: provider.image == null
                                ? Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Image.asset(
                                        'assets/images/user_image.png'),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: MemoryImage(
                                          provider.image!,
                                        ),
                                      ),
                                    ),
                                  ),
                          );
                        }),
                        const SizedBox(height: 10),
                        const Text(
                          'Daniel Adel',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile Screen'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const UserProfileScreen();
              }));
            },
          ),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Edit Profile Screen'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const EditUserProfileScreen();
              }));
            },
          )
        ],
      ),
    );
  }
}
