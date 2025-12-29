import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/map_data_card.dart';
import 'package:flutter/material.dart';

class ScanView extends StatelessWidget {
  const ScanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/images/qr.png'),
          fit: BoxFit.cover,
        ),
        Image(
          image: AssetImage('assets/images/Mask.png'),
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 169,
            left: 53,
          ),
          child: Image(
            image: AssetImage(
              'assets/images/Scan Area.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        MapDataCard(height: 100, width: 414),
        Padding(
          padding: const EdgeInsets.only(top: 500),
          child: Center(
            child: Text(
              ' Scan QR code on bike',
              style: Styles.textStyle21.copyWith(
                color: Color(0xff3D003E),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
