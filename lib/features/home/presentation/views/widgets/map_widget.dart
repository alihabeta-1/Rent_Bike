import 'package:bikes_rental_app/features/home/presentation/views/widgets/build_marker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  final LatLng center = const LatLng(26.7110, -80.0647);

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: center,
        initialZoom: 14,
      ),
      children: [
        TileLayer(
          urlTemplate:
              'https://a.basemaps.cartocdn.com/light_all/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),

        GestureDetector(
          onTap: () {
            context.push('/Map2View');
          },
          child: CircleLayer(
            circles: [
              CircleMarker(
                point: center,
                radius: 250,
                color: Colors.cyan.withOpacity(0.25),
                borderStrokeWidth: 0,
              ),
            ],
          ),
        ),

        MarkerLayer(
          markers: [
            buildMarker(center, 35),
            buildMarker(
              LatLng(
                center.latitude + 0.005,
                center.longitude + 0.003,
              ),
              30,
            ),
            buildMarker(
              LatLng(
                center.latitude - 0.006,
                center.longitude + 0.002,
              ),
              30,
            ),
            buildMarker(
              LatLng(
                center.latitude + 0.004,
                center.longitude - 0.004,
              ),
              30,
            ),
            buildMarker(
              LatLng(
                center.latitude - 0.005,
                center.longitude - 0.003,
              ),
              30,
            ),
          ],
        ),
      ],
    );
  }
}
