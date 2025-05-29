import 'package:resume/Resources/app_texts.dart';
import 'package:refreshed/get_navigation/src/root/internationalization.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'fa': {AppTexts.resume: "رزومه"},
    'en': {AppTexts.resume: "Resume"},
  };
}
