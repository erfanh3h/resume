import 'package:refreshed/refreshed.dart';
import 'package:resume/Controllers/locale_controller.dart';
import 'package:resume/Controllers/theme_controller.dart';

class GlobalBinding implements BindingsInterface {
  @override
  dependencies() => [
    Get.lazyPut<LocaleController>(() => LocaleController(), fenix: true),
    Get.lazyPut<ThemeController>(() =>ThemeController(), fenix: true),
  ];
}
