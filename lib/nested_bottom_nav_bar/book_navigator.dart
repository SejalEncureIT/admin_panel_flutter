// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:second_project/nested_bottom_nav_bar/book_1.dart';
// import 'package:second_project/nested_bottom_nav_bar/book_2.dart';
//
// class BookNavigator extends StatefulWidget {
//   @override
//   GlobalKey<NavigatorState> _bookNavigatorKey = GlobalKey<NavigatorState>();
//   //_BookNavigatorState createState() => _BookNavigatorState();
// }
//
// class _BookNavigatorState extends State<BookNavigator> {
//   @override
//   Widget build(BuildContext context) {
//     return Navigator(
//       key: _bookNavigatorKey,
//       onGenerateRoute: (RouteSettings settings) {
//         return MaterialPageRoute(
//             settings: settings,
//             builder: (BuildContext context) {
//               switch (settings.name) {
//                 case '/':
//                   return Books1();
//                 case '/books2':
//                   return Books2();
//               }
//             });
//       },
//     );
//   }
// }