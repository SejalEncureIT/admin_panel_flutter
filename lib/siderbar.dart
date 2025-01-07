import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_project/history_screen.dart';
import 'package:second_project/home_screen.dart';
import 'package:second_project/profile_screen.dart';

class Siderbar extends StatefulWidget {
  const Siderbar({super.key});

  @override
  State<Siderbar> createState() => _SiderbarState();
}

class _SiderbarState extends State<Siderbar> {
  late List<CollapsibleItem> _items;
  bool _isCollapsed = true;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _items = _generateItems;
  }
  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        icon: CupertinoIcons.home,
        text: 'Home',
        onPressed: () => _navigateToPage(0),
        isSelected: true,
      ),
      CollapsibleItem(
        icon: CupertinoIcons.profile_circled,
        text: 'Profile',
        onPressed: () => _navigateToPage(1),
        //isSelected: true,
      ),
      CollapsibleItem(
        icon: Icons.history,
        text: 'History',
        onPressed: () => _navigateToPage(2),
        //isSelected: true,
      ),
    ];
  }

  void _navigateToPage(int index){
    setState(() {
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 28,
          ),
          onPressed: () {
            setState(() {
              _isCollapsed = !_isCollapsed;
            });
          },
        ),
      ),
      body: Row(
        children: [
          CollapsibleSidebar(
            isCollapsed: _isCollapsed,
            items: _items,
            sidebarBoxShadow: [],
            showToggleButton: false,
            showTitle: false,
            borderRadius: 0,
            screenPadding: 0,
            topPadding: 20,
            body: Container(),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                HomeScreen(),
                ProfileScreen(),
                HistoryScreen(),
              ],
            )
          ),
        ],
      ),
    );
  }
}
