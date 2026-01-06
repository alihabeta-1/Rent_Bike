import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    this.width,
    this.height,
    this.onTap,
  });

  final double? width;
  final double? height;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          'assets/images/profile_image.png',
          width: width ?? 64,
          height: height ?? 64,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
