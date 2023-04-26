import 'package:flutter/material.dart';
import 'package:myapp/src/constants/colors.dart';
import 'package:myapp/src/parts/button.dart';
import 'package:myapp/src/features/main/MenuContents.dart';
import 'package:myapp/src/parts/scrollButton.dart';
import 'package:myapp/src/features/appBar/appBar.dart';

class ConfirmCart extends StatefulWidget {
  static const menu = ["drink", "food", "shisha", "special", "Elon"];

  const ConfirmCart({Key? key}) : super(key: key);

  @override
  OrderButtonState createState() => OrderButtonState();
}

class OrderButtonState extends State<ConfirmCart> {
  bool isTap = false;
  List<String> menu = ConfirmCart.menu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: HeadBar(),
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
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(32.0),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Cart",
                            style: TextStyle(color: textColor, fontSize: 28.0),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 32.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("アサヒスーパードライ",
                                      style: TextStyle(
                                          color: textColor, fontSize: 20.0)),
                                  Text(
                                    "×3",
                                    style: TextStyle(
                                        color: textColor, fontSize: 20.0),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("一番搾り",
                                      style: TextStyle(
                                          color: textColor, fontSize: 20.0)),
                                  Text(
                                    "×1",
                                    style: TextStyle(
                                        color: textColor, fontSize: 20.0),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("コカ・コーラ",
                                      style: TextStyle(
                                          color: textColor, fontSize: 20.0)),
                                  Text(
                                    "×3",
                                    style: TextStyle(
                                        color: textColor, fontSize: 20.0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  AnimatedPositioned(
                    height: isTap ? 300 : 100,
                    duration: const Duration(seconds: 2),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isTap = !isTap;
                        });
                      },
                      child: Container(
                        color: subButtonColor,
                        height: 140,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              isTap = !isTap;
                            });
                          },
                          child: Text(
                            "tap to order",
                            style: TextStyle(
                              color: textColor,
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
