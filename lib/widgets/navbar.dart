import 'package:flutter/material.dart';
import 'package:landify/values/values.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72.0,
      child: Row(
        children: [
          Image.asset(ImagePath.logo),
        ],
      ),
    );
  }
}
