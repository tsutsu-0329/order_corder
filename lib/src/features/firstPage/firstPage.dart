import 'package:flutter/material.dart';
import 'package:myapp/src/constants/colors.dart';
import 'package:myapp/src/features/main/Main.dart';
import 'package:myapp/src/parts/button.dart';
import 'package:myapp/src/features/main/MenuContents.dart';
import 'package:myapp/src/parts/scrollButton.dart';
import 'package:myapp/src/features/appBar/appBar.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 120.0, horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                  color: textColor,
                  fontSize: 32,
                ),
              ),
              Text(
                "to",
                style: TextStyle(
                  color: textColor,
                  fontSize: 32,
                ),
              ),
              Text(
                "Iclub",
                style: TextStyle(
                  color: textColor,
                  fontSize: 88,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 120,
                height: 60,
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
                    "order →",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
