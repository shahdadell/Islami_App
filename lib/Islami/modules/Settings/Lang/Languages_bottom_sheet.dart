import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Islami/modules/Settings/Lang/selected_option_widget.dart';
import 'package:untitled/Islami/modules/Settings/Lang/unselected_option_widget.dart';

import '../../../core/provider/app_provider.dart';

class LanguagesBottomSheet extends StatelessWidget {
  const LanguagesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: theme.primaryColor.withOpacity(0.7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              appProvider.changeLanguage("en");
              Navigator.pop(context);
            },
            child: appProvider.currentLocal == "en"
                ? SelectedOptionWidget(selectedTitle: "English")
                : UnSelectedOptionWidget(unselectedTitle: "English"),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              appProvider.changeLanguage("ar");
              Navigator.pop(context);
            },
            child: appProvider.currentLocal == "ar"
                ? SelectedOptionWidget(selectedTitle: "عربي")
                : UnSelectedOptionWidget(unselectedTitle: "عربي"),
          ),
        ],
      ),
    );
  }
}
