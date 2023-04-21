// import 'package:flutter/material.dart';
// import 'package:myapp/src/constants/colors.dart';
// import 'package:myapp/src/parts/button.dart';

// class AppBar extends StatelessWidget implements PreferredSizeWidget {
//   const AppBar({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       toolbarHeight: 100,
//       backgroundColor: mainColor,
//       elevation: 0,
//       title: Container(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Stack(children: [
//               Container(
//                 child: Column(children: [
//                   Button(
//                     icon: Icons.call_made_outlined,
//                   ),
//                   SizedBox(height: 8.0),
//                   Text(
//                     "call staff",
//                     style: TextStyle(
//                       fontSize: 8,
//                       color: textColor,
//                     ),
//                   )
//                 ]),
//               ),
//               Positioned(
//                 right: 1.0,
//                 top: 1.0,
//                 child: Container(
//                   padding: EdgeInsets.all(2.0),
//                   decoration: BoxDecoration(
//                     color: alert,
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   constraints: BoxConstraints(
//                     minWidth: 12,
//                     minHeight: 12,
//                   ),
//                 ),
//               ),
//             ]),
//             SizedBox(width: 20.0),
//             Text(
//               "IClub",
//               style: TextStyle(
//                 fontSize: 32,
//                 color: textColor,
//               ),
//             ),
//             Spacer(),
//             Container(
//               child: Column(children: [
//                 Button(
//                   icon: Icons.call_made_outlined,
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   "order history",
//                   style: TextStyle(
//                     fontSize: 8,
//                     color: textColor,
//                   ),
//                 )
//               ]),
//             ),
//             SizedBox(width: 20),
//             Container(
//               child: Column(children: [
//                 Button(
//                   icon: Icons.call_made_outlined,
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   "cart",
//                   style: TextStyle(
//                     fontSize: 8,
//                     color: textColor,
//                   ),
//                 )
//               ]),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
