import 'package:flutter/material.dart';
import 'package:landify/values/values.dart';
import 'package:landify/widgets/navbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          NavBar(),
        ],
      ),
    );
  }
}
