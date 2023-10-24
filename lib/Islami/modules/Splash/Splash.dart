import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Islami/modules/HomeLayOut/HomeLayOut.dart';

import '../../core/provider/app_provider.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  static const String routeName = "SplashScreen";

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    var mediaQuery = MediaQuery.of(context).size;
    var appProvider = Provider.of<AppProvider>(context);

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Image.asset(
          appProvider.isDarkTheme()
              ? 'assets/images2/splash – 1.png'
              : 'assets/images2/splash.png',
          width: mediaQuery.width,
          height: mediaQuery.height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
