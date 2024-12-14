import 'package:flutter/material.dart';
import 'package:task/model/option_model.dart';
import 'package:task/provider/option_provider.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({
    super.key,
    required this.model,
    required this.provider,
  });
  final OptionModel model;
  final OptionProvider provider;

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
            color: Colors.red,
          ),
          child: DropdownButton<String>(
            onChanged: (value) {
              provider.selectedOptionTitle = value ?? "Selecte Option";
            },
            hint: Text(provider.selectedOption == ''
                ? "Selecte Option"
                : provider.selectedOption),
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
                  value: model.suboptions[0].suboptions![j].label,
                  child: Text(model.suboptions[0].suboptions![j].label),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
