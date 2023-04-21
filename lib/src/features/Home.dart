import 'package:flutter/material.dart';
import 'package:myapp/src/constants/colors.dart';
import 'package:myapp/src/parts/button.dart';
import 'package:myapp/src/parts/menuContents.dart';
import 'package:myapp/src/parts/scrollButton.dart';
import 'package:myapp/src/features/appBar/appBar.dart';

class Home extends StatelessWidget {
  static const menu = ["drink", "food", "shisha", "special", "Elon"];

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      //appBar:AppBar(),
      body: Column(
        children: [
          Container(
            height: 40,
            padding: EdgeInsets.only(left: 20),
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: menu
                    .map((item) => (Container(
                          child: (scrollButton(key: UniqueKey(), text: item)),
                          margin: EdgeInsets.only(right: 8),
                        )))
                    .toList()),
          ),
          menuContents(text: "alchol"),
        ],
      ),
    );
  }
}
