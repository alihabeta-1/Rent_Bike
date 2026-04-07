import 'package:bikes_rental_app/core/utils/custom_button.dart';
import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:bikes_rental_app/features/profile_options/views/widgets/build_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MystatisticsBody extends StatelessWidget {
  const MystatisticsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage(
                'assets/images/Rectangle2.png',
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          left: 16,
          top: 64,
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.pop();
            },
            iconSize: 32,
            color: Color(0xff3D003E),
          ),
        ),
        Positioned(
          left: 32,
          top: 105,
          child: Text(
            'My Statistics',
            style: Styles.textStyle30.copyWith(
              color: Color(0xff3D003E),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          height: MediaQuery.sizeOf(context).height,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 230),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 24,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 180, left: 32),
          child: Column(
            children: [
              BuildContainer(
                imagePath: 'assets/images/clock.png',
                title: 'Duration',
                num: '28',
                vol: 'mins',
              ),
              const SizedBox(height: 24),
              BuildContainer(
                imagePath: 'assets/images/fire.png',
                title: 'Calories',
                num: '34',
                vol: 'cal',
              ),
              const SizedBox(height: 24),
              BuildContainer(
                imagePath:
                    'assets/images/distance_icon.png',
                title: 'Distance',
                num: '3752',
                vol: 'm',
              ),
              const SizedBox(height: 24),
              BuildContainer(
                imagePath: 'assets/images/paper_icon.png',
                title: 'Carbon',
                num: '6',
                vol: 'oz',
              ),
              const SizedBox(height: 70),
              CustomButton(
                onPressed: () {},
                text: 'Share',
                borderRadius: BorderRadius.circular(32),
                backgroundColor: const Color(0xff21E3A3),
                textColor: const Color(0xff3D003E),
                fontSize: 21,
                height: 65,
                width: 350,
                style: const TextStyle(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
