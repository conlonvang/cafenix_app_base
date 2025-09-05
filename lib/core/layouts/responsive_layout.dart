import 'package:flutter/material.dart';

import '../utils/responsive_utils.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  // final Widget? desktop;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.tablet,
    // this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;

    // if (width >= 900 && desktop != null) {
    //   return desktop!; // Desktop layout
    // } else if (width >= 600) {
    //   return tablet; // Tablet layout
    // } else {
    //   return mobile; // Mobile layout
    // }
    return ResponsiveUtils.isMobile(context) ? mobile : tablet;
  }
}
