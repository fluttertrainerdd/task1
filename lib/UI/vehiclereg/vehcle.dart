import 'package:flutter/material.dart';
import 'package:task1/UI/login/login.dart';
import 'package:task1/UI/signup/sign.dart';
import 'package:task1/UI/sucss/scseffull.dart';

class Vehiclee extends StatefulWidget {
  const Vehiclee({super.key});

  @override
  State<Vehiclee> createState() => _VehicleeState();
}

class _VehicleeState extends State<Vehiclee> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Signupp()));
            }, icon: Icon(Icons.arrow_back_ios)),
            backgroundColor:Colors.red ,
            title: Text("Vehicle Registration"),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "License no",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60)
                      )                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Vehicle plate no",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60)
                      )                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: " Vehicle type",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60)
                      )                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Vehicle company",
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60)
                      )                ),
                ),
              ),
              ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Sucesss()));
              },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text("Next")),
            ],
          ),
        )
    );
  }
}
