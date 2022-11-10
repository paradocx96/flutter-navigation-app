import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  static String routeName = "/product";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Center(
          child: Text(
            'Product',
            style: TextStyle(fontSize: 60),
          ),
        ),
      ],
    );
  }
}
