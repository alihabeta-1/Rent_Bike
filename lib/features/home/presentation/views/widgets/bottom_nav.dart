import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 143,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 15,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 53),
            child: _bottomIcon(
              index: 0,
              path: 'assets/images/compass.png',
              active: currentIndex == 0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 97,
              right: 97,
            ),
            child: _bottomIcon(
              index: 1,
              path: 'assets/images/lock.png',
              active: currentIndex == 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 53),
            child: _bottomIcon(
              index: 2,
              path: 'assets/images/settings.png',
              active: currentIndex == 2,
            ),
          ),
        ],
      ),
    );
  }

  /// ========= ICON WIDGET =========
  Widget _bottomIcon({
    required int index,
    required String path,
    required bool active,
  }) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          Image.asset(
            path,
            width: 36,
            height: 36,
            color: active
                ? const Color(0xff3D003E)
                : Colors.grey,
          ),
          if (active)
            Container(
              margin: const EdgeInsets.only(top: 6),
              height: 4,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
        ],
      ),
    );
  }
}
