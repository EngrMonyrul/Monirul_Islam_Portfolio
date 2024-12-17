import 'package:flutter/material.dart';

class ComponentsConsts {
  ComponentsConsts._();

  static double kDesktopMaxWidth = 1000.0;
  static double kTabletMaxWidth = 760.0;

  static double getMobileMaxWidth(BuildContext context) =>
      MediaQuery.of(context).size.width * .8;
}
