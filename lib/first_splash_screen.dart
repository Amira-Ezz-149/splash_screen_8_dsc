import 'dart:async';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class FirstSplashScreen extends StatelessWidget {
  const FirstSplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    Timer(Duration(seconds: 6), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: CircularProgressIndicator()),

    );
  } //end of build widget


}
