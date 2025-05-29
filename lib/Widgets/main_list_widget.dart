import 'package:flutter/material.dart';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Controllers/locale_controller.dart';
import 'package:resume/Controllers/theme_controller.dart';
import 'package:resume/Data/education_data.dart';
import 'package:resume/Data/experience_data.dart';
import 'package:resume/Resources/app_images.dart';
import 'package:resume/Resources/app_spacings.dart';
import 'package:resume/Resources/app_texts.dart';
import 'package:resume/Widgets/education_box.dart';
import 'package:resume/Widgets/experience_box.dart';
import 'package:resume/Widgets/header_widget.dart';
import 'package:resume/Widgets/six_top_header_widget.dart';
import 'package:resume/Widgets/text_icon_widget.dart';

class MainListWidget extends StatelessWidget {
  const MainListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final localeController = Get.find<LocaleController>();
    final themeController = Get.find<ThemeController>();
    return LayoutBuilder(
      builder: (context, cons) {
        final maxWidth = cons.maxWidth;
        return Card(
          child: Padding(
            padding: AppSpacings.s20All,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () => localeController.changeLocale(),
                          icon: Text(AppTexts.lang.tr),
                        ),
                        Obx(
                          () => IconButton(
                            onPressed: () => themeController.changeTheme(),
                            icon: Icon(
                              themeController.isDarkMode.value
                                  ? Icons.mode_night_outlined
                                  : Icons.sunny,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(150),
                      child: Image.asset(
                        AppImages.profile,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: TextIconWidget(
                      text: AppTexts.name.tr,
                      icon: Icons.label_important_rounded,
                      textStyle: context.theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 5),
                  Center(
                    child: Text(
                      AppTexts.jobTitle.tr,
                      style: context.theme.textTheme.headlineLarge,
                    ),
                  ),
                  SizedBox(height: 20),
                  SixTopHeaderWidget(maxWidth: maxWidth),
                  Center(
                    child: HeaderWidget(
                      text: AppTexts.aboutTitle.tr,
                      icon: Icons.person,
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    alignment: Alignment.center,
                    padding: AppSpacings.s30Horizental5Vertical,
                    child: Text(
                      AppTexts.about.tr,
                      style: context.theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: HeaderWidget(
                      text: AppTexts.education.tr,
                      icon: Icons.school,
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: AppSpacings.s20All,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (ctx, index) =>
                          EducationBox(data: educationsData[index]),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 10),
                      itemCount: educationsData.length,
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: HeaderWidget(
                      text: AppTexts.workExperience.tr,
                      icon: Icons.work,
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: AppSpacings.s20All,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (ctx, index) =>
                          ExperienceBox(data: experiences[index]),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 10),
                      itemCount: experiences.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
