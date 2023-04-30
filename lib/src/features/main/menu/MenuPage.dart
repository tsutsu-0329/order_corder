import 'package:flutter/material.dart';
import 'package:myapp/src/constants/colors.dart';
import 'package:myapp/src/parts/scrollButton.dart';
import 'package:myapp/src/features/main/menu/MenuContents.dart';

class MenuPage extends StatefulWidget {
  static const menu = ["drink", "food", "shisha", "special", "Elon"];

  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => MenuPageState();
}

class MenuPageState extends State<MenuPage> {
  List<String> menu = MenuPage.menu;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(
        bottom: 32,
      ),
      children: [
        Container(
          height: 40,
          padding: const EdgeInsets.only(left: 20),
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: menu
                  .map((item) => (Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: (scrollButton(key: UniqueKey(), text: item)),
                      )))
                  .toList()),
        ),
        // アイテムの表示
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: const Text(
                  "Alcohol",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 28.0,
                  ),
                ),
              ),
              GridView.extent(
                shrinkWrap: true, // これを追加
                maxCrossAxisExtent: 180, // アイテムの高さを200に設定
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: const [
                  MenuContents(),
                  MenuContents(),
                  MenuContents(),
                  MenuContents(),
                ], // 列数を2に設定
              )
            ],
          ),
        ),
        // メニュー２
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: const Text(
                  "Soft drink",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 28.0,
                  ),
                ),
              ),
              GridView.extent(
                shrinkWrap: true, // これを追加
                maxCrossAxisExtent: 180, // アイテムの高さを200に設定
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: const [
                  MenuContents(),
                  MenuContents(),
                  MenuContents(),
                  MenuContents(),
                ], // 列数を2に設定
              )
            ],
          ),
        ),
      ],
    );
  }
}
