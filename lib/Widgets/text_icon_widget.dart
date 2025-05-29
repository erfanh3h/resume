import 'package:flutter/material.dart';
import 'package:refreshed/get_utils/get_utils.dart';

class TextIconWidget extends StatelessWidget {
  const TextIconWidget({
    super.key,
    required this.text,
    required this.icon,
    this.textStyle,
  });

  final String text;
  final IconData icon;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      spacing: 5,
      children: [
        Icon(icon),
        Text(text, style: textStyle ?? context.theme.textTheme.bodyMedium),
      ],
    );
  }
}
