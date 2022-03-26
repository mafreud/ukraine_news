import 'package:url_launcher/url_launcher.dart';

class UrlLauncherService {
  static void launchURL(String _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}
