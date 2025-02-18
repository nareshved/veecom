import 'package:flutter/material.dart';
import 'package:veecom/domain/utils/app_dev_info/app_dev.dart';

import '../widgets/darkmode/dark_mode.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IsDarkModeSwitch(),
        title: Text(
          AppInfo.appName,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Text(
            "Desktop page",
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
