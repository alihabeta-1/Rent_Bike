import 'package:bikes_rental_app/features/home/presentation/views/report_view.dart';
import 'package:bikes_rental_app/features/home/presentation/views/scan_view.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/bottom_nav.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/map3_data_card.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/map_data_card.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/map_widget.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class Map3View extends StatefulWidget {
  const Map3View({super.key});

  @override
  State<Map3View> createState() => _Map3ViewState();
}

class _Map3ViewState extends State<Map3View> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Main screens
          IndexedStack(
            index: _activeIndex,
            children: const [
              MapWidget(),
              ScanView(),
              ReportView(),
            ],
          ),

          /// Profile Avatar
          const Positioned(
            left: 32,
            top: 64,
            child: ProfileAvatar(),
          ),

          if (_activeIndex == 0)
            MapDataCard(height: 143, width: 414),
          if (_activeIndex == 0) Map3DataCard(),

          /// Bottom Nav — reusable
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNav(
              currentIndex: _activeIndex,
              onTap: (index) {
                setState(() {
                  _activeIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
