import 'package:flutter/material.dart';
import 'package:travenar/screens/forget_password/forget_password.dart';
import 'package:travenar/screens/home_screen/home_screen.dart';
import 'package:travenar/screens/home_screen/main_page.dart';
import 'package:travenar/screens/login_screen/login_screen.dart';
import 'package:travenar/screens/opt_verification/otp_verification.dart';
import 'package:travenar/screens/register_screen/register_screen.dart';
import 'package:travenar/screens/splashScreens/first_splash_screen.dart';
import 'package:travenar/screens/splashScreens/splash_screen.dart';
import 'package:travenar/widgets/chat_page/chat_page.dart';
import 'package:travenar/widgets/details_page/details_page.dart';
import 'package:travenar/widgets/edit_profile/edit_profile.dart';
import 'package:travenar/widgets/favorate_place/favorite_person.dart';
import 'package:travenar/widgets/notification-page/notification.dart';
import 'package:travenar/widgets/popular_package/popular_package.dart';
import 'package:travenar/widgets/popular_place/popular_place.dart';
import 'package:travenar/widgets/search_place/search_place.dart';
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
      home: SplashScreen(),
      routes: {
        '/SplashScreen': (context) => SplashScreen(),
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
        "/PopularPlace":(context)=>PopularPlace(),
        "/PopularPackage":(context)=>PopularPackage(),
        "/FavoritePerson":(context)=>FavoritePerson(),
        "/ChatPage":(context)=>ChatPage(),
        "/SearchPlace":(context)=>SearchPlace(),
        "/EditProfile":(context)=>EditProfile(),
        "/Notifications":(context)=>Notifications()
      },
    );
  }
}
