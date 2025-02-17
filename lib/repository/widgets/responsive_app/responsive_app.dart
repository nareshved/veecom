import 'package:flutter/material.dart';

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key, required this.desktop, required this.mobile});

  final Widget desktop;
  final Widget mobile;
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
