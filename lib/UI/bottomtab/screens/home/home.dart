import 'package:flutter/material.dart';
import 'package:task1/UI/drawer/drawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: AppDrawer(),
      body: Column(
        children: [
        ],
      ),
    );
  }
}




