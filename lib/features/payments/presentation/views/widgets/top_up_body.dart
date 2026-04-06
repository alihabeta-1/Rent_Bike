import 'package:bikes_rental_app/core/utils/custom_button.dart';
import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopUpBody extends StatefulWidget {
  const TopUpBody({super.key});

  @override
  State<TopUpBody> createState() => _TopUpBodyState();
}

class _TopUpBodyState extends State<TopUpBody> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
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
            color: const Color(0xff3D003E),
          ),
        ),

        Positioned(
          left: 158,
          top: 70,
          child: Text(
            'Top Up',
            style: Styles.textStyle21.copyWith(
              color: const Color(0xff3D003E),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          height: MediaQuery.sizeOf(context).height,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 135),
          padding: const EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 24,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  buildItem(index: 0, text: '\$5'),
                  buildItem(index: 1, text: '\$10'),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  buildItem(index: 2, text: '\$25'),
                  buildItem(index: 3, text: '\$50'),
                ],
              ),
              SizedBox(height: 55),
              Row(
                children: [
                  Text(
                    'MasterCard',
                    style: Styles.textStyle21.copyWith(
                      color: Color(0xff3D003E),
                    ),
                  ),
                  Spacer(),
                  Image(
                    image: AssetImage(
                      'assets/images/master_logo.png',
                    ),
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.grey,
                  ),
                ],
              ),
              Divider(),
            ],
          ),
        ),
        Positioned(
          top: 750,
          left: 32,
          child: CustomButton(
            onPressed: () {},
            text: 'Top Up',
            borderRadius: BorderRadius.circular(32),
            backgroundColor: const Color(0xff21E3A3),
            textColor: const Color(0xff3D003E),
            fontSize: 21,
            height: 65,
            width: 350,
            style: const TextStyle(),
          ),
        ),
      ],
    );
  }

  Widget buildItem({
    required int index,
    required String text,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 121,
        width: 163,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          border: selectedIndex == index
              ? Border.all(
                  color: const Color(0xff21E3A3),
                  width: 3,
                )
              : null,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 20,
              spreadRadius: 2,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 32,
              color: Color(0xff3D003E),
              fontWeight: selectedIndex == index
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
