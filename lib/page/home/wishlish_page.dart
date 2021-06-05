import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/page/empty_wishlist.dart';
import 'package:flutter_ecommerce/theme.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor2,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text("Favorite Shoes"),
        centerTitle: true,
      );
    }

    Widget listWishlist() {
      return Container(
        width: 315,
        height: 110,
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        decoration: BoxDecoration(
            color: backgroundColor2, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: <Widget>[
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/image_shoes.png"))),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Predator 20.3 FirmGround Boots",
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '1000',
                  style: priceTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                )
              ],
            )),
            Image.asset(
              "assets/button_wishlist_blue.png",
              width: 34,
              height: 34,
            )
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          listWishlist(),
          listWishlist(),
          listWishlist(),
          listWishlist(),
          listWishlist()
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: EmptyWishlist(),
      appBar: header(),
    );
  }
}
