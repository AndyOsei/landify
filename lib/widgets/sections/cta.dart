import 'package:flutter/material.dart';
import 'package:landify/app_theme.dart';
import 'package:landify/values/values.dart';
import 'package:landify/widgets/navbar.dart';

class Cta extends StatelessWidget {
  const Cta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    final ctaWidth = size.width * 0.7;

    return ClipRRect(
      child: Container(
        width: size.width,
        height: size.height / 2,
        color: AppColors.turquoise,
        child: Center(
          child: SizedBox(
            width: ctaWidth,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: ctaWidth * 0.45,
                  padding: const EdgeInsets.symmetric(vertical: 68.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Manage your projects from your mobile',
                        style: textTheme.headline2,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Download the app to manage your projects, keep track of '
                        'the progress and complete tasks without procastinating. '
                        'track and complete on time!',
                        style: lead1,
                      ),
                      const SizedBox(height: 48),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Get the App', style: textTheme.subtitle2),
                          const SizedBox(height: 8),
                          const ImageLinks()
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: ctaWidth * 0.45,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Align(
                        alignment: const Alignment(-0.7, -0.99),
                        child: SizedBox(
                          width: (ctaWidth * 0.4) * 0.5,
                          child: Image.asset(ImagePath.phoneMockup2),
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0.8, 1),
                        child: Transform.translate(
                          offset: const Offset(0.0, 80.0),
                          child: SizedBox(
                            width: (ctaWidth * 0.4) * 0.5,
                            child: Image.asset(ImagePath.phoneMockup),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
