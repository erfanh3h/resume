import 'package:flutter/material.dart';
import 'package:refreshed/get_utils/get_utils.dart';
import 'package:resume/Resources/app_spacings.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    required this.isActive,
  });

  final String text;
  final IconData icon;
  final Function()? onTap;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: isActive ? 10 : 1,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: AppSpacings.s5All,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 5,
            children: [
              Icon(icon),
              Flexible(
                child: Text(
                  text,
                  style: context.theme.textTheme.headlineSmall,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
