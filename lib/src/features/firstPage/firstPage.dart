import 'package:flutter/material.dart';
import 'package:myapp/src/constants/colors.dart';
import 'package:myapp/src/features/main/Main.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height, // 画面の高さを設定
      width: MediaQuery.of(context).size.width, // 画面の幅を設定
      margin: const EdgeInsets.only(
        right: 32.0,
        left: 32.0,
        top: 120.0,
        bottom: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Welcome",
                style: TextStyle(
                  color: textColor,
                  fontSize: 32,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "to",
                style: TextStyle(
                  color: textColor,
                  fontSize: 32,
                ),
              ),
              Text(
                "Iclub",
                style: TextStyle(
                  color: textColor,
                  fontSize: 88,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 120,
                height: 60,
                decoration: BoxDecoration(
                  color: subButtonColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Main()),
                    );
                    setState(() {
                      _isPressed = !_isPressed;
                    });
                  },
                  child: const Text(
                    "order →",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
