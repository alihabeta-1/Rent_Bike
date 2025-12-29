import 'package:flutter/material.dart';

class SearchResultsBox extends StatelessWidget {
  SearchResultsBox({super.key});

  final List<String> results = [
    "Aberden",
    "Abigar Des",
    "Abualo Ct",
    "Aburel Kalmia",
    'Central Park, New York',
    'Golden Gate Bridge, San Francisco',
    'Eiffel Tower, Paris',
    'Colosseum, Rome',
    'Great Wall of China, China',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 170),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemCount: results.length,

          itemBuilder: (context, index) {
            return Row(
              children: [
                SizedBox(width: 12),
                Text(
                  results[index],
                  style: const TextStyle(
                    fontSize: 21,
                    color: Color(0xff3D003E),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            );
          },

          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 16,
              ),
              child: Divider(
                color: Colors.grey.shade300,
                thickness: 1,
              ),
            );
          },
        ),
      ),
    );
  }
}
