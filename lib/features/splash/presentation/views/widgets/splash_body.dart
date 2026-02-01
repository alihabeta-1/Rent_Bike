import 'package:bikes_rental_app/core/utils/custom_Button.dart';
import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/Background.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(
                'assets/images/Shape.png',
                width: 200,
                height: 200,
              ),
              const Spacer(),
              CustomButton(
                height: 70,
                width: 350,
                backgroundColor: Colors.white,
                textColor: Color(0xff3D003E),
                text: 'Get Started',
                style: Styles.textStyle21.copyWith(),
                onPressed: () {
                  GoRouter.of(context).push('/PaymentView');
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: Styles.textStyle15.copyWith(
                      color: Color(0xff3D003E),
                    ),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      context.push('/LoginPage');
                    },
                    child: Text(
                      'Log In',
                      style: Styles.textStyle15.copyWith(
                        color: Color(0xff3D003E),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
