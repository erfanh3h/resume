import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Resources/app_spacings.dart';
import 'package:resume/Resources/app_texts.dart';
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
        width: maxWidth * 5 / 6,
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
                  TextIconWidget(
                    text: AppTexts.email.tr,
                    icon: CupertinoIcons.envelope_fill,
                  ),
                  TextIconWidget(
                    text: AppTexts.dOB.tr,
                    icon: Icons.cake_rounded,
                  ),
                  TextIconWidget(
                    text: AppTexts.military.tr,
                    icon: Icons.military_tech,
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
                  TextIconWidget(
                    text: AppTexts.mobile.tr,
                    icon: Icons.phone,
                    textDirection: TextDirection.ltr,
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
