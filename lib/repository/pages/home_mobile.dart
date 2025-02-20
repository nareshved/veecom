import 'package:flutter/material.dart';
import '../../domain/utils/app_dev_info/app_dev.dart';
import '../widgets/darkmode/dark_mode.dart';

class HomePageMobile extends StatelessWidget {
  HomePageMobile({super.key});

  final TextEditingController naam = TextEditingController();

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
          TextField(
            controller: naam,
          ),
          ElevatedButton(onPressed: (){
            print(naam
            .text);
          }, child: Text("tap me"))
        ],
      ),
    );
  }
}
