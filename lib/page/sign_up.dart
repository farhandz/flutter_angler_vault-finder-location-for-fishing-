import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: backgroundColor1,
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            header(),
            fullName(),
            userName(),
            email(),
            password(),
            buttonRegister(),
            footer()
          ],
        ),
      ),
    ));
  }

  Widget header() {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Sign Up",
            style: primaryTextStyle.copyWith(fontSize: 24, fontWeight: medium),
          ),
          Text(
            'Register and Happy Shoping',
            style: subtitleTextStyle,
          )
        ],
      ),
    );
  }

  Widget fullName() {
    TextEditingController passwordController = TextEditingController(text: '');
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Full Name',
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
                  'assets/icon_name.png',
                  width: 17,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: TextFormField(
                  style: primaryTextStyle,
                  controller: passwordController,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Full Name',
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

  Widget userName() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Username",
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
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
                  'assets/icon_username.png',
                  width: 17,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: TextFormField(
                  style: primaryTextStyle,
                  decoration: InputDecoration.collapsed(
                    hintText: 'UserName',
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

  Widget email() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Email Address",
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.symmetric(horizontal: 16),
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
                  decoration: InputDecoration.collapsed(
                      hintText: "Your Email Address",
                      hintStyle: subtitleTextStyle),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget password() {
    return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Password",
              style: primaryTextStyle.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12)),
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
                    decoration: InputDecoration.collapsed(
                        hintText: "Password", hintStyle: subtitleTextStyle),
                  ))
                ],
              ),
            )
          ],
        ));
  }

  Widget buttonRegister() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      child: TextButton(
        onPressed: () {},
        child: Text(
          "register",
          style: primaryTextStyle.copyWith(fontSize: 16),
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
      margin: EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Already have an acount?",
            style: subtitleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
          ),
          SizedBox(
            width: 7,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/sign-in");
            },
            child: Text(
              "Sign in",
              style: purpleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
            ),
          )
        ],
      ),
    );
  }
}
