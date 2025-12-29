import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

Marker buildMarker(LatLng point, double size) {
  return Marker(
    point: point,
    width: size,
    height: size,
    child: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          colors: [Color(0xff00e0c6), Color(0xff0098d0)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        border: Border.all(color: Colors.white, width: 3),
      ),
    ),
  );
}
