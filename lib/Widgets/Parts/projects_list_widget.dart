import 'package:flutter/material.dart';
import 'package:resume/Data/projects_data.dart';
import 'package:resume/Resources/app_spacings.dart';
import 'package:resume/Widgets/project_box.dart';

class ProjectsListWidget extends StatelessWidget {
  const ProjectsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, cons) {
        return Card(
          child: Padding(
            padding: AppSpacings.s20All,
            child: ListView.separated(
              itemBuilder: (ctx, index) => ProjectBox(data: projects[index]),
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemCount: projects.length,
            ),
          ),
        );
      },
    );
  }
}
