import 'package:flutter/material.dart';
import 'package:myapp/src/constants/colors.dart';
import 'package:myapp/src/features/appBar/appBar.dart';
import 'package:myapp/src/features/main/Main.dart';

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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Main()),
          );
        },
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
