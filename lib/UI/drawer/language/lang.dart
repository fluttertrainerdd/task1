import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Language"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Malayalam"),
          ),
          Divider(thickness: 1),
          ListTile(
            title: Text("English"),
          ),
          Divider(thickness: 1),
          ListTile(
            title: Text("Hindi"),
          ),
        ],
      ),
    );
  }
}
