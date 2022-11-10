import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  static String routeName = "/setting";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Center(
          child: Text(
            'Setting',
            style: TextStyle(fontSize: 60),
          ),
        ),
      ],
    );
  }
}
