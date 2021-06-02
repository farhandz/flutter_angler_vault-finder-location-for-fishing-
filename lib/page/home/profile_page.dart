import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor2,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
            child: Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
            left: defaultMargin,
            right: defaultMargin,
          ),
          padding: EdgeInsets.only(bottom: 20),
          child: Row(
            children: <Widget>[
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://cdn.myanimelist.net/images/characters/13/348969.jpg"))),
              ),
              SizedBox(
                width: 14,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Farhan Ammar",
                    style: primaryTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  ),
                  Text(
                    "@ammarjoz",
                    style: subtitleTextStyle.copyWith(fontSize: 16),
                  )
                ],
              )),
              Image.asset(
                'assets/button_exit.png',
                width: 20,
              )
            ],
          ),
        )),
      );
    }

    Widget subtitle(subtitle) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '$subtitle',
                  style: subtitleTextStyle.copyWith(fontSize: 16),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Color(0xffF1F0F2),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
          child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Acount',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/edit-profile');
                },
                child: subtitle("edit Profile")),
            subtitle("Your Order"),
            subtitle("Help"),
            SizedBox(height: 20),
            Text(
              'Genral',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            subtitle("Privacy & Policy"),
            subtitle("Term of Service"),
            subtitle("Rate App"),
          ],
        ),
      ));
    }

    return Column(
      children: [header(), content()],
    );
  }
}
