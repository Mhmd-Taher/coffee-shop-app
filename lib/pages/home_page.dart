import 'package:coffe_shop_app/components/bottom_nav_bar.dart';
import 'package:coffe_shop_app/const.dart';
import 'package:coffe_shop_app/pages/cart_page.dart';
import 'package:coffe_shop_app/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.home),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.brown,
      ),
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTapChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
      drawer: Drawer(
        backgroundColor: backgroundColor,
        elevation: 0,
        child: ListView(
          padding: EdgeInsets.all(25),
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                "assets/images/espresso.png",
                // fit: BoxFit.contain,
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text("About"),
              leading: Icon(Icons.info),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
