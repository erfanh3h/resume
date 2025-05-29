import 'package:refreshed/refreshed.dart';
import 'package:resume/Resources/app_theme.dart';

class ThemeController extends GetxController {
  RxBool isDarkMode = RxBool(false);

  Future<void> changeTheme() async {
    Get.changeTheme(
      isDarkMode.value ? AppTheme.lightTheme : AppTheme.darkTheme,
    );
    isDarkMode.value = !isDarkMode.value;
  }
}
