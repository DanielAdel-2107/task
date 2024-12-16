import 'package:flutter/material.dart';
import 'package:task/model/option_model.dart';
import 'package:task/provider/option_provider.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({
    super.key,
    required this.model,
    required this.provider,
    required this.suboptions,
    this.onChanged,
    this.label = "Select Option",
    required this.title,
  });
  final String title;
  final OptionModel model;
  final OptionProvider provider;
  final List<Suboptions> suboptions;
  final Function(int?)? onChanged;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
          ),
          child: DropdownButton<int>(
            onChanged: onChanged,
            hint:
                Text(label == '' ? "Selecte Option" : provider.selectedOption),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            isExpanded: true,
            underline: const SizedBox(),
            focusColor: Colors.black,
            borderRadius: BorderRadius.circular(10),
            dropdownColor: Colors.grey,
            items: [
              // for (int i = 0; i < model.suboptions.length; i++)
              for (int j = 0; j < suboptions.length; j++)
                DropdownMenuItem(
                  value: j,
                  child: Text(suboptions[j].label),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
