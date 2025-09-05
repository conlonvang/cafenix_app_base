import 'package:flutter/material.dart';

import '../../core/layouts/responsive_layout.dart';
import '../../views/home/moblie/home_moblie.dart';
import '../../views/home/tablet/home_tablet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: HomeMobile(),
      tablet: HomeTablet(),
    );
  }
}