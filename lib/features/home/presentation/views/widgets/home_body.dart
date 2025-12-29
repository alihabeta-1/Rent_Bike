import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/bikes_list_view_item.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true, // ← أهم حاجة

      body: Stack(
        children: [
          /// Background
          Positioned.fill(
            child: Image.asset(
              'assets/images/Background.png',
              fit: BoxFit.cover,
            ),
          ),

          /// Content
          SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(
                  context,
                ).size.height,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 32,
                  left: 24,
                  right: 24,
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    /// Profile Row
                    Row(
                      children: [
                        ProfileAvatar(
                          width: 99,
                          height: 99,
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            GoRouter.of(
                              context,
                            ).push('/SearchView');
                          },
                          icon: Image.asset(
                            'assets/images/search_icon.png',
                            width: 27,
                            height: 27,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8),

                    /// Greeting
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                      ),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello John,',
                            style: Styles.textStyle30
                                .copyWith(
                                  color: Color(0xff3D003E),
                                  fontWeight:
                                      FontWeight.w600,
                                ),
                          ),
                          Text(
                            'Wanna take a ride today?',
                            style: Styles.textStyle18
                                .copyWith(
                                  color: Color(0xff3D003E),
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 33),
                    Container(
                      width: double.infinity,
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          24,
                        ),
                        color: Colors.white.withOpacity(
                          0.5,
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 23,
                              left: 24,
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/weather_img.png',
                                ),
                                SizedBox(width: 24),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(
                                        top: 26,
                                      ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '18°',
                                            style: Styles
                                                .textStyle30
                                                .copyWith(
                                                  color: Color(
                                                    0xff3D003E,
                                                  ),
                                                ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            'Sunny',
                                            style: Styles
                                                .textStyle18
                                                .copyWith(
                                                  color: Color(
                                                    0xff3D003E,
                                                  ),
                                                ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Marbella Dr',
                                        style: Styles
                                            .textStyle18
                                            .copyWith(
                                              color: Color(
                                                0xff3D003E,
                                              ),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 18),
                          Container(
                            height: 53,
                            decoration: BoxDecoration(
                              color: Color(0xffD1FFEF),
                              borderRadius:
                                  BorderRadius.only(
                                    topLeft:
                                        Radius.circular(30),
                                    topRight:
                                        Radius.circular(30),
                                    bottomLeft:
                                        Radius.circular(24),
                                    bottomRight:
                                        Radius.circular(24),
                                  ),
                            ),
                            child: Center(
                              child: Text(
                                '28 September, Wednesday',
                                style: Styles.textStyle18
                                    .copyWith(
                                      color: Color(
                                        0xff3D003E,
                                      ),
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 40),

                    /// Near You Header
                    Row(
                      children: [
                        Text(
                          'Near You',
                          style: Styles.textStyle21
                              .copyWith(
                                color: Color(0xff3D003E),
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            GoRouter.of(
                              context,
                            ).push('/MapView');
                          },
                          child: Text(
                            'Browse Map',
                            style: Styles.textStyle18
                                .copyWith(
                                  color: Color(0xff3D003E),
                                ),
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: Color(0xff3D003E),
                        ),
                      ],
                    ),

                    SizedBox(height: 16),

                    /// Horizontal List
                    SizedBox(
                      height: 324,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return BikesListViewItem();
                        },
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
