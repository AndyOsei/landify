import 'package:flutter/material.dart';
import 'package:landify/values/values.dart';

class Heros extends StatelessWidget {
  const Heros({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
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
          const SizedBox(height: 90),
          SizedBox(
            width: size.width * 0.7,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(flex: 2, child: _buildContent(textTheme)),
                Flexible(child: Image.asset(ImagePath.phoneMockup)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _buildContent(TextTheme textTheme) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            style: textTheme.subtitle2!.copyWith(color: AppColors.white),
          ),
        )
      ],
    );
  }
}
