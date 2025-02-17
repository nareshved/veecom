import 'package:flutter/material.dart';
import 'package:veecom/domain/utils/app_dev_info/app_dev.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hoem"),
      ),
      body: Column(
        children: [
          Text(AppInfo.appYear),
          Text(
            AppInfo.appCredit,
            style: Theme.of(context).textTheme.titleLarge!,
          ),
          Text(
            AppInfo.appCredit,
          )
        ],
      ),
    );
  }
}
