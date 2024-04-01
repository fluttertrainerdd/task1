import 'package:flutter/material.dart';

class Settingggs extends StatefulWidget {
  const Settingggs({Key? key}) : super(key: key);

  @override
  State<Settingggs> createState() => _SettingggsState();
}

class _SettingggsState extends State<Settingggs> {
  bool switchhhh = false;
  bool swwww=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Text("Notifications",style: TextStyle(fontSize: 26),),
            trailing: Switch(
              value: switchhhh,
              onChanged: (value) {
                setState(() {
                  switchhhh = value;
                });
              },
            ),
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: Text("Security",style: TextStyle(fontSize: 26),),

          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: Text("Help",style: TextStyle(fontSize: 26),),

          )  ,
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: Text("About",style: TextStyle(fontSize: 26),),

          )  ,
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: Text("Theme",style: TextStyle(fontSize: 26),),
            trailing: Switch(
              value: swwww,
              onChanged: (value) {
                setState(() {
                  swwww = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
