import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonImgWidget extends StatelessWidget {
  const ButtonImgWidget({
    super.key,
    required this.imageurl,
    required this.route,
  });

  final String imageurl;
  final String route;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(route);
      },
      child: Image(
        image: AssetImage(imageurl),
        width: double.infinity,
      ),
    );
  }
}
