import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image(
            height: 597,
            width: double.infinity,
            image: AssetImage('assets/images/Locate.png'),
          ),
          Text(
            'Locate',
            style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.bold,
              color: Color(0xff3D003E),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 51,
              left: 51,
              bottom: 51,
              top: 24,
            ),
            child: Text(
              'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.',
              style: Styles.textStyle21.copyWith(
                fontWeight: FontWeight.normal,
                color: Color(0xff3D003E),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 32,
              left: 32,
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    context.push('/');
                  },
                  child: Text(
                    'Skip',
                    style: Styles.textStyle15.copyWith(
                      color: Color(0xff3D003E),
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: Color(0xff3D003E),
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: Color(0xffC4C4C4),
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: Color(0xffC4C4C4),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    context.push('');
                  },
                  child: Text(
                    'Next',
                    style: Styles.textStyle15.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff3D003E),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
