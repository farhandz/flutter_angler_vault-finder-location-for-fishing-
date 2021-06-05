import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/page/Edit-Profile.dart';
import 'package:flutter_ecommerce/page/cart_page.dart';
import 'package:flutter_ecommerce/page/home/main_page.dart';
import 'package:flutter_ecommerce/page/home/profile_page.dart';
import 'package:flutter_ecommerce/page/sign_page.dart';
import 'package:flutter_ecommerce/page/sign_up.dart';
import 'package:flutter_ecommerce/page/spash_page.dart';
import 'package:flutter_ecommerce/provider/auth_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => AuthProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          '/sign-in': (context) => Sign(),
          '/sign-up': (context) => SignUp(),
          '/home': (context) => MainPage(),
          '/profile': (context) => ProfilePage(),
          '/edit-profile': (context) => EditProfile(),
          '/cart': (context) => CartPage()
        },
      ),
    );
  }
}
