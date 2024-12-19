import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/provider/edit_profile_provider.dart';
import 'package:task/widgets/change_user_image.dart';
import 'package:task/widgets/wave_clipper.dart';

class UserImage extends StatelessWidget {
  const UserImage({
    super.key,
    this.enabelEdit = true,
  });
  final bool enabelEdit;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipper(),
      child: Consumer<EditProfileProvider>(
        builder: (context, provider, child) => Container(
          height: 255,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.red],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: provider.image == null
                        ? Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset('assets/images/user_image.png'),
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
                  ),
                  enabelEdit
                      ? ChangeUserImage(
                          provider: provider,
                        )
                      : SizedBox()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
