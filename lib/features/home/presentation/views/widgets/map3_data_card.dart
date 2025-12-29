import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Map3DataCard extends StatelessWidget {
  const Map3DataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 650,
        left: 32,
        right: 32,
      ),
      child: SizedBox(
        child: Stack(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Per 30 mins',
                      style: Styles.textStyle13.copyWith(
                        color: Color(0xff3D003E),
                      ),
                    ),
                    Text(
                      '\$ 0.50',
                      style: Styles.textStyle21.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Color(0xff3D003E),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      'Distance',
                      style: Styles.textStyle13.copyWith(
                        color: Color(0xff3D003E),
                      ),
                    ),
                    Text(
                      '0.86 m',
                      style: Styles.textStyle21.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Color(0xff3D003E),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Estimated Time',
                      style: Styles.textStyle13.copyWith(
                        color: Color(0xff3D003E),
                      ),
                    ),
                    Text(
                      '8 mins',
                      style: Styles.textStyle21.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Color(0xff3D003E),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
