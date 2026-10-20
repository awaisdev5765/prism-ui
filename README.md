# prism_settings

Ready-made adaptive settings screens for Flutter — tiles, toggles, sliders,
dropdowns, and sections with built-in search. Beautiful by default, one
controller to persist everything.

Part of the **Prism** package family.

## Features

- ✅ Five tile types: action (navigate), switch, checkbox, slider, dropdown
- ✅ Titled sections in Material 3 grouped-card styling
- ✅ One `PrismSettingsController` — read/write by key, `onChanged` hook for
  persistence, bulk `setAll` for backups
- ✅ **Built-in search** — filters tiles by title and subtitle
- ✅ Adaptive — content centers at a comfortable width on desktop, full-width
  cards on phones (family breakpoints)
- ✅ Pure Flutter, all six platforms

## Installation

```yaml
dependencies:
  prism_settings: ^0.1.0
```

## Quick start

```dart
final controller = PrismSettingsController(
  onChanged: (key, value) => prefs.setString(key, value.toString()),
);

PrismSettingsPage(
  controller: controller,
  searchable: true,
  sections: [
    PrismSettingsSection(
      title: 'Appearance',
      tiles: [
        PrismSwitchTile(
          common: PrismTileCommon(
            key: 'darkMode',
            title: 'Dark mode',
            subtitle: 'Follow system or override',
            leading: Icons.dark_mode,
          ),
        ),
        PrismSliderTile(
          common: const PrismTileCommon(key: 'fontSize', title: 'Text size'),
          min: 0.5,
          max: 2,
          divisions: 6,
        ),
      ],
    ),
    PrismSettingsSection(
      title: 'General',
      tiles: [
        PrismActionTile(
          common: const PrismTileCommon(key: 'about', title: 'About'),
        ),
        PrismDropdownTile<String>(
          common: const PrismTileCommon(key: 'language', title: 'Language'),
          items: const ['English', 'العربية'],
          itemLabel: (item) => item,
        ),
      ],
    ),
  ],
)
```

## Persistence pattern

```dart
PrismSettingsController(
  initialValues: storedValues, // restored on startup
  onChanged: (key, value) => store.write(key, value), // save on change
)
```

## The Prism package family

| Package | What it does |
| --- | --- |
| [prism_markdown](https://pub.dev/packages/prism_markdown) | Markdown widget with full CommonMark + GFM support |
| [prism_code_view](https://pub.dev/packages/prism_code_view) | Syntax-highlighted code viewer (Dart/JSON/YAML built in) |
| [prism_adaptive_scaffold](https://pub.dev/packages/prism_adaptive_scaffold) | Responsive scaffolds: bottom bar → rail → extended rail |
| [prism_adaptive_dialog](https://pub.dev/packages/prism_adaptive_dialog) | Dialogs that become bottom sheets on phones |
| [prism_state_views](https://pub.dev/packages/prism_state_views) | Empty, loading, error, and success states from one widget |
| [prism_master_detail](https://pub.dev/packages/prism_master_detail) | Adaptive master-detail layouts |
| [prism_banner](https://pub.dev/packages/prism_banner) | Dismissible announcement banners |
| [prism_search](https://pub.dev/packages/prism_search) | Adaptive search with suggestions |
| [prism_toast](https://pub.dev/packages/prism_toast) | Adaptive toast notifications |
| [prism_pagination](https://pub.dev/packages/prism_pagination) | Infinite-scroll lists with all states handled |
| [prism_form](https://pub.dev/packages/prism_form) | Declarative forms with sealed submit states |
| [prism_changelog](https://pub.dev/packages/prism_changelog) | In-app "What's New" screens and changelog views |
| **prism_settings** | Ready-made settings screens with search |

All pure Flutter, all six platforms, MIT licensed, built to work together.

## License

MIT — see [LICENSE](LICENSE).
