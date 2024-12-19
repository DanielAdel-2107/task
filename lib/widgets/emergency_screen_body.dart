import 'package:flutter/material.dart';
import 'package:task/provider/option_provider.dart';
import 'package:task/widgets/custom_drop_down_button.dart';
import 'package:task/widgets/custom_text_button.dart';
import 'package:task/widgets/custom_time_line_tile.dart';
import 'package:task/widgets/custom_type_drop_down_button.dart';

class EmergencyScreenBody extends StatelessWidget {
  const EmergencyScreenBody({
    super.key,
    required this.provider,
  });
  final OptionProvider provider;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: provider.loadOptionData
          ? Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  provider.selectedTypeOption == ''
                      ? CustomTypeDropDownButton(
                          provider: provider,
                        )
                      : (provider.selectedOption == '')
                          ? CustomDropDownButton(
                              provider: provider,
                              model: provider
                                  .optionData[provider.selectedTypeIndex!],
                              suboptions: provider
                                  .optionData[provider.selectedTypeIndex!]
                                  .suboptions,
                              onChanged: (value) {
                                provider.selectedOption =
                                    value ?? "Selecte Option";
                              },
                              label: provider.selectedOption,
                              title: provider.selectedTypeOption,
                            )
                          : CustomDropDownButton(
                              model: provider
                                  .optionData[provider.selectedTypeIndex!],
                              title: provider.selectedOption,
                              provider: provider,
                              suboptions: provider
                                  .optionData[provider.selectedTypeIndex!]
                                  .suboptions[provider.selectedOptionIndex!]
                                  .suboptions!,
                              onChanged: (value) {
                                provider.selectedCategoryOption =
                                    value ?? "Selecte Option";
                              },
                              label: provider.selectedCategoryOption,
                            ),
                  const Spacer(),
                  CustomTimeLineTile(
                    title: 'Select Type',
                    subTitle: provider.selectedTypeOption,
                    isFirst: true,
                    isDone: provider.selectedTypeOption == '' ? false : true,
                  ),
                  CustomTimeLineTile(
                    title: 'Select Option',
                    subTitle: provider.selectedOption,
                    isDone: provider.selectedOption == '' ? false : true,
                  ),
                  CustomTimeLineTile(
                    title: 'Category',
                    subTitle: provider.selectedCategoryOption,
                    isLast: true,
                    isDone:
                        provider.selectedCategoryOption == '' ? false : true,
                  ),
                  const Spacer(),
                  CustomTextButton(
                    label: "Reset",
                    onPressed: () {
                      provider.reset();
                    },
                  ),
                ],
              ),
            )
          : const CircularProgressIndicator(),
    );
  }
}
