import 'package:flutter/material.dart';

class Customer extends StatelessWidget {
  const Customer({Key? key}) : super(key: key);

  static String routeName = "/customer";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Center(
          child: Text(
            'Customer',
            style: TextStyle(fontSize: 60),
          ),
        ),
      ],
    );
  }
}
