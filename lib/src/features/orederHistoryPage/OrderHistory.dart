import 'package:flutter/material.dart';
import 'package:myapp/src/constants/colors.dart';
import 'package:myapp/src/features/confirmPage/ConfirmCart.dart';
import 'package:myapp/src/features/sidebar/SideBar.dart';
import 'package:myapp/src/parts/button.dart';
import 'package:myapp/src/features/orederHistoryPage/OrderHistoryPage.dart';

class OrderHistory extends StatefulWidget {
  static const menu = ["drink", "food", "shisha", "special", "Elon"];

  const OrderHistory({Key? key}) : super(key: key);

  @override
  OrderHistoryState createState() => OrderHistoryState();
}

class OrderHistoryState extends State<OrderHistory> {
  bool isTap = false;
  bool _isPressed = false;
  List<String> menu = OrderHistory.menu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(96.0),
        child: AppBar(
          backgroundColor: Colors.white.withOpacity(0),
          titleSpacing: 0,
          automaticallyImplyLeading: false, // バックアイコンを非表示にする
          toolbarHeight: 120,
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
                        builder: (context) => const OrderHistory(),
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
            top: 96.0,
            child: const SideBar(),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            curve: _isPressed ? Curves.fastOutSlowIn : Curves.linear,
            transform: Matrix4.translationValues(_isPressed ? 220 : 0, 0, 0),
            child: const OrderHistoryPage(),
          ),
        ],
      ),
    );
  }
}
