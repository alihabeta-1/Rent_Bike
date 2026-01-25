import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyWalletBody extends StatelessWidget {
  const MyWalletBody({super.key});

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
            'My Wallet',
            style: Styles.textStyle30.copyWith(
              color: Color(0xff3D003E),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          height: MediaQuery.sizeOf(context).height,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 255),
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
          top: 160,
          child: Image(
            image: AssetImage(
              'assets/images/Weekly Pass.png',
            ),
          ),
        ),
        Positioned(
          top: 330,
          left: 227,
          child: Image(
            image: AssetImage(
              'assets/images/purchaseButton.png',
            ),
          ),
        ),
        Positioned(
          top: 230,
          left: 282,
          child: Text(
            '\$ 24.99',
            style: Styles.textStyle21.copyWith(
              color: Color(0xff3D003E),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 430,
            left: 32,
            right: 32,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Balance',
                        style: Styles.textStyle21.copyWith(
                          color: Color(0xff3D003E),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '\$ 10.50',
                        style: Styles.textStyle21.copyWith(
                          color: Color(0xff3D003E),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 24,
                      ),
                      child: Container(
                        height: 40,
                        width: 114,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                        ),
                        child: Text(
                          'Top Up',
                          style: Styles.textStyle15
                              .copyWith(
                                color: const Color(
                                  0xff3D003E,
                                ),
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).push('/PaymentView');
                },
                child: Row(
                  children: [
                    Text(
                      'Payment',
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
