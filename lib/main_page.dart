import 'dart:math';

import 'package:flutter/material.dart';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Controllers/main_tab_controller.dart';
import 'package:resume/Widgets/Parts/about_me_list_widget.dart';
import 'package:resume/Widgets/Parts/experience_list_widget.dart';
import 'package:resume/Widgets/Parts/projects_list_widget.dart';
import 'package:resume/Widgets/Parts/skills_list_widget.dart';
import 'package:resume/Widgets/main_page_header.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabController = Get.find<MainTabController>();
    return Scaffold(
      backgroundColor: context.theme.colorScheme.surface,
      body: Center(
        child: SizedBox(
          width: min(640, Get.size.width),
          child: Column(
            children: [
              SizedBox(height: 10),
              MainPageHeader(),
              SizedBox(height: 5),
              Expanded(
                child: Obx(() {
                  switch (tabController.activeIndex.value) {
                    case 0:
                      return AboutMeListWidget();
                    case 1:
                      return ExperienceListWidget();
                    case 2:
                      return SkillsListWidget();
                    case 3:
                      return ProjectsListWidget();
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
