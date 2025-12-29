import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:bikes_rental_app/core/utils/widgets/otp_input.dart';
import 'package:bikes_rental_app/features/auth/presentation/views/widgets/button_img_widget.dart';
import 'package:bikes_rental_app/features/auth/presentation/views/widgets/description_for_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerificationBody extends StatelessWidget {
  const VerificationBody({super.key});

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
                    left: 20.0,
                    top: 64,
                  ),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.start,
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_outlined,
                          color: Color(0xff3D003E),
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                        ),
                        child: Text(
                          'Verification',
                          style: Styles.textStyle30
                              .copyWith(
                                color: Color(0xff3D003E),
                              ),
                        ),
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
                        child: OtpInput(),
                      ),
                      const SizedBox(height: 32),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 47.0,
                          right: 47.0,
                        ),
                        child: DescriptionForPage(
                          description:
                              'Donec viverra eleifend lacus, vitae \n         ullamcorper metus sed.',
                          style: Styles.textStyle15
                              .copyWith(
                                color: Color(0xff3D003E),
                              ),
                          opacity: 1.0,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        '+20 1012345678',
                        style: Styles.textStyle18.copyWith(
                          color: Color(0xff3D003E),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Didn’t receive SMS?',
                        style: Styles.textStyle15.copyWith(
                          color: Color(0xff00FF78),
                        ),
                      ),
                      SizedBox(height: 171),
                      ButtonImgWidget(
                        imageurl:
                            'assets/images/continue_button.png',
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
