import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:veecom/data/darkmode_provider/darkmode.dart';

class IsDarkModeSwitch extends StatelessWidget {
  const IsDarkModeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: context.watch<DarkThemeProvider>().themeValue,
      onChanged: (value) {
        context.read<DarkThemeProvider>().themeValue = value;
      },
    );
  }
}
