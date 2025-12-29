import 'package:flutter/material.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({
    super.key,
    required this.imageurl,
  });
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return Image(
      height: 597,
      width: double.infinity,
      image: AssetImage(imageurl),
    );
  }
}
