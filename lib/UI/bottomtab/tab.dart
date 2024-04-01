import 'package:flutter/material.dart';
import 'package:task1/UI/bottomtab/bottom.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: MotionTabBar(
        labels: ["Home", "Booking", "Power", "Settings", "Account"],
        initialSelectedTab: "Home",
        tabIconColor: Colors.black,
        tabSelectedColor: Colors.red,
        onTabItemSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        icons: [
          Icons.home,
          Icons.bookmarks_outlined,
          Icons.power_settings_new,
          Icons.settings,
          Icons.person
        ],
        textStyle: TextStyle(color: Colors.red),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TabsPage(),
  ));
}
