import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:operating_sys/bottomnavigatscrren/account_screen.dart';
import 'package:operating_sys/bottomnavigatscrren/favorite_screen.dart';
import 'package:operating_sys/bottomnavigatscrren/home_screen.dart';
import 'package:operating_sys/bottomnavigatscrren/shopping_cart_screen.dart';

class HomeBodyView extends StatefulWidget {
  const HomeBodyView({super.key});
  static const routeName = 'homebody';
  @override
  State<HomeBodyView> createState() => _HomeBodyViewState();
}

class _HomeBodyViewState extends State<HomeBodyView> {
  // ignore: non_constant_identifier_names
  List Screen = [
    const HomeScreen(),
    const FavoriteScreen(),
    const ShoppingCartScreen(),
    const AccountScreen(),
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        backgroundColor: Colors.white,
        color: const Color.fromARGB(255, 133, 202, 236),
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.attach_money_outlined,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.account_circle_rounded,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Screen[_selectedIndex],
    );
  }
}
