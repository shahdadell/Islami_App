import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Islami/modules/Settings/Lang/Languages_bottom_sheet.dart';
import 'package:untitled/Islami/modules/Settings/Lang/themewidget.dart';
import 'package:untitled/Islami/modules/Settings/widget/settings_item.dart';

import '../../core/provider/app_provider.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);

    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    var local = AppLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Column(
        children: [
          SettingsItem(
            settingsOptionTitle: local!.language,
            selectedOptions:
                appProvider.currentLocal == "en" ? "English" : "عربي",
            onTapOptions: () => {
              showLanguageBottomSheet(context),
            },
          ),
          const SizedBox(
            height: 40,
          ),
          SettingsItem(
            settingsOptionTitle: local.theme_Mode,
            selectedOptions:
                appProvider.isDarkTheme() ? local.dark : local.light,
            onTapOptions: () {
              showThemeBottomSheet(context);
            },
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const LanguagesBottomSheet(),
    );
  }

  void showThemeBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ThemeWidget(),
    );
  }
}
