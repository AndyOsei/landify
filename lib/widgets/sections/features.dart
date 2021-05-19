import 'package:flutter/material.dart';
import 'package:landify/app_theme.dart';
import 'package:landify/values/values.dart';

class Features extends StatelessWidget {
  const Features({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 60),
            Text('Tailor-made features', style: textTheme.headline2),
            const SizedBox(height: 20),
            Text(
              'Lorem ipsum is common placeholder text used to demonstrate',
              style: lead1,
            ),
            const SizedBox(height: 8),
            Text(
              'the graphic elements of a document or visual presentation.',
              style: lead1,
            ),
            const SizedBox(height: 48),
            Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    icon: Image.asset(ImagePath.featureIcon1),
                    title: 'Robust workflow',
                    description: 'Lorem ipsum dolor sit amet, consectetur\n'
                        'adipiscing elit. Sed erat nibh tristique ipsum.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    icon: Image.asset(ImagePath.featureIcon2),
                    title: 'Flexibility',
                    description: 'Lorem ipsum dolor sit amet, consectetur\n'
                        'adipiscing elit. Sed erat nibh tristique ipsum.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    icon: Image.asset(ImagePath.featureIcon3),
                    title: 'User  friendly',
                    description: 'Lorem ipsum dolor sit amet, consectetur\n'
                        'adipiscing elit. Sed erat nibh tristique ipsum.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    icon: Image.asset(ImagePath.featureIcon4),
                    title: 'Multiple layouts',
                    description: 'Lorem ipsum dolor sit amet, consectetur\n'
                        'adipiscing elit. Sed erat nibh tristique ipsum.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    icon: Image.asset(ImagePath.featureIcon5),
                    title: 'Better components',
                    description: 'Lorem ipsum dolor sit amet, consectetur\n'
                        'adipiscing elit. Sed erat nibh tristique ipsum.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    icon: Image.asset(ImagePath.featureIcon6),
                    title: 'Well organised',
                    description: 'Lorem ipsum dolor sit amet, consectetur\n'
                        'adipiscing elit. Sed erat nibh tristique ipsum.',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
          ],
        ),
      ],
    );
  }
}

class FeatureItem extends StatelessWidget {
  const FeatureItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
    this.width,
    this.height,
  }) : super(key: key);

  final String title;
  final Widget icon;
  final String description;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: width,
      height: height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          const SizedBox(height: 24),
          Text(title, style: textTheme.headline5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}
