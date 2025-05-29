import 'package:flutter/material.dart';
import 'package:resume/Resources/app_spacings.dart';
import 'package:resume/Widgets/text_icon_widget.dart';

class TitleLabelWidget extends StatelessWidget {
  const TitleLabelWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.label,
  });

  final String title;
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSpacings.s10All,
      child: Row(
        spacing: 5,
        children: [
          TextIconWidget(text: title, icon: icon),
          Text(label),
        ],
      ),
    );
  }
}
