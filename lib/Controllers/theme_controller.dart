import 'package:refreshed/refreshed.dart';
import 'package:resume/Controllers/locale_controller.dart';
import 'package:resume/Resources/app_consts.dart';
import 'package:resume/Resources/app_theme.dart';

class ThemeController extends GetxController {
  RxBool isDarkMode = RxBool(false);

  Future<void> changeTheme() async {
    bool isEnglishLocale = Get.find<LocaleController>().isEnglishLocale();
    String fontFamily = isEnglishLocale
        ? FontFamilies.playPen
        : FontFamilies.iranSans;
    Get.changeTheme(
      isDarkMode.value
          ? AppTheme.lightTheme(fontFamily)
          : AppTheme.darkTheme(fontFamily),
    );
    isDarkMode.value = !isDarkMode.value;
  }

  Future<void> changeFontTheme() async {
    bool isEnglishLocale = Get.find<LocaleController>().isEnglishLocale();
    String fontFamily = isEnglishLocale
        ? FontFamilies.playPen
        : FontFamilies.iranSans;
    Get.changeTheme(
      isDarkMode.value
          ? AppTheme.darkTheme(fontFamily)
          : AppTheme.lightTheme(fontFamily),
    );
  }
}
