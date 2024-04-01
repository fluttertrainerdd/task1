import 'package:flutter/material.dart';
import 'package:task1/UI/bottomtab/screens/account/account.dart';
import 'package:task1/UI/bottomtab/screens/booking/booking.dart';
import 'package:task1/UI/bottomtab/screens/home/home.dart';
import 'package:task1/UI/bottomtab/screens/power/home.dart';
import 'package:task1/UI/bottomtab/screens/setting/settngs.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;
  TabNavigationItem(
      {required this.page, required this.title, required this.icon});
  static List<TabNavigationItem> get items => [
    TabNavigationItem(
      page: Home(),
      icon: Icon(Icons.home),
      title: Text("Home"),
    ),
    TabNavigationItem(
      page: Booking(),
      icon: Icon(Icons.screen_search_desktop_outlined),
      title: Text("Swaipable"),
    ),
    TabNavigationItem(
      page: Power(),
      icon: Icon(Icons.screen_search_desktop_outlined),
      title: Text("Swaipable"),
    ),
    TabNavigationItem(
      page: Settings(),
      icon: Icon(Icons.screen_search_desktop_outlined),
      title: Text("Swaipable"),
    ),
    TabNavigationItem(
      page: Accouont(),
      icon: Icon(Icons.screen_search_desktop_outlined),
      title: Text("Swaipable"),
    ),
  ];
}
