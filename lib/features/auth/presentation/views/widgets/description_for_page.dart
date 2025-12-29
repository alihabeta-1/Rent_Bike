import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DescriptionForPage extends StatelessWidget {
  const DescriptionForPage({
    super.key,
    required this.description,
    this.style,
    this.opacity,
  });

  final String description;
  final TextStyle? style;
  final double? opacity;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity ?? 0.3,
      child: Text(
        description,
        style:
            style ??
            Styles.textStyle16.copyWith(
              color: const Color(0xff3D003E),
            ),
      ),
    );
  }
}
