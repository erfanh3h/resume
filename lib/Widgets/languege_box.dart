import 'package:flutter/material.dart';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Resources/app_spacings.dart';

class LanguegeBox extends StatelessWidget {
  const LanguegeBox({super.key, required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        padding: AppSpacings.s10All,
        child: Text(name, style: context.theme.textTheme.bodyMedium),
      ),
    );
  }
}
