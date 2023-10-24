import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Islami/core/provider/app_provider.dart';
import 'package:untitled/Islami/modules/Hadeth/Hadeth.dart';
import 'package:untitled/Islami/modules/Quran/Quran.dart';
import 'package:untitled/Islami/modules/Radio/Radio.dart';
import 'package:untitled/Islami/modules/Sebha/Sebha.dart';
import 'package:untitled/Islami/modules/Settings/settings_view.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  static const String routeName = "HomeLayOut";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens = [
    QuranView(),
    const HadethView(),
    SebhaView(),
    RadioView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(appProvider.backgroundImage()),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(AppLocalizations.of(context)!.islami),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: const ImageIcon(
                    AssetImage('assets/images2/icon_quran@3x.png')),
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                icon: const ImageIcon(
                    AssetImage('assets/images2/icon_hadeth@3x.png')),
                label: AppLocalizations.of(context)!.hadeth),
            BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage('assets/images2/icon_sebha@3x.png'),
                ),
                label: AppLocalizations.of(context)!.tasbeh),
            BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage('assets/images2/icon_radio@3x.png'),
                ),
                label: AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(
                icon: const Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings),
          ],
        ),
      ),
    );
  }
}
