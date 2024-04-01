import 'package:flutter/material.dart';
import 'package:task1/UI/drawer/booking/booking.dart';
import 'package:task1/UI/drawer/earnings/earnings.dart';
import 'package:task1/UI/drawer/history/his.dart';
import 'package:task1/UI/drawer/language/lang.dart';
import 'package:task1/UI/drawer/profile/profile.dart';
import 'package:task1/UI/drawer/settings/settings.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Editprofile()),
                        );
                      },
                      icon: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Fathimath Shahala',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'fathimathshshala@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text("Booking"),
            leading: Icon(Icons.person),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Bookingg()));
            },
          ),
          ListTile(
            title: Text('History'),
            leading: Icon(Icons.reset_tv_rounded),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Historyy()));
            },
          ),
          ListTile(
            title: Text('Your Earnings'),
            leading: Icon(Icons.currency_rupee),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Earnings()));
            },
          ),
          ListTile(
            title: Text('Account'),
            leading: Icon(Icons.person_pin),
            onTap: () {},
          ),
          ListTile(
            title: Text('Language'),
            leading: Icon(Icons.language),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Language()));
            },
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Settingggs()));
            },
          ),
          ListTile(
            title: Text('Rate Us'),
            leading: Icon(Icons.star),
            onTap: () {},
          ),
          ListTile(
            title: Text('Logout'),
            leading: Icon(Icons.logout),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}
