import 'package:flutter/material.dart';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Controllers/theme_controller.dart';
import 'package:resume/Resources/app_texts.dart';
import 'package:resume/Widgets/button_widget.dart';

import '../Controllers/locale_controller.dart';
import '../Controllers/main_tab_controller.dart';

class MainPageHeader extends StatelessWidget {
  const MainPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final localeController = Get.find<LocaleController>();
    final themeController = Get.find<ThemeController>();
    final tabController = Get.find<MainTabController>();
    return Obx(
      () => Wrap(
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
          ButtonWidget(
            text: AppTexts.projects.tr,
            icon: Icons.monitor,
            onTap: () => tabController.changeIndex(3),
            isActive: tabController.activeIndex.value == 3,
          ),
          ButtonWidget(
            text: AppTexts.skills.tr,
            icon: Icons.article_rounded,
            onTap: () => tabController.changeIndex(2),
            isActive: tabController.activeIndex.value == 2,
          ),
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
    );
  }
}
