import 'package:flutter/material.dart';
import 'package:myapp/src/constants/colors.dart';

class OrderContents extends StatelessWidget {
  final String text;
  const OrderContents({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return (Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: textColor,
            fontSize: 12,
          ),
        ),
        const Text(
          "×2",
          style: TextStyle(
            color: textColor,
            fontSize: 12,
          ),
        ),
      ],
    ));
  }
}
