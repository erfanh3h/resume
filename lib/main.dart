import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Bindings/global_binding.dart';
import 'package:resume/Resources/app_consts.dart';
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
        title: "Erfan HayatBakhsh",
        debugShowCheckedModeBanner: false,
        popGesture: false,
        theme: AppTheme.lightTheme(FontFamilies.playPen),
        darkTheme: AppTheme.darkTheme(FontFamilies.playPen),
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
          Locale("en", "US"),
        ],
        locale: const Locale("en", "US"), //
        themeMode: ThemeMode.light,
        translations: AppTranslations(),
        home: MainPage(),
        onInit: () {
          GlobalBinding().dependencies();
        },
      ),
    );
  }
}
