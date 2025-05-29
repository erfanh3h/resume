import 'package:flutter/material.dart';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Models/education_model.dart';
import 'package:resume/Resources/app_spacings.dart';
import 'package:resume/Widgets/text_icon_widget.dart';

class EducationBox extends StatelessWidget {
  const EducationBox({super.key, required this.data});

  final EducationModel data;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        padding: AppSpacings.s10All,
        height: 100,
        child: Row(
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
                    text:
                        "${(data.title ?? "").tr} - ${(data.branch ?? "").tr} ",
                    icon: Icons.label_important_rounded,
                  ),
                  TextIconWidget(
                    text:
                        '${(data.university ?? "").tr} - ${(data.location ?? "").tr}',
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
      ),
    );
  }
}
