import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PaymentBody extends StatelessWidget {
  const PaymentBody({super.key});

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
          top: 59,
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
          left: 158,
          top: 65,
          child: Text(
            'Payment',
            style: Styles.textStyle21.copyWith(
              color: Color(0xff3D003E),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          height: MediaQuery.sizeOf(context).height,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 180),
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
          child: Column(),
        ),
        Positioned(
          top: 110,
          child: Image(
            image: AssetImage(
              'assets/images/master_card.png',
            ),
          ),
        ),
        Positioned(
          top: 295,
          left: 54,
          child: Text(
            '\$ 10.50',
            style: Styles.textStyle30.copyWith(
              color: Color(0xff3D003E),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 370,
            left: 32,
            right: 32,
          ),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      'Apple Pay',
                      style: Styles.textStyle21.copyWith(
                        color: Color(0xff3D003E),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.apple, size: 45),
                    SizedBox(width: 8),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Divider(),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  GoRouter.of(
                    context,
                  ).push('/PaymentOptions');
                },
                child: Row(
                  children: [
                    Text(
                      'Payment Options',
                      style: Styles.textStyle21.copyWith(
                        color: Color(0xff3D003E),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(),
            ],
          ),
        ),
      ],
    );
  }
}
