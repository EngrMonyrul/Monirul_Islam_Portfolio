import 'package:flutter/material.dart';
import 'package:monirul_islam_portfolio/utils/enums/screens_enum.dart';

class ResponsiveScreenHelper extends StatelessWidget {
  const ResponsiveScreenHelper(
      {super.key, this.mobile, this.tablet, this.desktop});

  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= ScreensEnum.mobile.maxWidth) {
          return mobile ?? const Text("Mobile View");
        } else if (constraints.minWidth >= ScreensEnum.tablet.minWidth &&
            constraints.maxWidth <= ScreensEnum.tablet.maxWidth) {
          return tablet ?? const Text("Tablet View");
        } else {
          return desktop ?? const Text("Desktop View");
        }
      },
    );
  }
}
