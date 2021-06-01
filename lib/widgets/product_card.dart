import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';

class ProductCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      padding:
          EdgeInsets.only(bottom: 10, left: defaultMargin, top: defaultMargin),
      width: 200,
      height: 270,
      child: ListView(
        children: <Widget>[
          Image.asset(
            "assets/image_shoes.png",
            width: 215,
            height: 150,
            fit: BoxFit.cover,
          ),
          Text(
            "Hiking",
            style: secondaryTextStyle,
          ),
          SizedBox(
            height: 3,
          ),
          Text("COURT VISION 2.0",
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold)),
          SizedBox(
            height: 3,
          ),
          Text('\$58,67',
              style:
                  priceTextStyle.copyWith(fontSize: 13, fontWeight: semiBold)),
          SizedBox(
            height: 3,
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Color(0xffECEDEF),
        borderRadius: BorderRadius.circular(22),
      ),
    );
  }
}
