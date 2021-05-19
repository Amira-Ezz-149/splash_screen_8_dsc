import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'home_screen.dart';
import 'first_splash_screen.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      text: 'Clock!', textStyle:TextStyle(color: Colors.white),
      navigateRoute: FirstSplashScreen(),
      duration: 6000,
      imageSize: 130,
      imageSrc: "images/alarm clock vector .png",
      backgroundColor: Colors.blue,
    );
  }
}
