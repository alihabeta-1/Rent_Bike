import 'package:bikes_rental_app/core/utils/widgets/country_code_dropdown.dart';
import 'package:flutter/material.dart';

class PhoneNumWidget extends StatelessWidget {
  const PhoneNumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 18,
        right: 18,
        top: 32,
      ),
      child: Row(
        children: [
          Expanded(child: CountryCodeDropdown()),
          const SizedBox(width: 20),
          Expanded(
            flex: 3,
            child: TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.5,
                  ),
                ),
                hintText: 'Phone Number',
                hintStyle: TextStyle(color: Colors.grey),
              ),
              keyboardType: TextInputType.phone,
            ),
          ),
        ],
      ),
    );
  }
}
