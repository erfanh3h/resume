import 'package:flutter/material.dart';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Data/experience_data.dart';
import 'package:resume/Resources/app_spacings.dart';
import 'package:resume/Resources/app_texts.dart';
import 'package:resume/Widgets/experience_box.dart';
import 'package:resume/Widgets/header_widget.dart';

class ExperienceListWidget extends StatelessWidget {
  const ExperienceListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, cons) {
        return Card(
          child: Padding(
            padding: AppSpacings.s20All,
            child: SingleChildScrollView(
              child: Column(
                children: [
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
