import 'package:flutter/material.dart';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Data/education_data.dart';
import 'package:resume/Resources/app_images.dart';
import 'package:resume/Resources/app_spacings.dart';
import 'package:resume/Resources/app_texts.dart';
import 'package:resume/Widgets/education_box.dart';
import 'package:resume/Widgets/header_widget.dart';
import 'package:resume/Widgets/six_top_header_widget.dart';
import 'package:resume/Widgets/text_icon_widget.dart';

class AboutMeListWidget extends StatelessWidget {
  const AboutMeListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, cons) {
        final maxWidth = cons.maxWidth;
        return Card(
          child: Padding(
            padding: AppSpacings.s5All,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
