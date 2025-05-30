import 'package:flutter/material.dart';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Models/skill_model.dart';
import 'package:resume/Resources/app_spacings.dart';

class SkillBox extends StatelessWidget {
  const SkillBox({super.key, required this.data});

  final SkillModel data;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        padding: AppSpacings.s10All,
        // height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (data.icon != null) Center(child: Icon(data.icon!, size: 20)),
            SizedBox(width: 10),
            Text(data.title ?? "", style: context.theme.textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
