import 'package:flutter/material.dart';
import 'package:myapp/src/constants/colors.dart';
import 'package:myapp/src/parts/menuContents.dart';

class Button extends StatelessWidget {
  final IconData icon;

  const Button({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        icon: Icon(icon),
        iconSize: 20,
        color: white,
        onPressed: () {
          print('a');
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => menuContents(
          //               text: "AHRp",
          //             )));
        },
      ),
    );
  }
}
