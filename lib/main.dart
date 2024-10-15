import 'package:flutter/material.dart';
import 'package:islami_app/home/homescreen/home_screen.dart';
import 'package:islami_app/home/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routName,
      routes: {
        SplashScreen.routName : (context) => const SplashScreen() ,
        HomeScreen.routName : (context) => const HomeScreen(),
      },
    );
  }
}

