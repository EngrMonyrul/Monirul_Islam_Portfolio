import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color.fromRGBO(21, 181, 114, 1);
  static const Color secondaryColor = Color(0xFFF36720);
  static const Color tertiaryColor = Color(0xFF4AC7EC);
  static const Color hintColor = Color.fromRGBO(166, 177, 187, 1);
  static const Color errorColor = Color.fromRGBO(249, 77, 30, 1);
  static const Color successColor = Color(0xFF339900);
  static const Color scaffoldBackgroundColor = Color.fromRGBO(7, 17, 26, 1);
  static const Color darkScaffoldBackgroundColor = Colors.black45;
}

class ColorSchemeConfig {
  // --------------------------------------
  // Light Color scheme
  // --------------------------------------
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primaryColor,
    onPrimary: Colors.white,
    secondary: AppColors.secondaryColor,
    onSecondary: Colors.white,
    error: AppColors.errorColor,
    onError: Colors.white,
    surface: Colors.white,
    onSurface: Colors.black,
    outline: AppColors.hintColor,
    tertiary: AppColors.tertiaryColor,
    onTertiary: Colors.white,
  );

  // --------------------------------------
  // Dark Color scheme
  // --------------------------------------
  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primaryColor,
    onPrimary: Colors.white,
    secondary: AppColors.secondaryColor,
    onSecondary: Colors.white,
    error: AppColors.errorColor,
    onError: Colors.white,
    surface: Colors.black,
    onSurface: Colors.white,
    outline: AppColors.hintColor,
    tertiary: AppColors.tertiaryColor,
    onTertiary: Colors.white,
  );
}
