import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/map_widget.dart';
import 'package:flutter/material.dart';

class ReportView extends StatelessWidget {
  const ReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MapWidget(),
        Container(color: Colors.black.withOpacity(0.45)),
        Padding(
          padding: const EdgeInsets.only(top: 570),
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 55,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff3DFFD5),
                        Color(0xff00C2FF),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 13,
                      left: 35,
                    ),
                    child: Text(
                      'Broken bike',
                      style: Styles.textStyle21.copyWith(
                        color: Color(0xff3D003E),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: 55,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff3DFFD5),
                        Color(0xff00C2FF),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 13,
                      left: 35,
                    ),
                    child: Text(
                      'Unauthorized lock',
                      style: Styles.textStyle21.copyWith(
                        color: Color(0xff3D003E),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
