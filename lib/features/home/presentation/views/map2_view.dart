import 'package:bikes_rental_app/features/home/presentation/views/report_view.dart';
import 'package:bikes_rental_app/features/home/presentation/views/scan_view.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/bottom_nav.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/data_card.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/drawer_widget.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/map_data_card.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/map_widget.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class Map2View extends StatefulWidget {
  const Map2View({super.key});

  @override
  State<Map2View> createState() => _MapViewState();
}

class _MapViewState extends State<Map2View> {
  final LatLng center = LatLng(26.7110, -80.0647);

  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey =
        GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,

      drawer: const DrawerWidget(),

      drawerScrimColor: Colors.black.withOpacity(0.7),
      body: Stack(
        children: [
          IndexedStack(
            index: _activeIndex,
            children: const [
              MapWidget(),
              ScanView(),
              ReportView(),
            ],
          ),

          GestureDetector(
            onTap: () {
              scaffoldKey.currentState!.openDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 32,
                top: 64,
              ),
              child: ProfileAvatar(),
            ),
          ),

          if (_activeIndex == 0)
            Padding(
              padding: const EdgeInsets.only(bottom: 79),
              child: MapDataCard(height: 221, width: 473),
            ),

          if (_activeIndex == 0) DataCard(),

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
