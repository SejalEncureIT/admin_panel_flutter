// import 'package:flutter/material.dart';
// import 'package:second_project/nested_bottom_nav_bar/coffee_1.dart';
// import 'package:second_project/nested_bottom_nav_bar/coffee_2.dart';
//
// class CoffeeNavigator extends StatefulWidget {
//   @override
//   _CoffeeNavigatorState createState() => _CoffeeNavigatorState();
// }
//
// class _CoffeeNavigatorState extends State<CoffeeNavigator> {
//   @override
//   Widget build(BuildContext context) {
//     return Navigator(
//       onGenerateRoute: (RouteSettings settings) {
//         return MaterialPageRoute(
//             settings: settings,
//             builder: (BuildContext context) {
//               switch (settings.name) {
//                 case '/':
//                   return Coffee1();
//                 case '/coffee2':
//                   return Coffee2();
//               }
//             },
//         );
//       },
//     );
//   }
// }