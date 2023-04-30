import 'package:flutter/material.dart';
import 'package:myapp/src/constants/colors.dart';
import 'package:myapp/src/parts/button.dart';
import 'package:myapp/src/features/confirmPage/ConfirmCart.dart';
import 'package:myapp/src/features/main/menu/MenuPage.dart';
import 'package:myapp/src/features/sidebar/SideBar.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => MainState();
}

class MainState extends State<Main> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(96.0),
        child: AppBar(
          titleSpacing: 0,
          automaticallyImplyLeading: false, // バックアイコンを非表示にする
          toolbarHeight: 120,
          backgroundColor: mainColor,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              setState(() {
                _isPressed = !_isPressed;
              });
            },
            icon: Icon(
              !_isPressed ? Icons.dehaze : Icons.close,
              color: textColor,
            ),
          ),
          title: const Text(
            "IClub",
            style: TextStyle(
              fontSize: 36,
              color: textColor,
            ),
          ),
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  size: 40,
                  iconSize: 8,
                  icon: Icons.call_made_outlined,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ConfirmCart(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 4.0),
                const Text(
                  "order history",
                  style: TextStyle(
                    fontSize: 8,
                    color: textColor,
                  ),
                )
              ],
            ),
            const SizedBox(width: 12.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  size: 40,
                  iconSize: 8,
                  icon: Icons.call_made_outlined,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ConfirmCart(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 4.0),
                const Text(
                  "cart",
                  style: TextStyle(
                    fontSize: 8,
                    color: textColor,
                  ),
                )
              ],
            ),
            const SizedBox(width: 12.0),
          ],
        ),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            width: 220,
            height: MediaQuery.of(context).size.height,
            duration: const Duration(milliseconds: 400),
            curve: Curves.fastOutSlowIn,
            left: _isPressed ? 0 : -220,
            top: 0,
            child: const SideBar(),
          ),
          Transform.translate(
            offset: Offset(_isPressed ? 220 : 0, 0),
            child: const MenuPage(),
          ),
        ],
      ),
    );
  }
}
