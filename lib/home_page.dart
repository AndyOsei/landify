import 'package:flutter/material.dart';
import 'package:landify/values/values.dart';
import 'package:landify/widgets/navbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Hero(),
              LogosList(),
            ],
          ),
        ),
      ),
    );
  }
}

class LogosList extends StatelessWidget {
  const LogosList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // print('size.width ${size.width}');

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildBorder(size),
          const SizedBox(height: 24),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(ImagePath.airbnbLogo),
              const SizedBox(width: 60),
              Image.asset(ImagePath.hubspotLogo),
              const SizedBox(width: 60),
              Image.asset(ImagePath.googleLogo),
              const SizedBox(width: 60),
              Image.asset(ImagePath.microsoftLogo),
              const SizedBox(width: 60),
              Image.asset(ImagePath.walmartLogo),
              const SizedBox(width: 60),
              Image.asset(ImagePath.fedexLogo),
            ],
          ),
          const SizedBox(height: 24),
          _buildBorder(size),
        ],
      ),
    );
  }

  Container _buildBorder(Size size) {
    return Container(
      height: 0.5,
      width: size.width / 1.5,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFC0CCDA),
            Color(0xFFC0CCDA),
            Color(0xFFC0CCDA),
          ],
          stops: [0.1, 0.6, 0.1],
        ),
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
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    final heroWidth = size.width / 1.5;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
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
            width: heroWidth,
            child: const NavBar(),
          ),
          const SizedBox(height: 90),
          SizedBox(
            width: heroWidth,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 90),
                    Text('Organise Projects.', style: textTheme.headline1),
                    const SizedBox(height: 30),
                    Text('Get more done.', style: textTheme.headline1),
                    const SizedBox(height: 50),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: AppColors.white,
                        backgroundColor: AppColors.purple,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 24,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: Text(
                        'Get Started',
                        style: textTheme.subtitle2!
                            .copyWith(color: AppColors.white),
                      ),
                    )
                  ],
                ),
                Image.asset(ImagePath.phoneMockup),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
