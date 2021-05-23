import 'package:flutter/material.dart';
import 'package:landify/values/values.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 72.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Logo(),
                const SizedBox(width: 30.0),
                Flexible(child: _buildItems(textTheme)),
              ],
            ),
          ),
          const Flexible(child: ImageLinks()),
        ],
      ),
    );
  }

  Row _buildItems(TextTheme textTheme) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('About', style: textTheme.bodyText2),
        const SizedBox(width: 30.0),
        Text('Products', style: textTheme.bodyText2),
        const SizedBox(width: 30.0),
        Text('Blog', style: textTheme.bodyText2),
        const SizedBox(width: 30.0),
        Text('Jobs', style: textTheme.bodyText2),
        const SizedBox(width: 30.0),
        Flexible(child: _buildMore(textTheme)),
      ],
    );
  }

  Row _buildMore(TextTheme textTheme) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('More', style: textTheme.bodyText2),
        const Padding(
          padding: EdgeInsets.only(bottom: 4.0),
          child: Icon(Icons.expand_more, size: 20.0),
        ),
      ],
    );
  }
}

class ImageLinks extends StatelessWidget {
  const ImageLinks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(ImagePath.googlePlay),
        const SizedBox(width: 12.0),
        Image.asset(ImagePath.appStore),
      ],
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(ImagePath.logo),
        const SizedBox(width: 10.0),
        Text('Landify', style: textTheme.subtitle1),
      ],
    );
  }
}
