import 'package:flutter/material.dart';
import 'package:travenar/screens/forget_password/forget_password.dart';
import 'package:travenar/screens/home_screen/home_screen.dart';
import 'package:travenar/screens/home_screen/main_page.dart';
import 'package:travenar/screens/login_screen/login_screen.dart';
import 'package:travenar/screens/opt_verification/otp_verification.dart';
import 'package:travenar/screens/register_screen/register_screen.dart';
import 'package:travenar/screens/splashScreens/first_splash_screen.dart';
import 'package:travenar/screens/splashScreens/second_splash_screen.dart';
import 'package:travenar/screens/splashScreens/splash_screen.dart';
import 'package:travenar/screens/splashScreens/third_splash_screen.dart';
import 'package:travenar/widgets/details_page/details_page.dart';
import 'package:travenar/widgets/view_page/view_page.dart';

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
      home: ViewPage(),
      routes: {
        '/SplashScreen': (context) => SplashScreen(),
        // "/FirstSplashScreen": (context) => FirstSplashScreen(),
        // "/SecondSplashScreen": (context) => SecondSplashScreen(),
        // "/ThirdSplashScreen": (context) => ThirdSplashScreen(),
        "/RegisterScreen": (context) => RegisterScreen(),
        "/LoginScreen": (context) => LoginScreen(),
        "/Home": (context) => SplashScreen(),
        "/ForgetPassword":(context)=>ForgetPassword(),
        "/OtpVerification":(context)=>OtpVerification(),
        "/MainPage":(context)=>MainPage(),
        "/HomeScreen":(context)=>HomeScreen(),
        "/UnifiedOnboardingScreen":(context)=>UnifiedOnboardingScreen(),
        "/DetailsPage":(context)=>DetailsPage(),
        "/ViewPage":(context)=>ViewPage(),
      },
    );
  }
}
