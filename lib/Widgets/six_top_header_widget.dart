import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Resources/app_spacings.dart';
import 'package:resume/Resources/app_texts.dart';
import 'package:resume/Utils/link.dart';
import 'package:resume/Widgets/text_icon_widget.dart';

class SixTopHeaderWidget extends StatelessWidget {
  const SixTopHeaderWidget({super.key, required this.maxWidth});

  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        padding: AppSpacings.s25Vertical10Horizental,
        width: max(maxWidth * 5 / 6, 400),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          spacing: 10,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  InkWell(
                    onTap: () {
                      final Uri uri = Uri(
                        scheme: 'mailto',
                        path: AppTexts.email,
                      );
                      LinkUtils.openUri(uri);
                    },
                    child: TextIconWidget(
                      text: AppTexts.email,
                      icon: CupertinoIcons.envelope_fill,
                      maxLines: 1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      LinkUtils.openLink(AppTexts.linkedin);
                    },
                    child: TextIconWidget(
                      text: AppTexts.linkedinId,
                      icon: FontAwesomeIcons.linkedin,
                      maxLines: 1,
                    ),
                  ),
                  TextIconWidget(
                    text: AppTexts.dOB.tr,
                    icon: Icons.cake_rounded,
                  ),
                  TextIconWidget(
                    text: AppTexts.military.tr,
                    icon: Icons.military_tech,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  InkWell(
                    onTap: () {
                      final Uri uri = Uri(
                        scheme: 'tel',
                        path: AppTexts.mobile.tr,
                      );
                      LinkUtils.openUri(uri);
                    },
                    child: TextIconWidget(
                      text: AppTexts.mobile.tr,
                      icon: Icons.phone,
                      textDirection: TextDirection.ltr,
                      maxLines: 1,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      LinkUtils.openLink(AppTexts.github);
                    },
                    child: TextIconWidget(
                      text: AppTexts.githubId,
                      icon: FontAwesomeIcons.github,
                    ),
                  ),
                  TextIconWidget(text: AppTexts.country.tr, icon: Icons.flag),
                  TextIconWidget(text: AppTexts.marital.tr, icon: Icons.home),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
