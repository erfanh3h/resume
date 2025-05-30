import 'package:url_launcher/url_launcher.dart';

class LinkUtils {
  static openLink(String url) {
    launchUrl(Uri.parse(url));
  }

  static openUri(Uri uri) {
    launchUrl(uri);
  }
}
