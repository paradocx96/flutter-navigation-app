import 'package:flutter/material.dart';

import 'Customer.dart';
import 'Home.dart';
import 'Product.dart';
import 'Setting.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  static String routeName = "/";

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late PageController _pageController;

  int currentIndex = 0;
  final screens = [
    const Home(),
    const Customer(),
    const Product(),
    const Setting()
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Navigation App"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Customer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.production_quantity_limits),
            label: 'Product',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        currentIndex: currentIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,
        iconSize: 40,
        onTap: (index) => setState(() => currentIndex = index),
      ),
      body: screens[currentIndex],
    );
  }
}
