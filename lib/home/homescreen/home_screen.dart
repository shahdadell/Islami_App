import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/hadeth_tap.dart';
import 'package:islami_app/home/quran/quran_tab.dart';
import 'package:islami_app/home/radio/radio_tap.dart';
import 'package:islami_app/home/sebha/sebha_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "HomeScreen" ;

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    var mediaQuery2 = MediaQuery.of(context).size ;
    return Stack(
      children: [
        Image.asset("assets/images/background.png",
          width: mediaQuery2.width,
          height: mediaQuery2.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Islami",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor,
            ),
            child: BottomNavigationBar(
              currentIndex: selectedIndex ,
                onTap: (index) {
                selectedIndex = index ;
                setState(() {

                });
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("assets/images/quran1.png"),),
                      label: "Quran",
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/hadeth1.png"),),
                    label: "Hadeth",
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/radio1.png"),),
                    label: "Radio",
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/sebha1.png"),),
                    label: "Sebha",
                  ),
                ]
            ),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }
  List<Widget> tabs = [
    const QuranTab(),
    const HadethTap(),
    const SebhaTap(),
    const RadioTap()
  ];
}
