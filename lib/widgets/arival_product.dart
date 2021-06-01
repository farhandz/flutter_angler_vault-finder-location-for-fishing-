import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';

class Arival extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
                color: Color(0xffECEDEF),
                borderRadius: BorderRadius.circular(22),
                image: DecorationImage(
                    image: AssetImage("assets/image_shoes.png"))),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Football",
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Predator 20.3 FirmGround",
                  style: primaryTextStyle.copyWith(fontSize: 22),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$57,15",
                  style: priceTextStyle.copyWith(fontSize: 14),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
