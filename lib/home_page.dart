import 'package:flutter/material.dart';
import 'package:landify/app_theme.dart';
import 'package:landify/values/values.dart';
import 'package:landify/widgets/navbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.white,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(72.0),
        child: Center(
          child: SizedBox(width: size.width * 0.7, child: const NavBar()),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Hero(),
              LogosList(),
              Features(),
            ],
          ),
        ),
      ),
    );
  }
}

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
              // mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    icon: Image.asset(ImagePath.featureIcon1),
                    title: 'Robust workflow',
                    description: 'Lorem ipsum dolor sit amet, consectetur\n\n'
                        'adipiscing elit. Sed erat nibh tristique ipsum.',
                  ),
                ),
                // const SizedBox(width: 30),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    icon: Image.asset(ImagePath.featureIcon2),
                    title: 'Flexibility',
                    description: 'Lorem ipsum dolor sit amet, consectetur\n\n'
                        'adipiscing elit. Sed erat nibh tristique ipsum.',
                  ),
                ),
                // const SizedBox(width: 30),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    icon: Image.asset(ImagePath.featureIcon3),
                    title: 'User  friendly',
                    description: 'Lorem ipsum dolor sit amet, consectetur\n\n'
                        'adipiscing elit. Sed erat nibh tristique ipsum.',
                  ),
                ),
                // const SizedBox(width: 30),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    icon: Image.asset(ImagePath.featureIcon4),
                    title: 'Multiple layouts',
                    description: 'Lorem ipsum dolor sit amet, consectetur\n\n'
                        'adipiscing elit. Sed erat nibh tristique ipsum.',
                  ),
                ),
                // const SizedBox(width: 30),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    icon: Image.asset(ImagePath.featureIcon5),
                    title: 'Better components',
                    description: 'Lorem ipsum dolor sit amet, consectetur\n\n'
                        'adipiscing elit. Sed erat nibh tristique ipsum.',
                  ),
                ),
                // const SizedBox(width: 30),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    icon: Image.asset(ImagePath.featureIcon6),
                    title: 'Well organised',
                    description: 'Lorem ipsum dolor sit amet, consectetur\n\n'
                        'adipiscing elit. Sed erat nibh tristique ipsum.',
                  ),
                ),
              ],
            ),
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
          const SizedBox(height: 20),
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

class LogosList extends StatelessWidget {
  const LogosList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
    final heroWidth = size.width * 0.7;

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
          const SizedBox(height: 90),
          SizedBox(
            width: heroWidth,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildContent(textTheme),
                const Spacer(),
                SizedBox(child: Image.asset(ImagePath.phoneMockup)),
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
