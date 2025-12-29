import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key, this.width, this.height});

  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/AppDrawer');
      },
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
