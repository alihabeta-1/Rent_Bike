import 'package:bikes_rental_app/core/utils/custom_button.dart';
import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InviteFriendsBody extends StatelessWidget {
  const InviteFriendsBody({super.key});

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
            'Invite Friends',
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
        Positioned(
          top: 160,
          child: Column(
            children: [
              Image(
                image: AssetImage(
                  'assets/images/invitation_card.png',
                ),
              ),
              CustomButton(
                onPressed: () {},
                text: 'E-mail',
                borderRadius: BorderRadius.circular(32),
                backgroundColor: const Color(0xff21E3A3),
                textColor: const Color(0xff3D003E),
                fontSize: 21,
                height: 65,
                width: 350,
                style: const TextStyle(),
              ),
              const SizedBox(height: 12),
              CustomButton(
                onPressed: () {},
                text: 'Contacts',
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
