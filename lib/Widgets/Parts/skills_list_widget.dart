import 'package:flutter/material.dart';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Data/skills_data.dart';
import 'package:resume/Resources/app_spacings.dart';
import 'package:resume/Resources/app_texts.dart';
import 'package:resume/Widgets/header_widget.dart';
import 'package:resume/Widgets/languege_box.dart';
import 'package:resume/Widgets/skill_box.dart';

class SkillsListWidget extends StatelessWidget {
  const SkillsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> wrapChilds = [];
    for (var skill in skills) {
      wrapChilds.add(SkillBox(data: skill));
    }
    return LayoutBuilder(
      builder: (context, cons) {
        return Card(
          child: Column(
            children: [
              SizedBox(height: 20),
              Center(
                child: HeaderWidget(
                  text: AppTexts.skills.tr,
                  icon: Icons.person,
                ),
              ),
              Expanded(
                child: Container(
                  padding: AppSpacings.s20All,
                  width: cons.maxWidth,
                  child: Wrap(spacing: 10, runSpacing: 5, children: wrapChilds),
                ),
              ),
              Center(
                child: HeaderWidget(
                  text: AppTexts.langueges.tr,
                  icon: Icons.person,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LanguegeBox(name: AppTexts.lang1.tr),
                  LanguegeBox(name: AppTexts.lang2.tr),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
