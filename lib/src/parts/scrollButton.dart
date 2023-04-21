import 'package:flutter/material.dart';
import 'package:myapp/src/constants/colors.dart';

class scrollButton extends StatelessWidget {
  final String text;
  const scrollButton({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88,
      decoration: BoxDecoration(
        color: subButtonColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
