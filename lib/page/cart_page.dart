import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor2,
        elevation: 0,
        title: Text("Your Cart"),
        centerTitle: true,
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: 315,
              height: 110,
              decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/image_shoes.png"))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.restore_from_trash_outlined,
                            color: alertColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Remove",
                            style: alertTextStyle,
                          )
                        ],
                      )
                    ],
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Terrex Urban Low",
                        style: primaryTextStyle.copyWith(fontSize: 14),
                      ),
                      Text(
                        "143,98",
                        style: priceTextStyle.copyWith(fontSize: 14),
                      ),
                    ],
                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add_circle,
                        color: primaryColor,
                      ),
                      Text(
                        "2",
                        style: priceTextStyle,
                      ),
                      Icon(Icons.remove_circle_outline)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: content(),
      appBar: header(),
    );
  }
}
