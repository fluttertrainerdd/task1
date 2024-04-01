import 'package:flutter/material.dart';

class Historyy extends StatefulWidget {
  const Historyy({Key? key}) : super(key: key);

  @override
  State<Historyy> createState() => _HistoryyState();
}

class _HistoryyState extends State<Historyy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blueGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              tileColor: Colors.white54,
              leading: Icon(Icons.person, color: Colors.white),
              title: Text("User $index", style: TextStyle(color: Colors.black)),
              subtitle: Text("Destination $index", style: TextStyle(color: Colors.black)),
            ),
          );
        },
      ),
    );
  }
}
