import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/provider/edit_profile_provider.dart';
import 'package:task/widgets/custom_text_form_field.dart';

class CustomEditUserDetails extends StatelessWidget {
  const CustomEditUserDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<EditProfileProvider>(
      builder: (context, provider, child) => Expanded(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            CustomTextFormField(
              hintText: provider.userName ?? 'Daniel Adel',
              controller: provider.userNameController,
              title: 'User Name',
            ),
            CustomTextFormField(
              hintText: provider.age ?? '22',
              title: 'Age',
              controller: provider.ageController,
            ),
            CustomTextFormField(
              hintText: provider.weight ?? '80',
              title: 'Weight',
              controller: provider.weightController,
            ),
            CustomTextFormField(
              hintText: provider.height ?? '180',
              title: 'Height',
              controller: provider.heightController,
            ),
            CustomTextFormField(
              hintText: provider.bloodType ?? 'A+',
              title: 'Blood Type',
              controller: provider.bloodTypeController,
            ),
            CustomTextFormField(
              title: provider.chronicDiseases ?? 'Diseases',
              hintText: 'Diabetes , Hypertension , Heart Disease',
              controller: provider.chronicDiseasesController,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, foregroundColor: Colors.white),
              onPressed: () {
                provider.updateTitle();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Update",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
