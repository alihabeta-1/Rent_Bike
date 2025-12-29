import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OnboardingTitleText extends StatelessWidget {
  const OnboardingTitleText({
    super.key,
    required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Styles.textStyle30.copyWith(
        fontWeight: FontWeight.bold,
        color: Color(0xff3D003E),
      ),
    );
  }
}
