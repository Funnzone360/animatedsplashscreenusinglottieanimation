import 'package:animatedsplashscreen/splashtwo.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashOneScreen extends StatefulWidget {
  const SplashOneScreen({super.key});

  @override
  State<SplashOneScreen> createState() => _SplashOneScreenState();
}

class _SplashOneScreenState extends State<SplashOneScreen> {
  void gotonextscreen() {
    //bye using navigator Dot push you can back to previous page
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) {
            return SplashTwoScreen();
          },
        ),
      );
    });
  }

  @override
  void initState() {
    gotonextscreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Splash Screen one "),
      ),
      body: Column(
        children: [
          Text("SAY HI TO EVERYONE"),
          Lottie.asset(
            "assets/Animation - 1714813436241.json",
            width: 500,
            height: 500,
          ),
          LoadingAnimationWidget.bouncingBall(
            color: Colors.red,
            size: 100,
          ),
        ],
      ),
    );
  }
}
