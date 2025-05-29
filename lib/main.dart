import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Resources/app_texts.dart';
import 'package:resume/Resources/app_theme.dart';
import 'package:resume/Resources/app_translates.dart';
import 'package:resume/main_page.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: const TextScaler.linear(1)),
      child: GetMaterialApp(
        title: AppTexts.resume.tr,
        debugShowCheckedModeBanner: false,
        popGesture: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
          Locale("en", "US"),
        ],
        locale: const Locale("fa", "IR"), //
        home: const MainPage(),
        themeMode: ThemeMode.light,
        translations: AppTranslations(),
      ),
    );
  }
}
