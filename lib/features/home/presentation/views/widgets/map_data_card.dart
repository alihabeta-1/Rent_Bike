import 'package:flutter/material.dart';

class MapDataCard extends StatelessWidget {
  const MapDataCard({
    super.key,
    required this.height,
    required this.width,
  });

  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: width,
      width: width,
      margin: const EdgeInsets.only(top: 600),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image(
        image: AssetImage('assets/images/Card_map.png'),
      ),
    );
  }
}
