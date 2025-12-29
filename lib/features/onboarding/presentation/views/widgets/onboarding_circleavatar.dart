import 'package:flutter/material.dart';

class OnboardingCircleavatar extends StatelessWidget {
  const OnboardingCircleavatar({
    super.key,
    required this.color1,
    required this.color2,
    required this.color3,
  });

  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(radius: 6, backgroundColor: color1),
        SizedBox(width: 8),
        CircleAvatar(radius: 6, backgroundColor: color2),
        SizedBox(width: 8),
        CircleAvatar(radius: 6, backgroundColor: color3),
      ],
    );
  }
}
