import 'package:flutter/material.dart';
import 'package:myapp/src/constants/colors.dart';
import 'package:myapp/src/parts/button.dart';

class MenuContents extends StatefulWidget {
  const MenuContents({super.key});

  @override
  State<MenuContents> createState() => _MenuContentsState();
}

class _MenuContentsState extends State<MenuContents> {
  int _amount = 0;

  void _plus() {
    setState(() {
      _amount++;
    });
  }

  void _minus() {
    setState(() {
      _amount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 8.0,
      ),
      // width: 10,
      // height: 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: contentsColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 8.0),
            child: const Text(
              "アサヒスーパードライ",
              style: TextStyle(
                color: textColor,
                fontSize: 8.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "￥ 720",
                style: TextStyle(
                  color: textColor,
                  fontSize: 10.0,
                ),
              ),
              Row(
                children: [
                  Button(
                    icon: Icons.add,
                    size: 20.0,
                    iconSize: 5.0,
                    onPressed: _plus,
                  ),
                  const SizedBox(width: 4.0),
                  Text(
                    "$_amount",
                    style: const TextStyle(color: textColor),
                  ),
                  const SizedBox(width: 4.0),
                  Button(
                    icon: Icons.remove,
                    size: 20.0,
                    iconSize: 5.0,
                    onPressed: _minus,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

// class MenuContents extends StatelessWidget {
//   const MenuContents({
//     Key? key,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         vertical: 12.0,
//         horizontal: 8.0,
//       ),
//       // width: 10,
//       // height: 12,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: contentsColor,
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             alignment: Alignment.topLeft,
//             padding: EdgeInsets.only(left: 8.0),
//             child: Text(
//               "アサヒスーパードライ",
//               style: TextStyle(
//                 color: textColor,
//                 fontSize: 8.0,
//               ),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Text(
//                 "￥ 720",
//                 style: TextStyle(
//                   color: textColor,
//                   fontSize: 10.0,
//                 ),
//               ),
//               Row(
//                 children: [
//                   Button(icon: Icons.add, size: 20.0, iconSize: 5.0),
//                   SizedBox(width: 4.0),
//                   Text(
//                     "4",
//                     style: TextStyle(color: textColor),
//                   ),
//                   SizedBox(width: 4.0),
//                   Button(icon: Icons.remove, size: 20.0, iconSize: 5.0),
//                 ],
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
