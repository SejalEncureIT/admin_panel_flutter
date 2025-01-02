
import 'package:flutter/material.dart';
import 'package:second_project/widget/side_menu_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenuWidget(),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(color: Colors.red),
            ),
            Expanded(
              flex: 3,
              child: Container(color: Colors.green,),
            ),
          ],
        ),
      ),
    );
  }
}
