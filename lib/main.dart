import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veecom/data/darkmode_provider/darkmode.dart';
import 'package:veecom/domain/utils/app_dev_info/app_dev.dart';
import 'package:veecom/domain/utils/text_theme/app_theme.dart';
import 'package:veecom/repository/pages/homepage_view.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => DarkThemeProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: context.watch<DarkThemeProvider>().themeValue
          ? ThemeMode.dark
          : ThemeMode.light,
      title: AppInfo.appName,
      theme: mLightTheme,
      darkTheme: mDarkTheme,
      home: HomePageView(),
    );
  }
}
