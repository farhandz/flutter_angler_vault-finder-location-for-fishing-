import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/page/home/main_page.dart';
import 'package:flutter_ecommerce/page/sign_page.dart';
import 'package:flutter_ecommerce/page/sign_up.dart';
import 'package:flutter_ecommerce/page/spash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/sign-in': (context) => Sign(),
        '/sign-up': (context) => SignUp(),
        '/home': (context) => MainPage()
      },
    );
  }
}
