import 'package:tesla/pages/splash_screen.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:tesla/temp.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: "Tesla App",
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: Colors.white,
        lightSource: LightSource.topLeft,
        depth: 10
      ),
      home: SplashScreen(),
      // home: NeumorphicHomePage(),
    );
  }
}
