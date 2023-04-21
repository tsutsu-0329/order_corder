import 'package:flutter/material.dart';
import 'package:myapp/src/constants/colors.dart';

class menuContents extends StatelessWidget {
  final String text;
  const menuContents({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 24,
          ),
        ),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: contentsColor,
          ),
          child: Text("data"),
        )
      ],
    );
  }
}
