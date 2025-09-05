import 'package:flutter/material.dart';

class ResponsiveUtils {
  static bool isTablet(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.shortestSide >= 600;
  }

  static bool isMobile(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.shortestSide < 600;
  }
}
