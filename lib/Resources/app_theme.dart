import 'package:flutter/material.dart';
import 'package:resume/Resources/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme(String fontFamily) => ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      surface: AppColors.backgroundLight,
      inverseSurface: AppColors.backgroundDark,
      primary: AppColors.primary,
      inversePrimary: AppColors.lightColor,
      secondary: AppColors.darkColor,
      scrim: Colors.white70,
    ),
    appBarTheme: const AppBarTheme(color: AppColors.primaryLight),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.backgroundLight,
      elevation: 10,
      selectedItemColor: AppColors.primaryLight,
      unselectedItemColor: AppColors.primaryLight,
      selectedLabelStyle: TextStyle(fontSize: 10),
      unselectedLabelStyle: TextStyle(fontSize: 10),
    ),
    textTheme: TextTheme(
      displaySmall: const TextStyle(color: AppColors.fontLight, fontSize: 13),
      labelSmall: const TextStyle(color: AppColors.fontLight, fontSize: 13),
      labelMedium: const TextStyle(color: AppColors.fontLight, fontSize: 15),
      labelLarge: const TextStyle(color: AppColors.fontLight, fontSize: 18),
      displayMedium: const TextStyle(color: AppColors.fontLight, fontSize: 17),
      bodySmall: const TextStyle(
        color: AppColors.fontLight,
        fontSize: 15,
        height: 1.5,
      ),
      bodyMedium: const TextStyle(
        color: AppColors.fontLight,
        fontSize: 17,
        height: 1.7,
      ),
      bodyLarge: const TextStyle(color: AppColors.fontLight, fontSize: 21),
      headlineSmall: const TextStyle(
        color: AppColors.fontLight,
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: const TextStyle(
        color: AppColors.fontLight,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: const TextStyle(
        color: AppColors.fontLight,
        fontSize: 21,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: const TextStyle(color: AppColors.fontLight, fontSize: 14),
      titleMedium: const TextStyle(
        color: AppColors.fontLight,
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: const TextStyle(
        color: AppColors.fontLight,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      displayLarge: TextStyle(color: AppColors.fontLight, fontSize: 7),
    ),
    iconTheme: const IconThemeData(color: AppColors.darkColor),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryLight,
    ),
    cardTheme: const CardThemeData(
      color: AppColors.lightColor,
      // surfaceTintColor: AppColors.lightColor,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: Colors.white70,
      // hintStyle: TextStyle(color: Colors.black54),
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
    ),
    primaryColor: AppColors.primaryLight,
    fontFamily: fontFamily,
    useMaterial3: true,
  );

  static ThemeData darkTheme(String fontFamily) => ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      surface: AppColors.backgroundDark,
      inverseSurface: AppColors.backgroundLight,
      primary: AppColors.primaryDark,
      inversePrimary: AppColors.lightColor,
      secondary: AppColors.lightColor,
      scrim: AppColors.primaryDark,
    ),
    appBarTheme: const AppBarTheme(color: AppColors.primaryDark),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.backgroundDark,
      elevation: 10,
      selectedItemColor: AppColors.primaryDark,
      unselectedItemColor: AppColors.primaryDark,
      selectedLabelStyle: TextStyle(fontSize: 10),
      unselectedLabelStyle: TextStyle(fontSize: 10),
    ),
    textTheme: TextTheme(
      displaySmall: const TextStyle(color: AppColors.fontDark, fontSize: 13),
      labelSmall: const TextStyle(color: AppColors.fontDark, fontSize: 13),
      labelMedium: const TextStyle(color: AppColors.fontDark, fontSize: 15),
      labelLarge: const TextStyle(color: AppColors.fontDark, fontSize: 18),
      displayMedium: const TextStyle(color: AppColors.fontDark, fontSize: 17),
      bodySmall: const TextStyle(
        color: AppColors.fontDark,
        fontSize: 15,
        height: 1.5,
      ),
      bodyMedium: const TextStyle(
        color: AppColors.fontDark,
        fontSize: 17,
        height: 1.7,
      ),
      bodyLarge: const TextStyle(color: AppColors.fontDark, fontSize: 21),
      headlineSmall: const TextStyle(
        color: AppColors.fontDark,
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: const TextStyle(
        color: AppColors.fontDark,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: const TextStyle(
        color: AppColors.fontDark,
        fontSize: 21,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: const TextStyle(
        color: AppColors.fontDark,
        fontSize: 14,
        // fontWeight: FontWeight.bold,
      ),
      titleMedium: const TextStyle(
        color: AppColors.fontDark,
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: const TextStyle(
        color: AppColors.fontDark,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      displayLarge: TextStyle(color: AppColors.fontDark, fontSize: 7),
    ),
    iconTheme: const IconThemeData(color: AppColors.lightColor),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryDark,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Colors.grey,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: AppColors.primaryDark,
      // hintStyle: TextStyle(color: Colors.white),
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
    ),
    cardTheme: const CardThemeData(
      color: AppColors.primaryDark,
      // surfaceTintColor: AppColors.white.withOpacity(.2),
    ),
    primaryColor: AppColors.primaryDark,
    fontFamily: fontFamily,
    useMaterial3: true,
    dialogTheme: const DialogThemeData(backgroundColor: AppColors.primaryDark),
  );
}
