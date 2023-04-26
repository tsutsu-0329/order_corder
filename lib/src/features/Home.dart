import 'package:flutter/material.dart';
import 'package:myapp/src/constants/colors.dart';
import 'package:myapp/src/features/firstPage/firstPage.dart';
import 'package:myapp/src/parts/button.dart';
import 'package:myapp/src/features/main/MenuContents.dart';
import 'package:myapp/src/parts/scrollButton.dart';
import 'package:myapp/src/features/firstPage/firstPage.dart';

class Home extends StatelessWidget {
  static const menu = ["drink", "food", "shisha", "special", "Elon"];

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: FirstPage(),
    );
  }
}
