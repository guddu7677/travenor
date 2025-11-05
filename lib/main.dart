import 'package:flutter/material.dart';
import 'package:travenar/screens/splashScreens/first_splash_screen.dart';
import 'package:travenar/screens/splashScreens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstSplashScreen(),
      routes: {
        '/splash': (context) => SplashScreen(),
        "/FirstSplashScreen": (context) => FirstSplashScreen(),
      },
    );
  }
}
