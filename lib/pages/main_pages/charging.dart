import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class Charging extends StatefulWidget {
  const Charging({super.key});

  @override
  State<Charging> createState() => _ChargingState();
}

class _ChargingState extends State<Charging> {
  bool isOpen = true;

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
              RichText(
                text: const TextSpan(
                    text: 'Cybertruck',
                    style: TextStyle(color: Color(0xff414246), fontSize: 20),
                    children: [
                      TextSpan(
                          text: '\nCharging',
                          style: TextStyle(color: Color(0xff98999F), fontSize: 28)
                      )
                    ]
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
          const SizedBox(height: 30),
          Center(
            child: Image.asset('assets/images/cybertruck3.png', width: MediaQuery.of(context).size.width * 0.8,)
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Neumorphic(
              style: NeumorphicStyle(
                depth: -4,
                intensity: 1,
                color: Colors.black,
                shape: NeumorphicShape.flat,
                shadowLightColorEmboss: const Color(0xff5C6166).withOpacity(0.5),
                shadowDarkColorEmboss: const Color(0xff121214),
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff17191B),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        const Text('Charging Overview', style: TextStyle(color: Colors.white, fontSize: 18)),
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
                          child: GestureDetector(
                            child: CircleAvatar(
                              backgroundColor: const Color(0xff1B1D20),
                              radius: 30,
                              child: IconButton(
                                onPressed: () => setState(() => isOpen = !isOpen),
                                highlightColor: Colors.transparent,
                                icon: Icon(isOpen ? Icons.keyboard_arrow_down : Icons.arrow_forward_ios, color: const Color(0xff9899A0), size: isOpen ? 40 : null,),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                    const SizedBox(height: 20),
                    if(isOpen)
                      Row(
                      children: [
                        const SizedBox(width: 20),
                        RichText(
                          text: const TextSpan(
                            text: 'Cybertruck',
                            style: TextStyle(color: Color(0xff97989F), fontSize: 20),
                            children: [
                              TextSpan(
                                text: '\nsuper charge',
                                style: TextStyle(color: Color(0xff97989F), fontSize: 20),
                              ),
                              TextSpan(
                                text: '\nLithium battery 3/4',
                                style: TextStyle(color: Color(0xff3E3E42), fontSize: 15),
                              )
                            ]
                          ),
                        ),
                        const Spacer(),
                        const Column(
                          children: [
                            Icon(Icons.location_pin, size: 30, color: Color(0xffDA8FFF)),
                            SizedBox(height: 2),
                            Text('125km', style: TextStyle(color: Color(0xff97989F)))
                          ],
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                    if(isOpen) const SizedBox(height: 20),
                    if(isOpen)
                      Row(
                      children: [
                        const SizedBox(width: 20),
                        RichText(
                          text: const TextSpan(
                              text: 'Cybertruck',
                              style: TextStyle(color: Color(0xff97989F), fontSize: 20),
                              children: [
                                TextSpan(
                                  text: '\nsuper charge',
                                  style: TextStyle(color: Color(0xff97989F), fontSize: 20),
                                ),
                                TextSpan(
                                  text: '\nLithium battery 3/3',
                                  style: TextStyle(color: Color(0xff3E3E42), fontSize: 15),
                                )
                              ]
                          ),
                        ),
                        const Spacer(),
                        const Column(
                          children: [
                            Icon(Icons.location_pin, size: 30, color: Color(0xffDA8FFF)),
                            SizedBox(height: 2),
                            Text('128km', style: TextStyle(color: Color(0xff97989F)))
                          ],
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                    if(isOpen) const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
