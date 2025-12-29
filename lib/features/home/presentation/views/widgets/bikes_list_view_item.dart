import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BikesListViewItem extends StatelessWidget {
  const BikesListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SizedBox(
        width: 322,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24),
              Center(
                child: Image(
                  image: AssetImage(
                    'assets/images/bike.png',
                  ),
                ),
              ),
              SizedBox(height: 26),
              Container(
                margin: const EdgeInsets.only(left: 22),
                width: 196,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff2AF598),
                      Color(0xff009EFD),
                    ],
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
                          style: Styles.textStyle21
                              .copyWith(
                                color: Color(0xff3D003E),
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 17),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  'Haibike Sduro FullSeven',
                  style: Styles.textStyle18.copyWith(
                    color: Color(0xff3D003E),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  '1 Available',
                  style: Styles.textStyle18.copyWith(
                    color: Color(0xff3D003E),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
