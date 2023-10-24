import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';

class RadioView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);

    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 190,
          ),
          Image.asset(
            'assets/images2/radio_image@3x.png',
            scale: 3,
          ),
          const SizedBox(
            height: 35,
          ),
          Text(
            "إذاعة القرآن الكريم",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: theme.colorScheme.onSecondary,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.skip_next_sharp,
                size: 60,
                color: theme.colorScheme.onPrimary,
              ),
              const SizedBox(
                width: 40,
              ),
              Icon(
                Icons.play_arrow,
                size: 60,
                color: theme.colorScheme.onPrimary,
              ),
              const SizedBox(
                width: 40,
              ),
              Icon(
                Icons.skip_next_sharp,
                size: 60,
                color: theme.colorScheme.onPrimary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
