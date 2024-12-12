import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/provider/option_provider.dart';
import 'package:task/widgets/custom_drop_down_button.dart';

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
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < provider.optionData.length; i++)
                          CustomDropDownButton(
                            model: provider.optionData[i],
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
