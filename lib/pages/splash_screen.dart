import 'package:flutter/material.dart';
import 'package:tesla/pages/register_pages/login.dart';
import 'app.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), (){
      Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => const Login()),
        (route) => false
      );
    });

    return Scaffold(
      backgroundColor: const Color(0xff17191B),
      body: Center(
        child: Image.asset('assets/images/logo.png', height: 180),
      ),
    );
  }
}
