import 'package:flutter/material.dart';
import 'package:task1/UI/bottomtab/tab.dart';
import 'package:task1/UI/forgott/email.dart';
import 'package:task1/UI/forgott/phone.dart';
import 'package:task1/UI/signup/sign.dart';

import '../bottomtab/screens/home/home.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showContainer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/aa.webp",
              fit: BoxFit.fitHeight,
              height: 300,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "User name",
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Forgot your password"),
                TextButton(
                  onPressed: () {
                    setState(() {
                      showContainer = !showContainer;
                    });
                  },
                  child: Text(
                    "Click here to change",
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
            Visibility(
              visible: showContainer,
              child: Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Forgott()));
                      },
                      child: Text("Reset with Email Verification"),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgottphone()));
                      },
                      child: Text("Reset via Phone Verification"),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TabsPage()));
                    },
                    child: Text("LOGIN"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    ),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Signupp()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
