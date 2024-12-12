import 'package:flutter/material.dart';
import 'package:task/model/option_model.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({
    super.key,
    required this.model,
  });
  final OptionModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(model.label),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.teal,
          ),
          child: DropdownButton(
              hint: Text(model.suboptions[0].label),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              isExpanded: true,
              underline: const SizedBox(),
              focusColor: Colors.black,
              borderRadius: BorderRadius.circular(10),
              dropdownColor: Colors.grey,
              items: [
                // for (int i = 0; i < model.suboptions.length; i++)
                for (int j = 0; j < model.suboptions[0].suboptions!.length; j++)
                  DropdownMenuItem(
                    value: (0 + 1),
                    child: Text(model.suboptions[0].suboptions![j].label),
                  )
              ],
              onChanged: (value) {}),
        ),
      ],
    );
  }
}
