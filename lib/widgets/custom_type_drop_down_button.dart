import 'package:flutter/material.dart';
import 'package:task/model/option_model.dart';
import 'package:task/provider/option_provider.dart';

class CustomTypeDropDownButton extends StatelessWidget {
  const CustomTypeDropDownButton({
    super.key,
    required this.provider,
  });
  final OptionProvider provider;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.teal,
          ),
          child: DropdownButton<int>(
            onChanged: (value) {
              provider.selectedTypeOptionTitle =
                  value ?? provider.selectedTypeOption;
            },
            hint: Text(provider.selectedTypeOption == ''
                ? "Select Option"
                : provider.selectedTypeOption),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            isExpanded: true,
            underline: const SizedBox(),
            focusColor: Colors.black,
            borderRadius: BorderRadius.circular(10),
            dropdownColor: Colors.grey,
            items: [
              for (int j = 0; j < provider.optionData.length; j++)
                DropdownMenuItem(
                  value: j + 1,
                  child: Text(provider.optionData[j].label),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
