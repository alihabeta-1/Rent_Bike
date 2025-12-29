import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 110,
        left: 16,
        right: 16,
      ),
      child: Container(
        height: 148,
        width: 382,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.10),
              blurRadius: 20,
              spreadRadius: 2,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 22,
                bottom: 23,
                top: 25,
              ),
              child: SizedBox(
                height: 35,
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(
                        'assets/images/location_point.png',
                      ),
                    ),
                    SizedBox(width: 22),
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: "Enter destination",
                          hintStyle: TextStyle(
                            color: Color(0xff3D003E),
                            fontSize: 21,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Montserrat',
                          ),
                          border: InputBorder.none,
                          isCollapsed: true,
                        ),
                        style: Styles.textStyle21.copyWith(
                          color: Color(0xff3D003E),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 18,
                top: 20,
              ),
              child: Row(
                children: [
                  Image(
                    image: AssetImage(
                      'assets/images/navigation.png',
                    ),
                  ),
                  SizedBox(width: 22),
                  Text(
                    'Ab',
                    style: Styles.textStyle21.copyWith(
                      color: Color(0xff3D003E),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
