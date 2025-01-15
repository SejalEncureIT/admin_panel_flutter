import 'package:flutter/material.dart';
import 'package:second_project/responsive_design/desktop_layout.dart';
import 'package:second_project/responsive_design/mobile_layout.dart';
import 'package:second_project/responsive_design/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      //backgroundColor: currentWidth < 600 ? Colors.deepPurple[300] : Colors.green[300],
      body: ResponsiveLayout(
        mobileBody: MobileLayout(),
        desktopBody: DesktopLayout(),
      ),
    );
  }
}
