import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DataCard extends StatelessWidget {
  const DataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 570),
      child: SizedBox(
        height: 220,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: -20,
              bottom: -40,
              child: Transform.translate(
                offset: const Offset(-40, 0),
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 110,
                  ),
                  child: Image.asset(
                    'assets/images/bike.png',
                    width: 260,
                    height: 151,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                top: 45,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Haibike Sduro FullSeven",
                    style: Styles.textStyle15.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Color(0xff3D003E),
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.end,
                    crossAxisAlignment:
                        CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Baseline(
                        baseline: 20,
                        baselineType:
                            TextBaseline.alphabetic,
                        child: Text(
                          "Distance ",
                          style: Styles.textStyle15
                              .copyWith(
                                fontWeight:
                                    FontWeight.normal,
                                color: Color(0xff3D003E),
                              ),
                        ),
                      ),
                      Baseline(
                        baseline: 20,
                        baselineType:
                            TextBaseline.alphabetic,
                        child: Text(
                          "150m",
                          style: Styles.textStyle21
                              .copyWith(
                                fontWeight: FontWeight.w600,
                                color: Color(0xff3D003E),
                              ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(
                        context,
                      ).push('/Map3View');
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 7,
                      ),
                      child: Container(
                        width: 104,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(
                            0.5,
                          ),
                          borderRadius:
                              BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            'Continue',
                            style: Styles.textStyle15
                                .copyWith(
                                  fontWeight:
                                      FontWeight.w600,
                                  color: Color(0xff3D003E),
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
