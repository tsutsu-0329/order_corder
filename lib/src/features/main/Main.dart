import 'package:flutter/material.dart';
import 'package:myapp/src/constants/colors.dart';
import 'package:myapp/src/parts/button.dart';
import 'package:myapp/src/features/main/MenuContents.dart';
import 'package:myapp/src/parts/scrollButton.dart';
import 'package:myapp/src/features/appBar/appBar.dart';

class Main extends StatefulWidget {
  static const menu = ["drink", "food", "shisha", "special", "Elon"];

  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => MainState();
}

class MainState extends State<Main> {
  List<String> menu = Main.menu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(96.0),
        child: HeadBar(),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text("メニュー1"),
              onTap: () {
                // この中にメニューをタップした時の処理を記述する
              },
            ),
            ListTile(
              title: const Text("メニュー2"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("メニュー3"),
              onTap: () {},
            )
          ],
        ),
      ),
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
          // アイテムの表示
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
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
                  children: [
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
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
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
                  children: [
                    MenuContents(),
                    MenuContents(),
                    MenuContents(),
                    MenuContents(),
                  ], // 列数を2に設定
                )
              ],
            ),
          ),
          //メニュー3
          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 32.0),
          //   child: Column(
          //     children: [
          //       Container(
          //         alignment: Alignment.topLeft,
          //         padding: EdgeInsets.symmetric(vertical: 24.0),
          //         child: Text(
          //           "Special",
          //           style: TextStyle(
          //             color: textColor,
          //             fontSize: 28.0,
          //           ),
          //         ),
          //       ),
          //       GridView.extent(
          //         shrinkWrap: true, // これを追加
          //         maxCrossAxisExtent: 180, // アイテムの高さを200に設定
          //         crossAxisSpacing: 16,
          //         mainAxisSpacing: 16,
          //         children: [
          //           MenuContents(),
          //           MenuContents(),
          //           MenuContents(),
          //           MenuContents(),
          //         ], // 列数を2に設定
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
