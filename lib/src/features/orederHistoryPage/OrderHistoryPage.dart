import 'package:flutter/material.dart';
import 'package:myapp/src/features/main/Main.dart';
import 'package:myapp/src/parts/scrollButton.dart';
import 'package:myapp/src/constants/colors.dart';

class OrderHistoryPage extends StatefulWidget {
  static const menu = ["drink", "food", "shisha", "special", "Elon"];
  const OrderHistoryPage({super.key});

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  bool _isPressed = false;
  List<String> menu = OrderHistoryPage.menu;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 96.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: menu
                              .map((item) => (Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    child: (scrollButton(
                                      key: UniqueKey(),
                                      text: item,
                                    )),
                                  )))
                              .toList()),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(40.0),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: const Text(
                                    "order History",
                                    style: TextStyle(
                                        color: textColor, fontSize: 28.0),
                                  ),
                                ),
                                Container(
                                    alignment: Alignment.bottomLeft,
                                    padding: const EdgeInsets.only(
                                      bottom: 12.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          "total",
                                          style: TextStyle(
                                              color: textColor, fontSize: 28.0),
                                        ),
                                        Text(
                                          "¥ 3360-",
                                          style: TextStyle(
                                              color: textColor, fontSize: 28.0),
                                        ),
                                      ],
                                    )),
                                Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text("ビールA",
                                              style: TextStyle(
                                                  color: textColor,
                                                  fontSize: 16.0)),
                                          Text(
                                            "×3",
                                            style: TextStyle(
                                                color: textColor,
                                                fontSize: 16.0),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text("ビールB",
                                              style: TextStyle(
                                                  color: textColor,
                                                  fontSize: 16.0)),
                                          Text(
                                            "×1",
                                            style: TextStyle(
                                                color: textColor,
                                                fontSize: 16.0),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text("ピーナッツ",
                                              style: TextStyle(
                                                  color: textColor,
                                                  fontSize: 16.0)),
                                          Text(
                                            "×3",
                                            style: TextStyle(
                                                color: textColor,
                                                fontSize: 16.0),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text("ビールB",
                                              style: TextStyle(
                                                  color: textColor,
                                                  fontSize: 16.0)),
                                          Text(
                                            "×3",
                                            style: TextStyle(
                                                color: textColor,
                                                fontSize: 16.0),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text("ピーナッツ",
                                              style: TextStyle(
                                                  color: textColor,
                                                  fontSize: 16.0)),
                                          Text(
                                            "×3",
                                            style: TextStyle(
                                                color: textColor,
                                                fontSize: 16.0),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text("オレンジジュース",
                                              style: TextStyle(
                                                  color: textColor,
                                                  fontSize: 16.0)),
                                          Text(
                                            "×3",
                                            style: TextStyle(
                                                color: textColor,
                                                fontSize: 16.0),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text("レモンサワー",
                                              style: TextStyle(
                                                  color: textColor,
                                                  fontSize: 16.0)),
                                          Text(
                                            "×1",
                                            style: TextStyle(
                                                color: textColor,
                                                fontSize: 16.0),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        AnimatedPositioned(
          top: !_isPressed ? 532 : -70,
          bottom: 0,
          left: 0,
          right: 0,
          duration: const Duration(milliseconds: 600),
          child: Center(
            child: Center(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: subButtonColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80.0),
                    topRight: Radius.circular(80.0),
                  ),
                ),
                child: !_isPressed
                    ? TextButton(
                        onPressed: () {
                          setState(() {
                            _isPressed = !_isPressed;
                          });
                        },
                        child: const Text(
                          "tap to pay",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 32.0,
                          ),
                        ),
                      )
                    : FutureBuilder(
                        future: Future.delayed(const Duration(seconds: 2), () {
                          return Container(
                            padding: const EdgeInsets.only(top: 250.0),
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Thanks",
                                      style: TextStyle(
                                        color: textColor,
                                        fontSize: 48.0,
                                      ),
                                    ),
                                    Text(
                                      "for",
                                      style: TextStyle(
                                        color: textColor,
                                        fontSize: 48.0,
                                      ),
                                    ),
                                    Text(
                                      "coming!",
                                      style: TextStyle(
                                        color: textColor,
                                        fontSize: 48.0,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 40.0,
                                ),
                                const Text(
                                  "スタッフが伝票を持って来ますので",
                                  style: TextStyle(
                                    color: textColor,
                                    fontSize: 12.0,
                                  ),
                                ),
                                const Text(
                                  "少々お待ちください。",
                                  style: TextStyle(
                                    color: textColor,
                                    fontSize: 12.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 40.0,
                                ),
                                TextButton.icon(
                                  onPressed: () {
                                    setState(() {
                                      _isPressed = !_isPressed;
                                    });
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Main(),
                                      ),
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    color: textColor,
                                  ),
                                  label: const Text(
                                    "back to menu",
                                    style: TextStyle(
                                      color: textColor,
                                      fontSize: 32.0,
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.all<
                                        EdgeInsetsGeometry>(
                                      const EdgeInsets.symmetric(
                                          vertical: 16, horizontal: 24),
                                    ),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        side: const BorderSide(
                                          color: textColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 112.0,
                                vertical: 300.0,
                              ),
                              child: const CircularProgressIndicator(),
                            );
                          } else if (snapshot.hasData) {
                            return snapshot.data;
                          } else {
                            return const SizedBox.shrink();
                          }
                        },
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Positioned(

//           bottom: 120.0,
         
//         ),