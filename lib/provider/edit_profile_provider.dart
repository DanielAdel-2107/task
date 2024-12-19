import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileProvider with ChangeNotifier {
  Uint8List? image;
  TextEditingController userNameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController bloodTypeController = TextEditingController();
  TextEditingController chronicDiseasesController = TextEditingController();
  //
  String? userName, age, weight, height, bloodType, chronicDiseases;
  pickImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: source);
    if (pickedFile != null) {
      image = await pickedFile.readAsBytes();
    }
    notifyListeners();
  }

  updateTitle() {
    userName =
        userNameController.text == "" ? userName : userNameController.text;
    age = ageController.text == "" ? age : ageController.text;

    weight = weightController.text == "" ? weight : weightController.text;

    height = heightController.text == "" ? height : heightController.text;

    bloodType =
        bloodTypeController.text == "" ? bloodType : bloodTypeController.text;

    chronicDiseases = chronicDiseasesController.text == ""
        ? chronicDiseases
        : chronicDiseasesController.text;
    notifyListeners();
  }
}
