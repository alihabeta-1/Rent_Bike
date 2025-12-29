import 'package:bikes_rental_app/features/home/presentation/views/report_view.dart';
import 'package:bikes_rental_app/features/home/presentation/views/scan_view.dart';
import 'package:flutter/material.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/map_widget.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/profile_avatar.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/bottom_nav.dart';

class MapView extends StatefulWidget {
  const MapView({super.key});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
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
