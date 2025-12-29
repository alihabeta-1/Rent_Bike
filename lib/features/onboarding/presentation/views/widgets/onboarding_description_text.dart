import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OnboardingDescriptionText extends StatelessWidget {
  const OnboardingDescriptionText({
    super.key,
    required this.description,
  });

  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 51,
        left: 51,
        bottom: 51,
        top: 24,
      ),
      child: Text(
        description,
        style: Styles.textStyle21.copyWith(
          fontWeight: FontWeight.normal,
          color: Color(0xff3D003E),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
