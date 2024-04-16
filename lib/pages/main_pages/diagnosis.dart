import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class Diagnosis extends StatefulWidget {
  const Diagnosis({super.key});

  @override
  State<Diagnosis> createState() => _DiagnosisState();
}

class _DiagnosisState extends State<Diagnosis> {
  bool switch1 = true;
  bool switch2 = false;
  bool switch3 = true;

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
                    text: '  Cybertruck',
                    style: TextStyle(color: Color(0xff414246), fontSize: 20),
                    children: [
                      TextSpan(
                          text: '\nDiagnosis',
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
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Align(
                  alignment: const Alignment(1, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Image.asset('assets/images/cybertruck1.png'),
                  )
              ),
              const SizedBox(height: 20),
              Container(
                width: 150,
                padding: const EdgeInsets.all(12),
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
                child: Column(
                  children: [
                    const Text('System Temp', style: TextStyle(color: Color(0xff5D6368))),
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF202428),
                              Color(0xFF131314),
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(360.0),
                          ),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: SleekCircularSlider(
                          appearance: CircularSliderAppearance(
                            startAngle: 90.0,
                            size: 180.0,
                            customColors: CustomSliderColors(
                              progressBarColors: [
                                const Color(0xffCE3DE6),
                                const Color(0xffAD1EE6),
                              ],
                              gradientStartAngle: 180.0,
                              gradientEndAngle: 360.0,
                              trackColor: const Color(0xff1F2124),
                              dotColor: const Color(0xff1F2124),
                            ),
                            customWidths: CustomSliderWidths(
                              trackWidth: 18.0,
                              progressBarWidth: 18.0,
                              shadowWidth: 18.0,
                            ),
                            spinnerMode: false,
                            angleRange: 360.0,
                          ),
                          min: 10.0,
                          max: 100.0,
                          initialValue: 24.0,
                          onChange: (double value) {},
                          onChangeStart: (double startValue) {},
                          onChangeEnd: (double endValue) {},
                          innerWidget: (double value) {
                            return Center(
                              child: Text(
                                "${value.toInt()}°C",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFFFDFDFD),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Container(
                    height: 150,
                    width: 120,
                    padding: const EdgeInsets.all(12),
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
                    child: Column(
                      children: [
                        const Text('Sensors', style: TextStyle(color: Color(0xff5D6368))),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              width: 15,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(360.0)
                              ),
                              child: Container(
                                width: 15,
                                height: 40,
                                decoration: const BoxDecoration(
                                  color: Colors.purpleAccent,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(360.0),
                                    bottomLeft: Radius.circular(360.0),
                                    topRight: Radius.circular(200),
                                    topLeft: Radius.circular(200),
                                  )
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              width: 15,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(360.0)
                              ),
                              child: Container(
                                width: 15,
                                height: 35,
                                decoration: const BoxDecoration(
                                    color: Colors.purpleAccent,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(360.0),
                                      bottomLeft: Radius.circular(360.0),
                                      topRight: Radius.circular(200),
                                      topLeft: Radius.circular(200),
                                    )
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              width: 15,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(360.0)
                              ),
                              child: Container(
                                width: 15,
                                height: 50,
                                decoration: const BoxDecoration(
                                    color: Colors.purpleAccent,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(360.0),
                                      bottomLeft: Radius.circular(360.0),
                                      topRight: Radius.circular(200),
                                      topLeft: Radius.circular(200),
                                    )
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              width: 15,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(360.0)
                              ),
                              child: Container(
                                width: 15,
                                height: 28,
                                decoration: const BoxDecoration(
                                    color: Colors.purpleAccent,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(360.0),
                                      bottomLeft: Radius.circular(360.0),
                                      topRight: Radius.circular(200),
                                      topLeft: Radius.circular(200),
                                    )
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
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
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment(-0.9, 0),
                            child: Text('Security', style: TextStyle(color: Color(0xff5D6368)))
                          ),
                          Row(
                            children: [
                              const Icon(Icons.lock, color: Colors.purpleAccent, size: 22),
                              const SizedBox(width: 5),
                              const Text("Doors locked", style: TextStyle(color: Colors.white, fontSize: 13)),
                              const Spacer(),
                              Transform.scale(
                                scale: 0.5,
                                child: Switch(
                                  onChanged: (value) => setState(() => switch1 = value),
                                  value: switch1,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.lock, color: Colors.purpleAccent, size: 22),
                              const SizedBox(width: 5),
                              const Text("Dog Mode", style: TextStyle(color: Colors.white, fontSize: 13)),
                              const Spacer(),
                              Transform.scale(
                                scale: 0.5,
                                child: Switch(
                                  onChanged: (value) => setState(() => switch2 = value),
                                  value: switch2,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.lock, color: Colors.purpleAccent, size: 22),
                              const SizedBox(width: 5),
                              const Text("Security mode", style: TextStyle(color: Colors.white, fontSize: 13)),
                              const Spacer(),
                              Transform.scale(
                                scale: 0.5,
                                child: Switch(
                                  onChanged: (value) => setState(() => switch3 = value),
                                  value: switch3,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}

