import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:wayne_interprise/mainscreen.dart';

void main(){
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AnimatedSplashScreen(
          splash: Container(child: Image.asset("assets/images/bat.png"),),
          nextScreen: MainScreen(),
          backgroundColor: Colors.black,
          animationDuration: Duration(microseconds: 700),
          curve: Curves.easeInOut,
          splashIconSize: 200,
        ),
      )
    );
  }
}
