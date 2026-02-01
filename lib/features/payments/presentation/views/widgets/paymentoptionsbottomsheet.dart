import 'package:bikes_rental_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PaymentOptionsBottomSheet extends StatefulWidget {
  const PaymentOptionsBottomSheet({super.key});

  @override
  State<PaymentOptionsBottomSheet> createState() =>
      _PaymentOptionsBottomSheetState();
}

class _PaymentOptionsBottomSheetState
    extends State<PaymentOptionsBottomSheet> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.40,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(28),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 12,
            ),
            child: Column(
              children: [
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payment Options",
                      style: Styles.textStyle21.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.close,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                const Divider(thickness: 0.5),
                Expanded(
                  child: ListView(
                    controller: scrollController,
                    children: [
                      _paymentItem(
                        index: 0,
                        title: "MasterCard",
                        imagePath:
                            'assets/images/master_logo.png',
                      ),
                      const Divider(
                        thickness: 0.5,
                        indent: 65,
                      ),
                      _paymentItem(
                        index: 1,
                        title: "Apple Pay",
                        icon: Icons.apple,
                      ),
                      const Divider(
                        thickness: 0.5,
                        indent: 65,
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Pay with Another Card",
                            style: Styles.textStyle21
                                .copyWith(
                                  color: const Color(
                                    0xff3D003E,
                                  ),
                                ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      const Divider(thickness: 0.5),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _paymentItem({
    required int index,
    required String title,
    IconData? icon,
    String? imagePath,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.only(
        left: 0,
        right: 0,
      ),
      horizontalTitleGap: 16,
      leading: Transform.scale(
        scale: 1.5,
        child: Checkbox(
          value: selectedIndex == index,
          activeColor: const Color(0xff18CEBB),
          side: const BorderSide(
            color: Colors.grey,
            width: 1,
          ),
          onChanged: (_) {
            setState(() {
              selectedIndex = index;
            });
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),

      title: Text(
        title,
        style: Styles.textStyle21.copyWith(
          color: const Color(0xff3D003E),
        ),
      ),

      trailing: imagePath != null
          ? Image.asset(
              imagePath,
              width: 40,
              height: 40,
              fit: BoxFit.contain,
            )
          : Icon(
              icon,
              size: 40,
              color: const Color(0xff3D003E),
            ),
    );
  }
}
