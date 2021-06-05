import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/page/home/chat_page.dart';
import 'package:flutter_ecommerce/page/home/home_page.dart';
import 'package:flutter_ecommerce/page/home/profile_page.dart';
import 'package:flutter_ecommerce/page/home/wishlish_page.dart';
import 'package:flutter_ecommerce/theme.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: body(),
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBUttomNavigator(),
    );
  }

  Widget cartButton() {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, "/cart");
      },
      child: Image.asset(
        'assets/icon_cart.png',
        width: 20,
      ),
    );
  }

  Widget body() {
    switch (_selectedIndex) {
      case 0:
        return HomePage();
        break;
      case 1:
        return ChatPage();
        break;
      case 2:
        return WishlistPage();
      case 3:
        return ProfilePage();
      default:
        return HomePage();
    }
  }

  Widget customBUttomNavigator() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      ),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: backgroundColor2,
          onTap: (value) {
            print(value);
            setState(() {
              _selectedIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/icon_home.png',
                  width: 21,
                  color: _selectedIndex == 0 ? primaryColor : Color(0xff808191),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/icon_chat.png',
                  width: 21,
                  color: _selectedIndex == 1 ? primaryColor : Color(0xff808191),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/icon_wishlist.png',
                  width: 21,
                  color: _selectedIndex == 2 ? primaryColor : Color(0xff808191),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/icon_profile.png',
                  width: 21,
                  color: _selectedIndex == 3 ? primaryColor : Color(0xff808191),
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
