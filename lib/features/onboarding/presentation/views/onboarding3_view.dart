import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:bikes_rental_app/features/onboarding/presentation/views/widgets/onboarding_circleavatar.dart';
import 'package:bikes_rental_app/features/onboarding/presentation/views/widgets/onboarding_description_text.dart';
import 'package:bikes_rental_app/features/onboarding/presentation/views/widgets/onboarding_image.dart';
import 'package:bikes_rental_app/features/onboarding/presentation/views/widgets/onboarding_title_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Onboarding3View extends StatelessWidget {
  const Onboarding3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          OnboardingImage(
            imageurl: 'assets/images/Ride.png',
          ),
          OnboardingTitleText(title: 'Ride'),
          OnboardingDescriptionText(
            description:
                'Culpa qui officia deserunt mollit anim id est laborum.',
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
                    context.push('/HomePage');
                  },
                  child: Text(
                    'Skip',
                    style: Styles.textStyle15.copyWith(
                      color: Color(0xff3D003E),
                    ),
                  ),
                ),
                Spacer(),
                OnboardingCircleavatar(
                  color1: Color(0xffC4C4C4),
                  color2: Color(0xffC4C4C4),
                  color3: Color(0xff3D003E),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    context.push('/LoginPage');
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
