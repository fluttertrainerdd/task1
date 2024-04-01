import 'package:flutter/material.dart';

class Bookingg extends StatefulWidget {
  const Bookingg({Key? key}) : super(key: key);

  @override
  State<Bookingg> createState() => _BookinggState();
}

class _BookinggState extends State<Bookingg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bookings",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.red),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Today's Bookings",
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  width: 150,
                  child: Card(
                    child: Text("Booking \n Booking details"),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 200,
                  width: 150,
                  child: Card(
                    child: Text("Booking \n Booking details"),
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(19)),
          Container(
            width: 300,
            height: 60,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.red,
              child: Center(child: Text("Booking 1")),
            ),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Container(
            width: 300,
            height: 60,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.red,
              child: Center(child: Text("Booking 2")),
            ),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Container(
            width: 300,
            height: 60,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.red,
              child: Center(child: Text("Booking 3")),
            ),
          ),
        ],
      ),
    );
  }
}
