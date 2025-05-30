import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Models/project_model.dart';
import 'package:resume/Resources/app_spacings.dart';
import 'package:resume/Utils/link.dart';
import 'package:resume/Widgets/text_icon_widget.dart';

class ProjectBox extends StatelessWidget {
  const ProjectBox({super.key, required this.data});

  final ProjectModel data;
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
                        text: (data.owner ?? "").tr,
                        icon: FontAwesomeIcons.building,
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
            SizedBox(height: 15),
            Text(
              data.description?.tr ?? "",
              style: context.theme.textTheme.bodySmall,
            ),
            if (data.link != null)
              InkWell(
                onTap: () {
                  LinkUtils.openLink(data.link!);
                },
                child: TextIconWidget(
                  text: data.link!,
                  icon: Icons.link,
                  textDirection: TextDirection.ltr,
                  textStyle: context.theme.textTheme.titleLarge!.copyWith(
                    fontSize: 13,
                  ),
                ),
              ),
            SizedBox(height: 15),
            if (data.image?.isNotEmpty ?? false)
              SizedBox(
                height: 160,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) => InkWell(
                    onTap: () {
                      Get.dialog(
                        Dialog(
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            data.images![index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        data.images![index],
                        width: 120,
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  separatorBuilder: (ctx, index) => SizedBox(width: 5),
                  itemCount: data.images?.length ?? 0,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
