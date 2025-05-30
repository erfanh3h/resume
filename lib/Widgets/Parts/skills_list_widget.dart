import 'package:flutter/material.dart';
import 'package:resume/Data/skills_data.dart';
import 'package:resume/Resources/app_spacings.dart';
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
          child: Container(
            padding: AppSpacings.s20All,
            width: cons.maxWidth,
            child: Wrap(spacing: 10, runSpacing: 5, children: wrapChilds),
          ),
        );
      },
    );
  }
}
