import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, this.width, this.height});

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 22),
      width: 350,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff2AF598), Color(0xff009EFD)],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Center(
          child: Row(
            children: [
              Text(
                'Distance',
                style: TextStyle(
                  color: Color(0xff3D003E),
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(width: 8),
              Text(
                '150 m',
                style: Styles.textStyle21.copyWith(
                  color: Color(0xff3D003E),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
