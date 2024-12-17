import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monirul_islam_portfolio/core/themes/color_scheme_config.dart';
import 'package:monirul_islam_portfolio/core/themes/text_theme_config.dart';
import 'package:monirul_islam_portfolio/utils/enums/fonts_enum.dart';

class ThemeConfig {
  // --------------------------------------
// Light Theme Data
// --------------------------------------
  static final lightThemeData = ThemeData(
    useMaterial3: true,
    fontFamily: FontsEnum.poppins.fontsName,
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9),
      ),
      color: ColorSchemeConfig.lightColorScheme.surface,
      margin: EdgeInsets.zero,
    ),
    colorScheme: ColorSchemeConfig.lightColorScheme,
    textTheme: TextThemeConfig.lightTextTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      foregroundColor: ColorSchemeConfig.lightColorScheme.onSurface,
      elevation: 0,
      titleTextStyle: TextThemeConfig.lightTextTheme.titleLarge
          ?.copyWith(color: ColorSchemeConfig.lightColorScheme.onSurface),
      iconTheme: IconThemeData(
        color: ColorSchemeConfig.lightColorScheme.onSurface,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: const WidgetStatePropertyAll(1),
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
        backgroundColor: WidgetStateProperty.resolveWith(
          (states) {
            return states.contains(WidgetState.disabled)
                ? ColorSchemeConfig.lightColorScheme.outline.withOpacity(0.5)
                : ColorSchemeConfig.lightColorScheme.primary;
          },
        ),
        foregroundColor: WidgetStatePropertyAll(
            ColorSchemeConfig.lightColorScheme.onPrimary),
        shadowColor: const WidgetStatePropertyAll(Colors.transparent),
        textStyle: WidgetStatePropertyAll(
          TextThemeConfig.lightTextTheme.titleMedium
              ?.copyWith(color: ColorSchemeConfig.lightColorScheme.onTertiary),
        ),
        overlayColor: WidgetStateProperty.resolveWith(
          (states) {
            return states.contains(WidgetState.pressed)
                ? ColorSchemeConfig.lightColorScheme.tertiary.withOpacity(0.2)
                : null;
          },
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      hintStyle: TextThemeConfig.lightTextTheme.bodyMedium?.copyWith(
        color: ColorSchemeConfig.lightColorScheme.outline,
      ),
      errorStyle: TextThemeConfig.lightTextTheme.labelMedium?.copyWith(
        color: ColorSchemeConfig.lightColorScheme.error,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(
          color: ColorSchemeConfig.lightColorScheme.outline.withOpacity(0.7),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(
          color: ColorSchemeConfig.lightColorScheme.outline.withOpacity(0.7),
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(
            color: ColorSchemeConfig.lightColorScheme.outline.withOpacity(0.7)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide:
            BorderSide(color: ColorSchemeConfig.lightColorScheme.primary),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(color: ColorSchemeConfig.lightColorScheme.error),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      labelStyle: TextThemeConfig.lightTextTheme.bodyMedium?.copyWith(
        color: ColorSchemeConfig.lightColorScheme.outline,
      ),
      prefixIconColor: WidgetStateColor.resolveWith(
        (states) {
          return states.contains(WidgetState.focused)
              ? ColorSchemeConfig.lightColorScheme.onSurface
              : ColorSchemeConfig.lightColorScheme.outline.withOpacity(0.7);
        },
      ),
      suffixIconColor: WidgetStateColor.resolveWith(
        (states) {
          return states.contains(WidgetState.focused)
              ? ColorSchemeConfig.lightColorScheme.onSurface
              : ColorSchemeConfig.lightColorScheme.outline.withOpacity(0.7);
        },
      ),
    ),
  );

// --------------------------------------
// Dark Theme Data
// --------------------------------------
  static final darkThemeData = ThemeData(
    useMaterial3: true,
    fontFamily: FontsEnum.poppins.fontsName,
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9),
      ),
      color: ColorSchemeConfig.darkColorScheme.surface,
      margin: EdgeInsets.zero,
    ),
    colorScheme: ColorSchemeConfig.darkColorScheme,
    textTheme: TextThemeConfig.darkTextTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkScaffoldBackgroundColor,
      foregroundColor: ColorSchemeConfig.darkColorScheme.onSurface,
      elevation: 0,
      titleTextStyle: TextThemeConfig.darkTextTheme.titleLarge?.copyWith(
        color: ColorSchemeConfig.lightColorScheme.onSurface,
      ),
      shape: const LinearBorder(),
      iconTheme: IconThemeData(
        color: ColorSchemeConfig.darkColorScheme.onSurface,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: const WidgetStatePropertyAll(1),
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
        backgroundColor: WidgetStateProperty.resolveWith(
          (states) {
            return states.contains(WidgetState.disabled)
                ? ColorSchemeConfig.darkColorScheme.outline.withOpacity(
                    0.5,
                  )
                : ColorSchemeConfig.darkColorScheme.primary;
          },
        ),
        foregroundColor: WidgetStatePropertyAll(
          ColorSchemeConfig.darkColorScheme.onPrimary,
        ),
        shadowColor: const WidgetStatePropertyAll(
          Colors.transparent,
        ),
        textStyle: WidgetStatePropertyAll(
          TextThemeConfig.darkTextTheme.titleMedium?.copyWith(
            color: ColorSchemeConfig.darkColorScheme.onPrimary,
          ),
        ),
        overlayColor: WidgetStateProperty.resolveWith(
          (states) {
            return states.contains(WidgetState.pressed)
                ? ColorSchemeConfig.darkColorScheme.tertiary.withOpacity(
                    0.2,
                  )
                : null;
          },
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      hintStyle: TextThemeConfig.darkTextTheme.bodyMedium?.copyWith(
        color: ColorSchemeConfig.darkColorScheme.outline,
      ),
      errorStyle: TextThemeConfig.darkTextTheme.labelMedium?.copyWith(
        color: ColorSchemeConfig.darkColorScheme.error,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(
          color: ColorSchemeConfig.darkColorScheme.outline.withOpacity(
            0.6,
          ),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(
          color: ColorSchemeConfig.darkColorScheme.outline.withOpacity(
            0.6,
          ),
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(
          color: ColorSchemeConfig.darkColorScheme.outline.withOpacity(
            0.6,
          ),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(
          color: ColorSchemeConfig.darkColorScheme.primary,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(
          color: ColorSchemeConfig.darkColorScheme.error,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      labelStyle: TextThemeConfig.darkTextTheme.bodyMedium?.copyWith(
        color: ColorSchemeConfig.lightColorScheme.outline,
      ),
    ),
  );
}
