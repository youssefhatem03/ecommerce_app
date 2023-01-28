import 'package:ecommerce_app_sw25/screens/account_screen.dart';
import 'package:ecommerce_app_sw25/screens/cart_screen.dart';
import 'package:ecommerce_app_sw25/screens/main_screen.dart';
import 'package:ecommerce_app_sw25/screens/offers_screen.dart';
import 'package:ecommerce_app_sw25/screens/search_screen.dart';
import 'package:flutter/material.dart';

List<Widget> screenList = [
  MainScreen(),
  SearchScreen(),
  CartScreen(),
  OffersScreen(),
  AccountScreen(),
];

class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int navigationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int index){
              setState(() {
                navigationIndex = index;
              });
            },
          fixedColor: Color(0xFF40BFFF),
          backgroundColor: Colors.white,
          currentIndex: navigationIndex,
          type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.search_outlined),label: "Search"),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: "Cart"),
              BottomNavigationBarItem(icon: Icon(Icons.local_offer_outlined),label: "Offer"),
              BottomNavigationBarItem(icon: Icon(Icons.person_outlined),label: "Account"),
            ],
        ),
        backgroundColor: Colors.white,
        body: screenList[navigationIndex],
    );
  }
}