import 'package:flutter/material.dart';
import 'package:udemy/screens/cart/cart_page.dart';
import 'package:udemy/screens/home/home_page.dart';
import 'package:udemy/screens/save/save_page.dart';
import 'package:udemy/screens/user/user_page.dart';
import 'package:udemy/themes.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  final _screens = [
    HomePage(),
    SavePage(),
    CartPage(),
    UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/icons/home.png',
                  width: 20,
                  color: _selectedIndex == 0 ? greenColor : greyColor,
                ),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/icons/stroke.png',
                  width: 14,
                  color: _selectedIndex == 1 ? greenColor : greyColor,
                ),
              ),
              label: 'Save'),
          BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/icons/cart.png',
                  width: 25,
                  color: _selectedIndex == 2 ? greenColor : greyColor,
                ),
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/icons/user.png',
                  width: 18,
                  color: _selectedIndex == 3 ? greenColor : greyColor,
                ),
              ),
              label: 'User'),
        ],
      );
    }

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: Stack(
          children: _screens
              .asMap()
              .map((i, screen) => MapEntry(
                  i,
                  Offstage(
                    offstage: _selectedIndex != i,
                    child: screen,
                  )))
              .values
              .toList()),
    );
  }
}
