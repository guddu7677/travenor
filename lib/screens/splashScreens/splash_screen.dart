import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D6EFD),

      body: Center(
        child: Text(
          'Travenor',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),
        ),
      ),
    );
  }
}
