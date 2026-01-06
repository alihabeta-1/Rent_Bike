import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/images/drawer_bar.png'),
        ),
        Positioned(
          top: 64,
          left: 140,
          child: const ProfileAvatar(height: 80, width: 80),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 160,
            left: 130,
          ),
          child: Text(
            'Ali Habeta',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle21.copyWith(
              color: Color(0xff3D003E),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),

        Container(
          height: MediaQuery.sizeOf(context).height,
          width: 360,
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
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              top: 30,
              right: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      Text(
                        'My Wallet',
                        style: Styles.textStyle21.copyWith(
                          color: Color(0xff3D003E),
                        ),
                      ),
                      Spacer(),
                      Text(
                        '\$ 10.50',
                        style: Styles.textStyle21.copyWith(
                          color: Color(0xff3D003E),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'My Statistics',
                      style: Styles.textStyle21.copyWith(
                        color: const Color(0xff3D003E),
                      ),
                    ),
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Invite Friends',
                      style: Styles.textStyle21.copyWith(
                        color: const Color(0xff3D003E),
                      ),
                    ),
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Support',
                      style: Styles.textStyle21.copyWith(
                        color: const Color(0xff3D003E),
                      ),
                    ),
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Settings',
                      style: Styles.textStyle21.copyWith(
                        color: const Color(0xff3D003E),
                      ),
                    ),
                  ),
                ),
                Divider(),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.logout,
                      size: 35,
                      color: Color(0xff3D003E),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Log Out',
                      style: Styles.textStyle21.copyWith(
                        color: Color(0xff3D003E),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
