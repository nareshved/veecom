import 'package:flutter/material.dart';
import 'package:veecom/repository/pages/home_mobile.dart';
import 'package:veecom/repository/pages/home_page.dart';
import 'package:veecom/repository/widgets/responsive_app/responsive_app.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(desktop: HomePageDesktop(), mobile: HomePageMobile());
  }
}
