import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islami_app/home/homescreen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routName = "splash" ;
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
      (){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const HomeScreen();
          },
        ),
      );
    });
    var mediaQuery = MediaQuery.of(context).size ;
    return Scaffold(
      body: Image.asset("assets/images/splash.png",
      width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
