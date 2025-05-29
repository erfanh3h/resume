import 'package:flutter/material.dart';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Controllers/locale_controller.dart';
import 'package:resume/Controllers/theme_controller.dart';
import 'package:resume/Resources/app_texts.dart';

class MainListWidget extends StatelessWidget {
  const MainListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final localeController = Get.find<LocaleController>();
    final themeController = Get.find<ThemeController>();
    return LayoutBuilder(
      builder: (context, cons) {
        print(cons.maxWidth);
        return Card(
          child: ListView(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () => localeController.changeLocale(),
                  icon: Text("change"),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () => themeController.changeTheme(),
                  icon: Text("change theme"),
                ),
              ),
              Text(AppTexts.resume.tr),
            ],
          ),
        );
      },
    );
  }
}
