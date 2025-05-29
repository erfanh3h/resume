import 'package:flutter/material.dart';
import 'package:refreshed/get_utils/get_utils.dart';
import 'package:resume/Resources/app_spacings.dart';
import 'package:resume/Widgets/text_icon_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSpacings.s30Horizental5Vertical,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: context.theme.colorScheme.secondary,
            width: 2,
          ),
        ),
      ),
      child: TextIconWidget(text: text, icon: icon),
    );
  }
}
