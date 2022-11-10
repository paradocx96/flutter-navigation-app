import 'package:flutter/material.dart';
import 'package:navigation_app/screens/Customer.dart';
import 'package:navigation_app/screens/Home.dart';
import 'package:navigation_app/screens/LandingPage.dart';
import 'package:navigation_app/screens/Product.dart';
import 'package:navigation_app/screens/Setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation App',
      debugShowCheckedModeBanner: false,
      initialRoute: LandingPage.routeName,
      routes: {
        LandingPage.routeName: (context) => LandingPage(),
        // Home.routeName: (context) => Home(),
        // Customer.routeName: (context) => Customer(),
        // Product.routeName: (context) => Product(),
        // Setting.routeName: (context) => Setting(),
      },
    );
  }
}
