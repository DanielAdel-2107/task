import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/provider/option_provider.dart';
import 'package:task/widgets/custom_drawer.dart';
import 'package:task/widgets/emergency_screen_body.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OptionProvider(),
      child: Consumer<OptionProvider>(builder: (context, provider, child) {
        return Scaffold(
          appBar: AppBar(),
          drawer: CustomDrawer(),
          body: EmergencyScreenBody(
            provider: provider,
          ),
        );
      }),
    );
  }
}
