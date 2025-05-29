import 'dart:math';

import 'package:flutter/material.dart';
import 'package:refreshed/refreshed.dart';
import 'package:resume/Widgets/main_list_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.colorScheme.surface,
      body: Center(
        child: SizedBox(
          width: min(640, Get.size.width),
          child: MainListWidget(),
        ),
      ),
    );
  }
}
