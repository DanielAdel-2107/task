import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task/provider/edit_profile_provider.dart';

class ChangeUserImage extends StatelessWidget {
  const ChangeUserImage({
    super.key,
    required this.provider,
  });
  final EditProfileProvider provider;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -10,
      right: -10,
      child: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey,
          child: Center(
            child: IconButton(
              icon: Icon(Icons.camera_alt),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Select Image'),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          provider.pickImage(ImageSource.camera);
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(Icons.camera),
                              SizedBox(
                                height: 15,
                              ),
                              Text('Camera'),
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          provider.pickImage(ImageSource.gallery);
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(Icons.image),
                              SizedBox(
                                height: 15,
                              ),
                              Text('Gallary'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )),
    );
  }
}
