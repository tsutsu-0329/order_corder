import 'package:flutter/material.dart';
import 'package:myapp/src/constants/colors.dart';
import 'package:myapp/src/parts/button.dart';
import 'package:myapp/src/features/confirmPage/ConfirmCart.dart';

class HeadBar extends StatelessWidget {
  const HeadBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false, // バックアイコンを非表示にする
      toolbarHeight: 120,
      backgroundColor: mainColor,
      elevation: 0,
      title: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 20.0),
            Text(
              "IClub",
              style: TextStyle(
                fontSize: 36,
                color: textColor,
              ),
            ),
            Spacer(),
            Container(
              child: Column(children: [
                Button(
                  size: 40,
                  iconSize: 8,
                  icon: Icons.call_made_outlined,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConfirmCart(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 4.0),
                Text(
                  "order history",
                  style: TextStyle(
                    fontSize: 8,
                    color: textColor,
                  ),
                )
              ]),
            ),
            SizedBox(width: 20),
            Container(
              child: Column(children: [
                Button(
                  size: 40,
                  iconSize: 8,
                  icon: Icons.call_made_outlined,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConfirmCart(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 4.0),
                Text(
                  "cart",
                  style: TextStyle(
                    fontSize: 8,
                    color: textColor,
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
