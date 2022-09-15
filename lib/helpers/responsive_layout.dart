import 'package:flutter/material.dart';

// We will modify it once we have our final design

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget desktop;

  const ResponsiveLayout({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
    this.mobileLarge,
  }) : super(key: key);

  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 700;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000 &&
      MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1000;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width >= 1170) {
      return desktop;
    } else if (size.width >= 785 && tablet != null) {
      return tablet!;
    } else if (size.width >= 650 && mobileLarge != null) {
      return mobileLarge!;
    } else {
      return mobile;
    }
  }
}
