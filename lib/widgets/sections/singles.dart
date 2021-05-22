import 'package:flutter/material.dart';
import 'package:landify/app_theme.dart';
import 'package:landify/values/values.dart';

class Single5 extends StatelessWidget {
  const Single5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 64,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Container(
              width: size.width * 0.25,
              height: size.height / 2,
              decoration: BoxDecoration(
                color: AppColors.purple.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    top: 30,
                    left: (size.width * 0.25) * 0.06,
                    child: Image.asset(ImagePath.phoneMockup),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 30),
          SizedBox(
            width: size.width / 3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Headline', style: textTheme.headline3),
                const SizedBox(height: 30),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing '
                  'elit. Condimentum diam orci pretium a pharetra, '
                  'feugiat cursus. Dictumst risus, sem egestas odio '
                  'cras adipiscing vulputate. Nisi, risus in suscipit non. '
                  'Non commodo volutpat, pharetra, vel.',
                  style: lead1,
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Get Started',
                          style: largeLabel.copyWith(color: AppColors.purple)),
                      const SizedBox(width: 8),
                      Image.asset(ImagePath.arrowRightIcon),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Single6 extends StatelessWidget {
  const Single6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    final singleWidth = size.width * 0.7;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 64.0),
      child: SizedBox(
        width: singleWidth,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: singleWidth * 0.4,
                  child: Text('Enter the world of all fashion trends',
                      style: textTheme.headline3),
                ),
                SizedBox(
                  width: singleWidth * 0.5,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Venenatis scelerisque at quam congue posuere libero in sit '
                    'quam. Consequat, scelerisque non tincidunt sit lectus senectus.',
                    style: lead1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 48),
            Flexible(
              child: SizedBox(
                width: singleWidth,
                height: 400,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset(ImagePath.coverImg),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
