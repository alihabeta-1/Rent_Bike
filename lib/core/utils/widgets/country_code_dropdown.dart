import 'package:flutter/material.dart';

class CountryCodeDropdown extends StatefulWidget {
  const CountryCodeDropdown({super.key});

  @override
  State<CountryCodeDropdown> createState() =>
      _CountryCodeDropdownState();
}

class _CountryCodeDropdownState
    extends State<CountryCodeDropdown> {
  String selectedCode = '+20 🇪🇬';

  final List<String> countryCodes = [
    '+1  🇺🇸',
    '+20 🇪🇬',
    '+44 🇬🇧',
    '+33 🇫🇷',
    '+49 🇩🇪',
    '+91 🇮🇳',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black54),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedCode,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.grey,
          ),
          isExpanded: true,
          items: countryCodes.map((code) {
            return DropdownMenuItem<String>(
              value: code,
              child: Text(
                code,
                style: const TextStyle(fontSize: 16),
              ),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedCode = value!;
            });
          },
        ),
      ),
    );
  }
}
