import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:ukraine_news/app/links/links.dart';
import 'package:ukraine_news/app/url_launcher/url_launcher_service.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportListPage extends StatelessWidget {
  const SupportListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('支援方法リスト'),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.center_focus_strong),
                title: const Text('外務省'),
                value: const Text('支援先リスト'),
                onPressed: (_) => UrlLauncherService.launchURL(Links.mofa),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.center_focus_strong),
                title: const Text('駐日ウクライナ大使館'),
                onPressed: (context) {
                  showOkAlertDialog(
                    context: context,
                    title: '寄付口座',
                    message:
                        '三菱UFJ 銀行\n広尾支店(支店番号:047)\n口座種類:普通口座\n口座番号:0972597\n口座名義:エンバシーオブウクライナ',
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
