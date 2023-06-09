import 'package:flutter/material.dart';
import 'package:myapp/src/features/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Magra',
        // textTheme: TextTheme(
        //   bodyText1: TextStyle(color: white), // デフォルトのテキストの色
        //   bodyText2: TextStyle(color: white), // ヘッダーやタイトルなどのテキストの色
        // ),
      ),
      home: const Home(),
    );
  }
}
