import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:bikes_rental_app/features/auth/presentation/views/widgets/button_img_widget.dart';
import 'package:bikes_rental_app/features/auth/presentation/views/widgets/description_for_page.dart';
import 'package:bikes_rental_app/features/auth/presentation/views/widgets/phone_num_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage(
                    'assets/images/Rectangle.png',
                  ),
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 32.0,
                    top: 73,
                  ),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.start,
                    crossAxisAlignment:
                        CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            '  Log in ',
                            style: Styles.textStyle30
                                .copyWith(
                                  color: Color(0xff3D003E),
                                ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 4,
                              left: 18,
                            ),
                            height: 6,
                            width: 48,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          context.push('/SignUpPage');
                        },
                        child: Text(
                          '  Sign up',
                          style: Styles.textStyle21
                              .copyWith(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 170),
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
                  child: Column(
                    children: [
                      PhoneNumWidget(),
                      const SizedBox(height: 32),
                      DescriptionForPage(
                        description:
                            'Log in with your phone number',
                      ),
                      SizedBox(height: 171),
                      ButtonImgWidget(
                        imageurl:
                            'assets/images/log_in_button.png',
                        route: '/HomePage',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
