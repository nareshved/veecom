import 'package:flutter/material.dart';

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key, required this.desktop, required this.mobile});

  final Widget desktop;
  final Widget mobile;

  // added for height width of screen using media Query for responsive app

  static bool isDesktop(BuildContext context) {
    return MediaQuery.sizeOf(context).width > MediaQuery.sizeOf(context).height;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.sizeOf(context).height > MediaQuery.sizeOf(context).width;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > constraints.maxHeight) {
          return desktop;
        } else {
          return mobile;
        }
      },
    );
  }
}
