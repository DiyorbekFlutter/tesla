import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
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
                          text: '\nWeather',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(20.0, 20.0),
                        color: Color(0xFF141415),
                        blurRadius: 70.0,
                      ),
                      BoxShadow(
                        offset: Offset(-20.0, -20.0),
                        color: Color(0xFF485057),
                        blurRadius: 70.0,
                      ),
                    ],
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
                        trackWidth: 30.0,
                        progressBarWidth: 30.0,
                        shadowWidth: 30.0,
                      ),
                      spinnerMode: false,
                      angleRange: 360.0,
                    ),
                    min: 10.0,
                    max: 100.0,
                    initialValue: 70.0,
                    onChange: (double value) {},
                    onChangeStart: (double startValue) {},
                    onChangeEnd: (double endValue) {},
                    innerWidget: (double value) {
                      return Center(
                        child: Text(
                          "${value.toInt()}°C",
                          style: const TextStyle(
                            fontSize: 36.0,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFFDFDFD),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60),
            Row(
              children: [
                const SizedBox(width: 20),
                const SizedBox(
                  width: 50,
                  child: Text("AC", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold))
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: NeumorphicSlider(
                    onChanged: (value) => setState((){}),
                    value: 30,
                    min: 0,
                    max: 50,
                    height: 10,
                    thumb: SizedBox(
                      height: 20,
                      width: 40,
                      child: Neumorphic(
                        style: NeumorphicStyle(
                          depth: -4,
                          intensity: 1,
                          color: Colors.black,
                          shape: NeumorphicShape.flat,
                          shadowDarkColorEmboss: const Color(0xff5C6166).withOpacity(0.5),
                          shadowLightColorEmboss: const Color(0xff121214),
                          boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12.0),
                          ),
                        ),
                        child: Container(
                          color: const Color(0xff252628),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 5,
                                height: 20,
                                color: const Color(0xff17191B),
                              ),
                              Container(
                                width: 5,
                                height: 20,
                                color: const Color(0xff17191B),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    style: const SliderStyle(
                      depth: 2,
                      accent: Color(0xffCE3DE6),
                      variant: Color(0xffAD1EE6),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const SizedBox(width: 20),
                const SizedBox(
                  width: 50,
                  child: Text("Heat", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold))
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: NeumorphicSlider(
                    onChanged: (value) => setState((){}),
                    value: 20,
                    min: 0,
                    max: 50,
                    height: 10,
                    thumb: SizedBox(
                      height: 20,
                      width: 40,
                      child: Neumorphic(
                        style: NeumorphicStyle(
                          depth: -4,
                          intensity: 1,
                          color: Colors.black,
                          shape: NeumorphicShape.flat,
                          shadowDarkColorEmboss: const Color(0xff5C6166).withOpacity(0.5),
                          shadowLightColorEmboss: const Color(0xff121214),
                          boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12.0),
                          ),
                        ),
                        child: Container(
                          color: const Color(0xff252628),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 5,
                                height: 20,
                                color: const Color(0xff17191B),
                              ),
                              Container(
                                width: 5,
                                height: 20,
                                color: const Color(0xff17191B),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    style: const SliderStyle(
                      depth: 2,
                      accent: Color(0xffCE3DE6),
                      variant: Color(0xffAD1EE6),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const SizedBox(width: 20),
                const SizedBox(
                    width: 50,
                    child: Text("Fan", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold))
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: NeumorphicSlider(
                    onChanged: (value) => setState((){}),
                    value: 40,
                    min: 0,
                    max: 50,
                    height: 10,
                    thumb: SizedBox(
                      height: 20,
                      width: 40,
                      child: Neumorphic(
                        style: NeumorphicStyle(
                          depth: -4,
                          intensity: 1,
                          color: Colors.black,
                          shape: NeumorphicShape.flat,
                          shadowDarkColorEmboss: const Color(0xff5C6166).withOpacity(0.5),
                          shadowLightColorEmboss: const Color(0xff121214),
                          boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12.0),
                          ),
                        ),
                        child: Container(
                          color: const Color(0xff252628),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 5,
                                height: 20,
                                color: const Color(0xff17191B),
                              ),
                              Container(
                                width: 5,
                                height: 20,
                                color: const Color(0xff17191B),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    style: const SliderStyle(
                      depth: 2,
                      accent: Color(0xffCE3DE6),
                      variant: Color(0xffAD1EE6),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const SizedBox(width: 20),
                const SizedBox(
                    width: 50,
                    child: Text("AC", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold))
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: NeumorphicSlider(
                    onChanged: (value) => setState((){}),
                    value: 10,
                    min: 0,
                    max: 50,
                    height: 10,
                    thumb: SizedBox(
                      height: 20,
                      width: 40,
                      child: Neumorphic(
                        style: NeumorphicStyle(
                          depth: -4,
                          intensity: 1,
                          color: Colors.black,
                          shape: NeumorphicShape.flat,
                          shadowDarkColorEmboss: const Color(0xff5C6166).withOpacity(0.5),
                          shadowLightColorEmboss: const Color(0xff121214),
                          boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12.0),
                          ),
                        ),
                        child: Container(
                          color: const Color(0xff252628),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 5,
                                height: 20,
                                color: const Color(0xff17191B),
                              ),
                              Container(
                                width: 5,
                                height: 20,
                                color: const Color(0xff17191B),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    style: const SliderStyle(
                      depth: 2,
                      accent: Color(0xffCE3DE6),
                      variant: Color(0xffAD1EE6),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

