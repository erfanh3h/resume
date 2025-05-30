import 'package:flutter/material.dart';
import 'package:resume/Data/experience_data.dart';
import 'package:resume/Resources/app_spacings.dart';
import 'package:resume/Widgets/experience_box.dart';

class ProjectsListWidget extends StatelessWidget {
  const ProjectsListWidget({super.key});

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
