import 'package:flutter/material.dart';
import 'package:landify/values/values.dart';
import 'package:landify/widgets/navbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: const [
          Hero(),
        ],
      ),
    );
  }
}

class Hero extends StatelessWidget {
  const Hero({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: 700,
      decoration: const BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
          image: AssetImage(
            ImagePath.background,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            width: size.width / 1.5,
            child: const NavBar(),
          ),
        ],
      ),
    );
  }
}
