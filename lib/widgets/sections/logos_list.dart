import 'package:flutter/material.dart';
import 'package:landify/values/values.dart';

class LogosList extends StatelessWidget {
  const LogosList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      // color: Colors.red,
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildBorder(size),
          const SizedBox(height: 24),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(child: Image.asset(ImagePath.airbnbLogo)),
              const SizedBox(width: 60),
              Flexible(child: Image.asset(ImagePath.hubspotLogo)),
              const SizedBox(width: 60),
              Flexible(child: Image.asset(ImagePath.googleLogo)),
              const SizedBox(width: 60),
              Flexible(child: Image.asset(ImagePath.microsoftLogo)),
              const SizedBox(width: 60),
              Flexible(child: Image.asset(ImagePath.walmartLogo)),
              const SizedBox(width: 60),
              Flexible(child: Image.asset(ImagePath.fedexLogo)),
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
      width: size.width * 0.7,
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
