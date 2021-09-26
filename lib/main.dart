import 'package:flame_splash_screen/flame_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_games/HomeScreen.dart';

void main() {
  runApp(Splash());
}

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  FlameSplashController controller;
  void initState() {
    super.initState();
    controller = FlameSplashController(
        fadeInDuration: Duration(seconds: 1),
        fadeOutDuration: Duration(milliseconds: 200),
        waitDuration: Duration(seconds: 2),
        autoStart: true);
        
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: FlameSplashScreen(
        showBefore: (BuildContext context) {
          return Text(
            "Welcome",
            style:
                TextStyle(color: Colors.white, fontSize: size.height * 0.029),
          );
        },
        showAfter: (BuildContext context) {
          return Text(
            "Flutter Games ",
            style: TextStyle(color: Colors.white, fontSize: size.height * 0.024),
          );
        },
        theme: FlameSplashTheme.dark,
        onFinish: (context) => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())),
        controller: controller,
      ),
    );
  }
}
