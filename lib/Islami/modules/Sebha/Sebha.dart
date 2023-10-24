import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';

class SebhaView extends StatefulWidget {
  SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  int counter = 0;
  List<String> text = [
    "سبحان الله",
    "الحمدلله",
    "الله اكبر",
    "لا اله الا الله"
  ];
  int currentIndex = 0;

  double angle = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);

    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 100, top: 22),
                  child: Image.asset(
                    appProvider.isDarkTheme()
                        ? "assets/images2/head_sebha_dark@3x.png"
                        : "assets/images2/head_sebha_logo@3x.png",
                    scale: 3,
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: Transform.rotate(
                      angle: angle,
                      child: InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onTap: () {
                            clickOnImage();
                          },
                          child: Image.asset(
                            appProvider.isDarkTheme()
                                ? "assets/images2/body_sebha_dark@3x.png"
                                : "assets/images2/body_sebha_logo@3x.png",
                            scale: 3,
                          )))),
            ],
          ),
          const SizedBox(height: 40),
          Text(
            "عدد التسبيحات",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: theme.colorScheme.onSecondary,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 25),
          Container(
            padding: const EdgeInsets.all(20),
            width: 70,
            height: 80,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.5),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              "$counter",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 18),
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              clickOnImage();
            },
            child: Container(
              padding: const EdgeInsets.all(15),
              width: 150,
              height: 65,
              decoration: BoxDecoration(
                color: theme.colorScheme.onSecondary,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                text[currentIndex],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: theme.colorScheme.secondary,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  clickOnImage() {
    angle += 4;

    if (counter == 50) {
      counter = 0;
      currentIndex++;

      if (currentIndex > 2) {
        currentIndex = 0;
      }
    }
    counter++;

    setState(() {});
  }
}
