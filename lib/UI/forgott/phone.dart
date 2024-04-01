import 'package:flutter/material.dart';

class Forgottphone extends StatefulWidget {
  const Forgottphone({super.key});

  @override
  State<Forgottphone> createState() => _ForgottphoneState();
}

class _ForgottphoneState extends State<Forgottphone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/pho.jpg",height: 250,width: 250,),
              Text(
                "Forgott \npasword",
                style: TextStyle(fontSize: 36, color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Phone",
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: SizedBox(
                  width: 250,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},

                    child: Text("Next"),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
