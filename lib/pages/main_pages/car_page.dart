import 'package:d_navigation_bar/d_navigation_bar.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class CarPage extends StatefulWidget {
  const CarPage({super.key});

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {


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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Text("Tesla", style: TextStyle(color: Color(0xff5F6066), fontSize: 18)),
            const Text("Cybertruck", style: TextStyle(color: Color(0xffffffff), fontSize: 35)),
            Transform.translate(
              offset: const Offset(0, -15),
              child: Center(
                child: Image.asset('assets/images/cybertruck2.png', width: MediaQuery.of(context).size.width * 0.8,)
              ),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff1C1D1F),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xff26282A),
                      offset: Offset(-4, -4),
                      spreadRadius: 1,
                      blurRadius: 10
                  ),
                  BoxShadow(
                    color: Color(0xff26282A),
                    offset: Offset(1, 1),
                    spreadRadius: 1,
                    blurRadius: 20
                  ),
                ]
              ),
              width: MediaQuery.of(context).size.width - 60,
              child: DNavigationBar(
                onChanged: (index) => setState((){}),
                useShadow: false,
                backgroundColor: Colors.transparent,
                items: [
                  DNavigationBarItem(
                    icon: const Icon(Icons.lock, color: Color(0xff414246)),
                    activeIcon: const Icon(Icons.lock, color: Color(0xffBD4AF2)),
                  ),
                  DNavigationBarItem(
                    icon: const Icon(Icons.flash_on_sharp, color: Color(0xff414246)),
                    activeIcon: const Icon(Icons.flash_on_sharp, color: Color(0xffBD4AF2)),
                  ),
                  DNavigationBarItem(
                    icon: const Icon(Icons.settings_power, color: Color(0xff414246)),
                    activeIcon: const Icon(Icons.settings_power, color: Color(0xffBD4AF2)),
                  ),
                  DNavigationBarItem(
                    icon: const Icon(Icons.car_rental, color: Color(0xff414246)),
                    activeIcon: const Icon(Icons.car_rental, color: Color(0xffBD4AF2)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Container(
              height: 180,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff1C1D1F),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xff26282A),
                        offset: Offset(-4, -4),
                        spreadRadius: 1,
                        blurRadius: 10
                    ),
                    BoxShadow(
                        color: Color(0xff26282A),
                        offset: Offset(1, 1),
                        spreadRadius: 1,
                        blurRadius: 20
                    ),
                  ]
              ),
              width: MediaQuery.of(context).size.width - 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.security, color: Color(0xff5A5B5F)),
                      SizedBox(width: 15),
                      Text("Security", style: TextStyle(color: Color(0xff98999F), fontSize: 25)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff5A5B5F)),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Icon(Icons.device_hub, color: Color(0xff5A5B5F)),
                      const SizedBox(width: 15),
                      RichText(
                        text: const TextSpan(
                          text: 'Climate',
                          style: TextStyle(color: Color(0xff98999F), fontSize: 28),
                          children: [
                            TextSpan(
                              text: '\nInterior 15"C',
                              style: TextStyle(color: Color(0xff414246), fontSize: 20)
                            )
                          ]
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff5A5B5F)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.battery_charging_full_outlined, color: Color(0xff5A5B5F)),
                      const SizedBox(width: 15),
                      RichText(
                        text: const TextSpan(
                            text: 'Charging',
                            style: TextStyle(color: Color(0xff98999F), fontSize: 28),
                            children: [
                              TextSpan(
                                  text: '\n98 percent',
                                  style: TextStyle(color: Color(0xff414246), fontSize: 20)
                              )
                            ]
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff5A5B5F)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
