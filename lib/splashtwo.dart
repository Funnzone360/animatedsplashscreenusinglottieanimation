import 'package:animatedsplashscreen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashTwoScreen extends StatefulWidget {
  const SplashTwoScreen({super.key});

  @override
  State<SplashTwoScreen> createState() => _SplashTwoScreenState();
}

class _SplashTwoScreenState extends State<SplashTwoScreen> {
  //bye using navigator Dot PushReplacement you can,t back to previous page
  void gotonextscreen() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) {
            return Homepage();
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
        title: Text("Animated Splash Screen two"),
      ),
      body: Column(
        children: [
          Text("SAY HI TO EVERYONE"),
          Lottie.asset(
            "assets/Polite Chicky.json",
            width: 500,
            height: 500,
          ),
          LoadingAnimationWidget.inkDrop(
            color: Colors.orange,
            size: 100,
          ),
        ],
      ),
    );
  }
}
