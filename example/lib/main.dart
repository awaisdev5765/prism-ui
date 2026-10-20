import 'package:flutter/material.dart';
import 'package:prism_settings/prism_settings.dart';

/// Demo app for prism_settings.
void main() => runApp(const DemoApp());

/// Root widget: a themed settings screen.
class DemoApp extends StatelessWidget {
  /// Creates the demo.
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PrismSettingsController(
      initialValues: const {'darkMode': true, 'fontSize': 1.0},
    );
    return MaterialApp(
      home: PrismSettingsPage(
        controller: controller,
        searchable: true,
        sections: [
          PrismSettingsSection(
            title: 'Appearance',
            tiles: [
              const PrismSwitchTile(
                common: PrismTileCommon(
                  key: 'darkMode',
                  title: 'Dark mode',
                  subtitle: 'Follow the system setting',
                  leading: Icons.dark_mode,
                ),
              ),
              const PrismSliderTile(
                common: PrismTileCommon(
                  key: 'fontSize',
                  title: 'Text size',
                  leading: Icons.text_fields,
                ),
                min: 0.5,
                max: 2,
                divisions: 6,
              ),
            ],
          ),
          PrismSettingsSection(
            title: 'General',
            tiles: [
              PrismDropdownTile<String>(
                common: const PrismTileCommon(
                  key: 'language',
                  title: 'Language',
                  leading: Icons.language,
                ),
                items: const ['English', 'العربية', 'Français'],
                itemLabel: (item) => item,
              ),
              const PrismCheckboxTile(
                common: PrismTileCommon(
                  key: 'analytics',
                  title: 'Share anonymous analytics',
                  leading: Icons.analytics,
                ),
              ),
              const PrismActionTile(
                common: PrismTileCommon(
                  key: 'about',
                  title: 'About this app',
                  leading: Icons.info,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
