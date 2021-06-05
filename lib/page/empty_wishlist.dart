import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';

class EmptyWishlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/image_wishlist.png",
            fit: BoxFit.cover,
            width: 74,
            height: 62,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            " You don't have dream shoes?",
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Let's find your favorite shoes",
            style: subtitleTextStyle.copyWith(fontSize: 14),
          ),
          SizedBox(
            height: 16,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/home");
            },
            child: Text(
              "Explore Store",
              style: primaryTextStyle,
            ),
            style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          )
        ],
      ),
    );
  }
}
