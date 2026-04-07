import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BuildContainer extends StatelessWidget {
  const BuildContainer({
    super.key,
    required this.imagePath,
    required this.title,
    required this.num,
    required this.vol,
  });

  final String imagePath;
  final String title;
  final String num;
  final String vol;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 350,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.20),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(imagePath, height: 40),
          const SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Styles.textStyle16.copyWith(
                  color: Colors.grey.shade400,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,

                children: [
                  Text(
                    num,
                    style: Styles.textStyle30.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff3D003E),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    vol,
                    style: Styles.textStyle18.copyWith(
                      color: Color(0xff3D003E),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
