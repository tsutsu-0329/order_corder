import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:myapp/src/constants/colors.dart';
import 'package:myapp/src/features/sidebar/orderContents.dart';
import 'package:motion_toast/motion_toast.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Container(
        width: 220,
        color: mainColor,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: subButtonColor,
          ),
          height: 440,
          width: 30,
          padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 20.0),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: const Text(
                      "￥ 6,800-",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "注文履歴",
                              style: TextStyle(
                                color: textColor,
                                fontSize: 16.0,
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            Expanded(
                              child: ListView(
                                children: const [
                                  SizedBox(height: 4.0),
                                  OrderContents(text: "ビールA"),
                                  SizedBox(height: 4.0),
                                  OrderContents(text: "ピーナッツ"),
                                  SizedBox(height: 4.0),
                                  OrderContents(text: "ビールB"),
                                  SizedBox(height: 4.0),
                                  OrderContents(text: "ピーナッツ"),
                                  SizedBox(height: 4.0),
                                  OrderContents(text: "オレンジシューズ"),
                                  SizedBox(height: 4.0),
                                  OrderContents(text: "レモンサワー"),
                                  SizedBox(height: 4.0),
                                  OrderContents(text: "ビールA"),
                                  SizedBox(height: 4.0),
                                  OrderContents(text: "レモンサワー"),
                                  SizedBox(height: 4.0),
                                  OrderContents(text: "ピーナッツ"),
                                  SizedBox(height: 4.0),
                                  OrderContents(text: "ビールA"),
                                  SizedBox(height: 4.0),
                                  OrderContents(text: "レモンサワー"),
                                  SizedBox(height: 4.0),
                                  OrderContents(text: "ビールC"),
                                  SizedBox(height: 4.0),
                                  OrderContents(text: "ミックスナッツ"),
                                  SizedBox(height: 4.0),
                                  OrderContents(text: "ビールA"),
                                  SizedBox(height: 4.0),
                                  OrderContents(text: "オレンジジュース"),
                                  SizedBox(height: 4.0),
                                  OrderContents(text: "レモンサワー"),
                                  SizedBox(height: 4.0),
                                  OrderContents(text: "レモンサワー"),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20.0),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const SizedBox(height: 4.0),
                    Container(
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.all(4.0),
                      child: TextButton.icon(
                        onPressed: () {
                          MotionToast(
                            height: 60.0,
                            width: 240.0,
                            icon: Icons.call,
                            iconSize: 24.0,
                            primaryColor: subButtonColor,
                            description: const Text(
                              'ただいまスタッフが来ます。',
                              style: TextStyle(fontSize: 12.0),
                            ),
                            position: MotionToastPosition.top,
                            animationType: AnimationType.fromTop,
                          ).show(context);
                        },
                        icon: const Icon(
                          Icons.call,
                          color: white,
                        ),
                        label: const Text(
                          'Call staff',
                          style: TextStyle(
                            color: textColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
