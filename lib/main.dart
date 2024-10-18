import 'package:flutter/material.dart';
import 'package:islami_app/home/homescreen/home_screen.dart';
import 'package:islami_app/home/quran/sura_details_screen.dart';
import 'package:islami_app/home/splash/splash_screen.dart';
import 'package:islami_app/my_theme.dart';

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
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (context) => const SplashScreen() ,
        HomeScreen.routeName : (context) => const HomeScreen(),
        SuraDetailsScreen.routeName :(context) => SuraDetailsScreen(),
      },
      theme: MyTheme.lightTheme,
    );
  }
}

