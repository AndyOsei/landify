import 'package:flutter/material.dart';
import 'package:landify/app_theme.dart';
import 'package:landify/values/values.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      height: size.height - 100,
      color: AppColors.turquoise.shade100,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: const Alignment(-0.57, -0.75),
            child: Image.asset(ImagePath.quoteMark),
          ),
          Align(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Real Stories from\nReal Customers',
                      style: textTheme.headline2,
                    ),
                    const SizedBox(height: 8),
                    Text('Get inspired by these stories.', style: lead1),
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: Testimony(
                        width: size.width * 0.17,
                        icon: ImagePath.hubspotLogo,
                        message:
                            'To quickly start my startup landing page design,'
                            ' I was looking for a landing page UI Kit. Landify is'
                            ' one of the best landing page UI kit'
                            ' I have come across. It’s so flexible,'
                            ' well organised and easily editable.',
                        writtenBy: 'Floyd Miles',
                        jobTitle: 'Vice President, GoPro',
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 30),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Testimony(
                      width: size.width * 0.22,
                      icon: ImagePath.airbnbLogo,
                      message: 'I used landify and created a landing '
                          'page for my startup within a week. The '
                          'Landify UI Kit is simple and highly '
                          'intuitive, so anyone can use it.',
                      writtenBy: 'Jane Cooper',
                      jobTitle: 'CEO, Airbnb',
                    ),
                    const SizedBox(height: 30),
                    Testimony(
                      width: size.width * 0.17,
                      icon: ImagePath.bookMyShowLogo,
                      message: 'Landify saved our time in '
                          'designing my company page.',
                      writtenBy: 'Kristin Watson',
                      jobTitle: 'Co-Founder, BookMyShow',
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}

class Testimony extends StatelessWidget {
  const Testimony({
    Key? key,
    required this.icon,
    required this.message,
    required this.writtenBy,
    required this.jobTitle,
    this.width,
    this.height,
  }) : super(key: key);

  final String icon;
  final String message;
  final String writtenBy;
  final String jobTitle;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(icon),
          const SizedBox(height: 30),
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Image.asset(
                    ImagePath.quoteMark,
                    width: 16,
                    height: 14,
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: width != null ? width! * 0.7 : 100,
                  child: Text(
                    message,
                    softWrap: true,
                    style: lead1.copyWith(
                      letterSpacing: 1.0,
                      height: 1.2,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(writtenBy, style: textTheme.subtitle1),
                Text(
                  jobTitle,
                  style: lead2.copyWith(color: AppColors.gray.shade700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
