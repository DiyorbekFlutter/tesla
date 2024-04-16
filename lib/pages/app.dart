import 'package:d_navigation_bar/d_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:tesla/pages/main_pages/car_page.dart';
import 'package:tesla/pages/main_pages/charging.dart';
import 'package:tesla/pages/main_pages/diagnosis.dart';
import 'package:tesla/pages/main_pages/home.dart';
import 'package:tesla/pages/main_pages/weather.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final DNavigationBarController controller = DNavigationBarController(pages: _pages);
  static const List<Widget> _pages = [CarPage(), Weather(), Charging(), Diagnosis()];
  bool homeIsActive = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: homeIsActive ? const Home() : controller.page,
          bottomNavigationBar: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Transform.translate(
                    offset: const Offset(0, -15),
                    child: SizedBox(
                      height: 60,
                      width: MediaQuery.of(context).size.width * 0.5 - 42,
                      child: Transform.rotate(
                        angle: 0.1,
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
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Transform.translate(
                offset: const Offset(0, -15),
                child: SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.5 - 39.5,
                  child: Transform.rotate(
                    angle: -0.1,
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
                      ),
                    ),
                  ),
                ),
              ),
              DNavigationBar(
                onChanged: (index) => setState(() => homeIsActive = false),
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                backgroundColor: const Color(0xff252628),
                controller: controller,
                useShadow: false,
                items: [
                  DNavigationBarItem(
                    icon: const Icon(Icons.car_repair, color: Color(0xff57585C)),
                    activeIcon: homeIsActive ? null : const Icon(Icons.car_repair, color: Color(0xffBD4AF2)),
                  ),
                  DNavigationBarItem(
                    icon: const Icon(Icons.device_hub, color: Color(0xff57585C)),
                    activeIcon: homeIsActive ? null : const Icon(Icons.device_hub_sharp, color: Color(0xffBD4AF2)),
                  ),
                  DNavigationBarItem(
                    icon: const Icon(Icons.flash_on, color: Color(0xff57585C)),
                    activeIcon: homeIsActive ? null : const Icon(Icons.flash_on, color: Color(0xffBD4AF2)),
                  ),
                  DNavigationBarItem(
                    icon: const Icon(Icons.person, color: Color(0xff57585C)),
                    activeIcon: homeIsActive ? null : const Icon(Icons.person, color: Color(0xffBD4AF2)),
                  ),
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: const Alignment(0, 0.9),
          child: Container(
            width: 100,
            height: 50,
            decoration: const BoxDecoration(
              color: Color(0xff17191B),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(100),
                bottomLeft: Radius.circular(100)
              )
            ),
          ),
        ),
        Align(
          alignment: const Alignment(0, 0.88),
          child: Neumorphic(
            style: const NeumorphicStyle(
              depth: -4,
              intensity: 1,
              color: Colors.black,
              shape: NeumorphicShape.flat,
              shadowLightColorEmboss: Color(0xff44044F),
              shadowDarkColorEmboss: Color(0xffCF3EE6),
              boxShape: NeumorphicBoxShape.circle(),
            ),
            child: GestureDetector(
              onTap: () => setState(() => homeIsActive = true),
              child: CircleAvatar(
                backgroundColor: const Color(0xffC12DEE),
                radius: 40,
                child: IconButton(
                  onPressed: () => setState(() => homeIsActive = true),
                  highlightColor: Colors.transparent,
                  icon: const Icon(CupertinoIcons.power, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 24, 25, 27)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*-0.0010000,size.height);
    path_0.lineTo(size.width*-0.0010000,size.height*0.7000000);
    path_0.lineTo(size.width*0.4012000,size.height*0.6584000);
    path_0.lineTo(size.width*0.4030000,size.height*0.6860000);
    path_0.lineTo(size.width*0.4100000,size.height*0.7132000);
    path_0.lineTo(size.width*0.4194000,size.height*0.7344000);
    path_0.lineTo(size.width*0.4298000,size.height*0.7480000);
    path_0.lineTo(size.width*0.4424000,size.height*0.7616000);
    path_0.lineTo(size.width*0.4554000,size.height*0.7716000);
    path_0.lineTo(size.width*0.4698000,size.height*0.7796000);
    path_0.lineTo(size.width*0.4848000,size.height*0.7844000);
    path_0.lineTo(size.width*0.4998000,size.height*0.7852000);
    path_0.lineTo(size.width*0.5154000,size.height*0.7840000);
    path_0.lineTo(size.width*0.5302000,size.height*0.7800000);
    path_0.lineTo(size.width*0.5404000,size.height*0.7736000);
    path_0.lineTo(size.width*0.5530000,size.height*0.7652000);
    path_0.lineTo(size.width*0.5650000,size.height*0.7536000);
    path_0.lineTo(size.width*0.5754000,size.height*0.7352000);
    path_0.lineTo(size.width*0.5858000,size.height*0.7152000);
    path_0.lineTo(size.width*0.5924000,size.height*0.6912000);
    path_0.lineTo(size.width*0.5974000,size.height*0.6600000);
    path_0.lineTo(size.width*1.0004000,size.height*0.6952000);
    path_0.lineTo(size.width,size.height*1.0004000);
    path_0.lineTo(size.width*-0.0010000,size.height);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);


    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_0, paintStroke0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
