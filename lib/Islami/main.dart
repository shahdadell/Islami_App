import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Islami/core/provider/app_provider.dart';
import 'package:untitled/Islami/modules/Hadeth/Hadeth_Details.dart';
import 'package:untitled/Islami/modules/HomeLayOut/HomeLayOut.dart';
import 'package:untitled/Islami/modules/Quran/Quran_Details.dart';

import 'core/theme/Them.dart';
import 'modules/Splash/Splash.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => AppProvider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: appProvider.currentTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(appProvider.currentLocal),
      initialRoute: Splash.routeName,
      routes: {
        Splash.routeName: (context) => const Splash(),
        HomeLayout.routeName: (context) => HomeLayout(),
        QuranDetails.routName: (context) => const QuranDetails(),
        HadethDetails.routName: (context) => HadethDetails(),
      },
    );
  }
}
