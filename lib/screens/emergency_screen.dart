import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/provider/option_provider.dart';
import 'package:task/widgets/custom_drop_down_button.dart';
import 'package:task/widgets/custom_text_button.dart';
import 'package:task/widgets/custom_time_line_tile.dart';
import 'package:task/widgets/custom_type_drop_down_button.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OptionProvider(),
      child: Consumer<OptionProvider>(builder: (context, provider, child) {
        return Scaffold(
          body: Center(
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
                            : CustomDropDownButton(
                                provider: provider,
                                model: provider
                                    .optionData[provider.selectedIndex!],
                              ),
                        const Spacer(),
                        CustomTimeLineTile(
                          title: 'Select Type',
                          subTitle: provider.selectedTypeOption,
                          isFirst: true,
                          isDone:
                              provider.selectedTypeOption == '' ? false : true,
                        ),
                        CustomTimeLineTile(
                          title: 'Select Option',
                          subTitle: provider.selectedOption,
                          isDone: provider.selectedOption == '' ? false : true,
                        ),
                        CustomTimeLineTile(
                          title: 'Complete',
                          subTitle: "Done",
                          isLast: true,
                          isDone: provider.selectedOption == '' ? false : true,
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
          ),
        );
      }),
    );
  }
}
