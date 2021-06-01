import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gettInit();

    super.initState();
  }

  gettInit() {
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/sign-in'));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
          child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage("assets/image_splash.png"))),
      )),
    );
  }
}
