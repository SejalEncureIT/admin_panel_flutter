// import 'package:flutter/material.dart';
// import 'package:second_project/nested_bottom_nav_bar/book_navigator.dart';
//
//
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;
//
//   List<GlobalKey<NavigatorState>> _navigatorKeys = [
//     _bookNavigatorKey,
//     _coffeeNavigatorKey,
//   ];
//
//   Future<bool> _systemBackButtonPressed(bool didPop) {
//     if (_navigatorKeys[_selectedIndex].currentState.canPop()) {
//       _navigatorKeys[_selectedIndex]
//           .currentState
//           .pop(_navigatorKeys[_selectedIndex].currentContext);
//     } else {
//       SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return PopScope(
//       canPop: false,
//       onPopInvoked: _systemBackButtonPressed,
//       child: Scaffold(
//         bottomNavigationBar: BottomNavigationBar(
//             items: <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.book),
//                 title: Text("Book"),
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.free_breakfast),
//                 title: Text("Coffee"),
//               )
//             ],
//             currentIndex: _selectedIndex,
//             onTap: (int index) {
//               setState(() {
//                 _selectedIndex = index;
//               });
//             }),
//         body: SafeArea(
//           top: false,
//           child: IndexedStack(
//             index: _selectedIndex,
//             children: <Widget>[
//               BookNavigator(),
//               CoffeeNavigator(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }