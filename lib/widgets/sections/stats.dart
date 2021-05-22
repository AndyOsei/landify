import 'package:flutter/material.dart';
import 'package:landify/app_theme.dart';
import 'package:landify/values/values.dart';

class Stats extends StatelessWidget {
  const Stats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: size.width / 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Our 18 years of achievements',
                  style: textTheme.headline2,
                ),
                const SizedBox(height: 8),
                Text('With our super powers we have reached this',
                    style: lead1),
              ],
            ),
          ),
          const SizedBox(width: 30),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  StatsSegment(
                    icon: ImagePath.featureIcon1,
                    title: '10,000+',
                    subtitle: 'Downloads per day',
                  ),
                  SizedBox(width: 30),
                  StatsSegment(
                    icon: ImagePath.featureIcon4,
                    title: '2 Million',
                    subtitle: 'Users',
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  StatsSegment(
                    icon: ImagePath.featureIcon5,
                    title: '500+',
                    subtitle: 'Clients',
                  ),
                  SizedBox(width: 90),
                  StatsSegment(
                    icon: ImagePath.featureIcon7,
                    title: '400',
                    subtitle: 'Countries',
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class StatsSegment extends StatelessWidget {
  const StatsSegment({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(icon),
        const SizedBox(width: 16),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: textTheme.headline4),
            Text(subtitle, style: textTheme.bodyText1),
          ],
        ),
      ],
    );
  }
}
