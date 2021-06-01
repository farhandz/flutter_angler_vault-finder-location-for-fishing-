import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';

class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            inputEmail(),
            passwordInput(),
            buttonLogin(),
            Spacer(),
            footer()
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: primaryTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'Sign In to Continue',
            style: subtitleTextStyle,
          ),
        ],
      ),
    );
  }

  Widget inputEmail() {
    TextEditingController _emailController = TextEditingController(text: '');
    return Container(
      margin: EdgeInsets.only(top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Email Address',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: backgroundColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/icon_email.png',
                    width: 17,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: TextFormField(
                    style: primaryTextStyle,
                    controller: _emailController,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Your Email Address',
                      hintStyle: subtitleTextStyle,
                    ),
                    onChanged: (value) {
                      print(_emailController);
                    },
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget passwordInput() {
    TextEditingController passwordController = TextEditingController(text: '');
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Password',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: backgroundColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/icon_password.png',
                  width: 17,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: TextFormField(
                  style: primaryTextStyle,
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Password',
                    hintStyle: subtitleTextStyle,
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buttonLogin() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      child: TextButton(
        onPressed: () {},
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/home");
          },
          child: Text(
            'Sign In',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ),
        style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
      ),
    );
  }

  Widget footer() {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Don\'t have an account? ',
            style: subtitleTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/sign-up');
            },
            child: Text(
              'Sign  up',
              style: purpleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
            ),
          )
        ],
      ),
    );
  }
}
