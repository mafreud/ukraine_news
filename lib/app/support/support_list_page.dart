import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SupportListPage extends StatelessWidget {
  const SupportListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('支援方法リスト'),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('Common'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('Language'),
                value: Text('English'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: Icon(Icons.format_paint),
                title: Text('Enable custom theme'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
