import 'dart:async';
import 'package:flutter/material.dart';
import 'package:task1/UI/bottomtab/tab.dart';
import 'package:task1/UI/login/login.dart';

class Sucesss extends StatefulWidget {
  @override
  _SucesssState createState() => _SucesssState();
}

class _SucesssState extends State<Sucesss> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => TabsPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(),
          child: Center(child: Image.asset("assets/images/l.png",fit: BoxFit.cover,)),
        ),
      ),
    );
  }
}
