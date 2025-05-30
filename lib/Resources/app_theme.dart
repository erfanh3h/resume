import 'package:flutter/material.dart';
import 'package:resume/Resources/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme(String fontFamily) => ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      surface: AppColors.backgroundLight,
      primary: AppColors.primary,
      secondary: AppColors.darkColor,
    ),
    textTheme: TextTheme(
      bodySmall: const TextStyle(
        color: AppColors.fontLight,
        fontSize: 14,
        height: 1.5,
      ),
      bodyMedium: const TextStyle(
        color: AppColors.fontLight,
        fontSize: 16,
        height: 1.7,
      ),
      headlineSmall: const TextStyle(
        color: AppColors.fontLight,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: const TextStyle(color: AppColors.grey, fontSize: 16),
      titleSmall: const TextStyle(color: AppColors.grey, fontSize: 13),
      titleLarge: const TextStyle(
        color: AppColors.blueWarmColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      displayLarge: TextStyle(color: AppColors.fontLight, fontSize: 7),
    ),
    iconTheme: const IconThemeData(color: AppColors.darkColor),
    cardTheme: const CardThemeData(color: AppColors.lightColor),
    primaryColor: AppColors.primaryLight,
    fontFamily: fontFamily,
    useMaterial3: true,
  );

  static ThemeData darkTheme(String fontFamily) => ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      surface: AppColors.backgroundDark,
      primary: AppColors.primaryDark,
      secondary: AppColors.lightColor,
    ),
    textTheme: TextTheme(
      bodySmall: const TextStyle(
        color: AppColors.fontDark,
        fontSize: 14,
        height: 1.5,
      ),
      bodyMedium: const TextStyle(
        color: AppColors.fontDark,
        fontSize: 16,
        height: 1.7,
      ),
      headlineSmall: const TextStyle(
        color: AppColors.fontDark,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: const TextStyle(color: AppColors.grey, fontSize: 16),
      titleSmall: const TextStyle(color: AppColors.grey, fontSize: 13),
      titleLarge: const TextStyle(
        color: AppColors.goldenColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      displayLarge: TextStyle(color: AppColors.fontDark, fontSize: 7),
    ),
    iconTheme: const IconThemeData(color: AppColors.lightColor),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Colors.grey,
    ),
    cardTheme: const CardThemeData(color: AppColors.primaryDark),
    primaryColor: AppColors.primaryDark,
    fontFamily: fontFamily,
    useMaterial3: true,
    dialogTheme: const DialogThemeData(backgroundColor: AppColors.primaryDark),
  );
}
