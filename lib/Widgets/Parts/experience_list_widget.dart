import 'package:flutter/material.dart';
import 'package:resume/Data/experience_data.dart';
import 'package:resume/Resources/app_spacings.dart';
import 'package:resume/Widgets/experience_box.dart';

class ExperienceListWidget extends StatelessWidget {
  const ExperienceListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, cons) {
        return Card(
          child: Padding(
            padding: AppSpacings.s20All,
            child: ListView.separated(
              itemBuilder: (ctx, index) =>
                  ExperienceBox(data: experiences[index]),
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemCount: experiences.length,
            ),
          ),
        );
      },
    );
  }
}
