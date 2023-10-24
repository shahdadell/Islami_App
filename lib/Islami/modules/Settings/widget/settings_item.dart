import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Islami/modules/Settings/Lang/Languages_bottom_sheet.dart';

typedef SettingsOptionsClicked = void Function();

class SettingsItem extends StatelessWidget {
  final String settingsOptionTitle, selectedOptions;
  final SettingsOptionsClicked onTapOptions;

  SettingsItem({
    required this.settingsOptionTitle,
    required this.onTapOptions,
    required this.selectedOptions,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          settingsOptionTitle,
          textAlign: TextAlign.start,
          style: theme.textTheme.bodyLarge,
        ),
        GestureDetector(
          onTap: onTapOptions,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            height: 50,
            width: mediaQuery.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: theme.colorScheme.onSecondary,
                  width: 2,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedOptions,
                  style: theme.textTheme.bodyMedium,
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: theme.colorScheme.onSecondary,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
