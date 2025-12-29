import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/search_box.dart';
import 'package:bikes_rental_app/features/home/presentation/views/widgets/search_results_box.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage(
              'assets/images/Rectangle.png',
            ),
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              top: 48,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Color(0xff3D003E),
                  ),
                ),
                SizedBox(width: 110),
                Text(
                  'Search',
                  style: Styles.textStyle21.copyWith(
                    color: Color(0xff3D003E),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SearchResultsBox(),
          SearchBox(),
        ],
      ),
    );
  }
}
