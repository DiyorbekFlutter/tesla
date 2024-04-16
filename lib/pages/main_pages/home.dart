import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff17191B),
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 85),
        child: Align(
          alignment: const Alignment(0, 1),
          child: Row(
            children: [
              const SizedBox(width: 40),
              Neumorphic(
                style: NeumorphicStyle(
                  depth: -4,
                  intensity: 1,
                  color: Colors.black,
                  shape: NeumorphicShape.flat,
                  shadowLightColorEmboss: const Color(0xff5C6166).withOpacity(0.5),
                  shadowDarkColorEmboss: const Color(0xff121214),
                  boxShape: const NeumorphicBoxShape.circle(),
                ),
                child: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xff17191B),
                  child: Icon(Icons.person, color: Color(0xff4E545E)),
                ),
              ),
              const Spacer(),
              Neumorphic(
                style: NeumorphicStyle(
                  depth: -4,
                  intensity: 1,
                  color: Colors.black,
                  shape: NeumorphicShape.flat,
                  shadowLightColorEmboss: const Color(0xff5C6166).withOpacity(0.5),
                  shadowDarkColorEmboss: const Color(0xff121214),
                  boxShape: const NeumorphicBoxShape.circle(),
                ),
                child: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xff17191B),
                  child: Icon(Icons.settings, color: Color(0xff4E545E)),
                ),
              ),
              const SizedBox(width: 40),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          const Align(
            alignment: Alignment(0.8, -1),
            child: Icon(Icons.arrow_forward_ios, color: Color(0xff9C9DA4)),
          ),
          const SizedBox(height: 10),
          const Text("Tesla", style: TextStyle(color: Color(0xff5F6066), fontSize: 18)),
          const Text("Cybertruck", style: TextStyle(color: Color(0xffffffff), fontSize: 35)),
          Align(
            alignment: const Alignment(1, 0),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Image.asset('assets/images/cybertruck1.png'),
            )
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(CupertinoIcons.battery_75_percent, color: Color(0xff5A5B60), size: 25),
              SizedBox(width: 8),
              Text('km', style: TextStyle(fontSize: 18, color: Color(0xff5A5B60)))
            ],
          ),
          Transform.translate(
            offset: const Offset(0, -20),
            child: const Text("130",
              style: TextStyle(
                fontSize: 130,
                color: Colors.white,
                fontWeight: FontWeight.w100
              )
            ),
          )
        ],
      ),
    );
  }
}
