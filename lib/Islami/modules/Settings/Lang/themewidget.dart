import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Islami/core/provider/app_provider.dart';

import 'selected_option_widget.dart';
import 'unselected_option_widget.dart';

class ThemeWidget extends StatelessWidget {
  const ThemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    var local = AppLocalizations.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: theme.primaryColor.withOpacity(.7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              appProvider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: appProvider.isDarkTheme()
                ? SelectedOptionWidget(selectedTitle: local!.dark)
                : UnSelectedOptionWidget(unselectedTitle: local!.dark),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              appProvider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: appProvider.isDarkTheme()
                ? UnSelectedOptionWidget(unselectedTitle: local!.light)
                : SelectedOptionWidget(selectedTitle: local!.light),
          ),
        ],
      ),
    );
  }
}
