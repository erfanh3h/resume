import 'package:flutter/material.dart';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Models/experience_model.dart';
import 'package:resume/Resources/app_spacings.dart';
import 'package:resume/Resources/app_texts.dart';
import 'package:resume/Widgets/text_icon_widget.dart';

class ExperienceBox extends StatelessWidget {
  const ExperienceBox({super.key, required this.data});

  final ExperienceModel data;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        padding: AppSpacings.s10All,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                if (data.image != null)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(150),
                    child: Image.asset(
                      data.image!,
                      width: 75,
                      height: 75,
                      fit: BoxFit.cover,
                    ),
                  ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextIconWidget(
                        text: (data.title ?? "").tr,
                        icon: Icons.label_important_rounded,
                      ),
                      TextIconWidget(
                        text:
                            '${(data.name ?? "").tr} - ${(data.location ?? "").tr}',
                        icon: Icons.apartment,
                        textStyle: context.theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                TextIconWidget(
                  text: (data.year ?? "").tr,
                  icon: Icons.date_range,
                  textDirection: TextDirection.ltr,
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: AppSpacings.s10All,
              child: TextIconWidget(
                text: AppTexts.tasksAndAchievements.tr,
                icon: Icons.label_important_rounded,
                textStyle: context.theme.textTheme.headlineSmall,
              ),
            ),
            SizedBox(height: 5),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) => Row(
                children: [
                  SizedBox(width: 30),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: context.theme.colorScheme.primary,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      data.tasks![index].tr,
                      style: context.theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(width: 30),
                ],
              ),
              separatorBuilder: (ctx, index) => SizedBox(height: 10),
              itemCount: data.tasks?.length ?? 0,
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
