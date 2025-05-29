import 'dart:math';

import 'package:flutter/material.dart';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Controllers/locale_controller.dart';
import 'package:resume/Controllers/main_tab_controller.dart';
import 'package:resume/Controllers/theme_controller.dart';
import 'package:resume/Resources/app_texts.dart';
import 'package:resume/Widgets/Parts/about_me_list_widget.dart';
import 'package:resume/Widgets/Parts/experience_list_widget.dart';
import 'package:resume/Widgets/button_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localeController = Get.find<LocaleController>();
    final themeController = Get.find<ThemeController>();
    final tabController = Get.find<MainTabController>();
    return Scaffold(
      backgroundColor: context.theme.colorScheme.surface,
      body: Center(
        child: SizedBox(
          width: min(640, Get.size.width),
          child: Column(
            children: [
              SizedBox(height: 10),
              Obx(
                () => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () => localeController.changeLocale(),
                      icon: Text(AppTexts.lang.tr),
                    ),
                    IconButton(
                      onPressed: () => themeController.changeTheme(),
                      icon: Icon(
                        themeController.isDarkMode.value
                            ? Icons.mode_night_outlined
                            : Icons.sunny,
                      ),
                    ),
                    Spacer(),
                    ButtonWidget(
                      text: AppTexts.workExperience.tr,
                      icon: Icons.work,
                      onTap: () => tabController.changeIndex(1),
                      isActive: tabController.activeIndex.value == 1,
                    ),
                    ButtonWidget(
                      text: AppTexts.aboutTitle.tr,
                      icon: Icons.person,
                      onTap: () => tabController.changeIndex(0),
                      isActive: tabController.activeIndex.value == 0,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Expanded(
                child: Obx(() {
                  switch (tabController.activeIndex.value) {
                    case 0:
                      return AboutMeListWidget();
                    case 1:
                      return ExperienceListWidget();
                    default:
                      return AboutMeListWidget();
                  }
                }),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
