import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:bikes_rental_app/features/onboarding/presentation/views/widgets/onboarding_circleavatar.dart';
import 'package:bikes_rental_app/features/onboarding/presentation/views/widgets/onboarding_description_text.dart';
import 'package:bikes_rental_app/features/onboarding/presentation/views/widgets/onboarding_image.dart';
import 'package:bikes_rental_app/features/onboarding/presentation/views/widgets/onboarding_title_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Onboarding1View extends StatelessWidget {
  const Onboarding1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          OnboardingImage(
            imageurl: 'assets/images/Locate.png',
          ),
          OnboardingTitleText(title: 'Locate'),
          OnboardingDescriptionText(
            description:
                'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.',
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
                  color1: Color(0xff3D003E),
                  color2: Color(0xffC4C4C4),
                  color3: Color(0xffC4C4C4),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    context.push('/Onboarding2View');
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
