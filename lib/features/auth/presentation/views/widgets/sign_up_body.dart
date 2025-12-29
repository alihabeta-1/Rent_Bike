import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:bikes_rental_app/features/auth/presentation/views/widgets/button_img_widget.dart';
import 'package:bikes_rental_app/features/auth/presentation/views/widgets/description_for_page.dart';
import 'package:bikes_rental_app/features/auth/presentation/views/widgets/phone_num_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

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
                      GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: Text(
                          '  Log in ',
                          style: Styles.textStyle21
                              .copyWith(color: Colors.grey),
                        ),
                      ),
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.replace(
                                '/SignUpPage',
                              );
                            },
                            child: Text(
                              '  Sign up',
                              style: Styles.textStyle30
                                  .copyWith(
                                    color: const Color(
                                      0xff3D003E,
                                    ),
                                  ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 18,
                              top: 4,
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
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height,
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
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 18,
                          right: 18,
                          top: 24,
                          bottom: 24,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Your email',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                      PhoneNumWidget(),
                      const SizedBox(height: 32),
                      DescriptionForPage(
                        description:
                            'Sign up with your e-mail and phone number',
                      ),
                      SizedBox(height: 171),
                      ButtonImgWidget(
                        imageurl:
                            'assets/images/sign_up_button.png',
                        route: '/VerificationPage',
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
