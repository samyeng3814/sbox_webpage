import 'package:flutter/material.dart';
import 'package:sbox_web/features/homepage/large_screen_layout.dart';
import 'package:sbox_web/features/homepage/medium_screen_layout.dart';
import 'package:sbox_web/features/homepage/small_screen_layout.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    Key? key,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 720;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1150;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 720 &&
        MediaQuery.of(context).size.width <= 1150;
  }

  @override
  Widget build(BuildContext context) {
    debugPrint(
      MediaQuery.of(context).size.width.toString(),
    );
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1150) {
          return const LargeScreenLayout();
        } else if (constraints.maxWidth >= 720 &&
            constraints.maxWidth <= 1150) {
          return const MediumScreenLayout();
        } else {
          return const SmallScreenLayout();
        }
      },
    );
  }
}
