import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/theme.dart';
import 'package:flutter_ecommerce/widgets/arival_product.dart';
import 'package:flutter_ecommerce/widgets/product_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        header(),
        categories(),
        popularProductTitle(),
        popularProduct(),
        newArrivalTitle(),
        newArrival()
      ],
    );
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Halo, Alex",
                style: primaryTextStyle.copyWith(
                    fontSize: 24, fontWeight: semiBold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "@alexin",
                style: subtitleTextStyle.copyWith(fontSize: 16),
              )
            ],
          )),
          Container(
            width: 54,
            height: 54,
            child: Text(""),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://wallpaperaccess.com/full/817896.jpg"))),
          )
        ],
      ),
    );
  }

  Widget categories() {
    return Container(
      margin:
          EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(12)),
              child: Text("All Shoes"),
            ),
            SizedBox(
              width: 6,
            ),
            Container(
                child: Text("Running"),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: subtitleColor,
                    ))),
            SizedBox(
              width: 6,
            ),
            Container(
                child: Text("Training"),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: subtitleColor,
                    ))),
            SizedBox(
              width: 6,
            ),
            Container(
                child: Text("Basket"),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: subtitleColor,
                    ))),
            SizedBox(
              width: 6,
            ),
            Container(
                child: Text("Running"),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: subtitleColor,
                    ))),
          ],
        ),
      ),
    );
  }

  Widget popularProductTitle() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Text(
        "Popular Product",
        style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
      ),
    );
  }

  Widget popularProduct() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            ProductCart(),
            ProductCart(),
          ],
        ),
      ),
    );
  }

  Widget newArrivalTitle() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Text(
        "New Arrival",
        style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
      ),
    );
  }

  Widget newArrival() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[Arival(), Arival(), Arival()],
      ),
    );
  }
}
