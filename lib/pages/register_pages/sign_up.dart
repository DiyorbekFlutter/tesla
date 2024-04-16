import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:tesla/pages/register_pages/login.dart';
import 'package:tesla/pages/app.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff17191B),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image.asset('assets/images/logo.png', height: 80)
            ),
            const SizedBox(height: 100),
            Neumorphic(
              style: NeumorphicStyle(
                depth: -4,
                intensity: 1,
                color: Colors.black,
                shape: NeumorphicShape.flat,
                shadowLightColorEmboss: const Color(0xff5C6166).withOpacity(0.5),
                shadowDarkColorEmboss: const Color(0xff121214),
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(12.0),
                ),
              ),
              child: Container(
                color: const Color(0xff17191B),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Name',
                    hintStyle: TextStyle(color: Color(0xff5C6166)),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Neumorphic(
              style: NeumorphicStyle(
                depth: -4,
                intensity: 1,
                color: Colors.black,
                shape: NeumorphicShape.flat,
                shadowLightColorEmboss: const Color(0xff5C6166).withOpacity(0.5),
                shadowDarkColorEmboss: const Color(0xff121214),
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(12.0),
                ),
              ),
              child: Container(
                color: const Color(0xff17191B),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(color: Color(0xff5C6166)),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Neumorphic(
              style: NeumorphicStyle(
                depth: -4,
                intensity: 1,
                color: Colors.black,
                shape: NeumorphicShape.flat,
                shadowLightColorEmboss: const Color(0xff5C6166).withOpacity(0.5),
                shadowDarkColorEmboss: const Color(0xff121214),
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(12.0),
                ),
              ),
              child: Container(
                color: const Color(0xff17191B),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Car Model',
                    hintStyle: TextStyle(color: Color(0xff5C6166)),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Neumorphic(
              style: NeumorphicStyle(
                depth: -4,
                intensity: 1,
                color: Colors.black,
                shape: NeumorphicShape.flat,
                shadowLightColorEmboss: const Color(0xff5C6166).withOpacity(0.5),
                shadowDarkColorEmboss: const Color(0xff121214),
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(12.0),
                ),
              ),
              child: Container(
                color: const Color(0xff17191B),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Color(0xff5C6166)),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () => Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (context) => const App()), (route) => false),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.3, 0.8],
                        colors: [
                          Color(0xffDB0BFA),
                          Color(0xffAA0EF9)
                        ]
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                alignment: Alignment.center,
                child: const Text('Sign Up', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
                onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Login())),
                child: const Text('Login', style: TextStyle(fontSize: 20))
            ),
          ],
        ),
      ),
    );
  }
}
